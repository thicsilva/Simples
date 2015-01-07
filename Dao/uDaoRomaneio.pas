unit uDaoRomaneio;

interface

uses uClassConexao,uClassRomaneio, Classes, SqlExpr,SqltimSt, DBClient,
  SysUtils;

type TDaoRomaneio = Class
   private
     FConexao : TConexao;
     FqryModific : TSqlQuery;
     FParametros : TStringList;
    FDataSistema: TDatetime;
    procedure SetDataSistema(const Value: TDatetime);
   public
     constructor Create(Conexao : TConexao);
     function Incluir(Romaneio : TRomaneio) : Integer;
     function BuscarTodos : TClientDataSet;
     function BuscarPorId(RomaneioId : Integer) : TClientDataSet;
     function RetornarProdutos(RomaneioId : integer) : TClientDataSet;
     function RetornarDadosFinanceiros (RomaneioId : integer) : TClientDataSet;
     function RetornarPedidosNaoEntregues : TClientDataSet;
     function PendenciasDoRomaneio(RomaneioId: integer): TClientDataSet;
     function RetornarNomeMotorista (RomaneioId : integer) : String;
     procedure FecharRomaneio(RomaneioId : integer);
     procedure Cancelar(RomaneioId : integer);
     procedure AtualizarTotalDoRomaneio(RomaneioId : integer);
     property DataSistema : TDatetime read FDataSistema write SetDataSistema;
End;

implementation


{ TDaoRomaneio }

procedure TDaoRomaneio.AtualizarTotalDoRomaneio(RomaneioId: integer);
var Parametros : TStringList;
    lrTotal : Real;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntTostr(RomaneioId));
   lrTotal := FConexao.BuscarDadosSQL('select sum(vlr_Total) as Total from T_vendas where romaneioId=:parRomaneioId',Parametros).FieldByname('Total').AsFloat;
   FqryModific.Close;
   FqryModific.Sql.Text := 'Update Romaneios set Total=:parTotal where id=:parId';
   FqryModific.ParamByName('parId').AsInteger    := RomaneioId;
   FqryModific.ParamByName('parTotal').AsFloat   := lrTotal;
   FqryModific.ExecSQL;
end;

function TDaoRomaneio.BuscarPorId(RomaneioId : Integer): TClientDataSet;
var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  Parametros.Add(IntTostr(RomaneioId));
  Result := FConexao.BuscarDadosSQL('Select Fun.descricao as Motorista, rom.* from Romaneios Rom '+
                                    'left join T_funcionarios fun on Fun.Codigo = Rom.FuncionarioID '+
                                    'where Id=:parId order by Data_Cadastro',Parametros);

end;

function TDaoRomaneio.BuscarTodos: TClientDataSet;
var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  Parametros.Add('C');
  Result := FConexao.BuscarDadosSQL('Select Fun.descricao as Motorista, rom.* from Romaneios Rom '+
                                    'left join T_funcionarios fun on Fun.Codigo = Rom.FuncionarioID '+
                                    'where (Status<>:parStatus or Status IS Null) order by Data_Cadastro Desc ',Parametros);
end;

procedure TDaoRomaneio.Cancelar(RomaneioId : integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'update Romaneios set Status = '+QuotedStr('C')+' where Id='+IntToStr(RomaneioId);
   FqryModific.ExecSQL;
end;

constructor TDaoRomaneio.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FqryModific  := TSqlQuery.Create(Nil);
   FqryModific.SQLConnection := FConexao.Conection;
   FParametros := TStringList.Create;
end;

procedure TDaoRomaneio.FecharRomaneio(RomaneioId: integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'update Romaneios set Status = '+QuotedStr('F')+' where Id='+IntToStr(RomaneioId);
   FqryModific.ExecSQL;
end;

function TDaoRomaneio.Incluir(Romaneio: TRomaneio) : Integer;
begin
   FqryModific.Close;
   FqryModific.SQL.Text := 'Insert Into Romaneios '+
                           '          ( Total, PesoB_Total,PesoL_total,Data_Cadastro, '+
                           '            Data_movimento, Operador, Cod_Emp, Qtde_Vendas,FuncionarioID) Values '+
                           '          ( :parTotal, :parPesoB_Total,:parPesoL_total,:parData_Cadastro, '+
                           '            :parData_movimento, :parOperador, :parCod_Emp,:parQtde_Vendas,:parFuncionarioID )';

   FqryModific.paramByName('parTotal').AsFloat := Romaneio.Total;
   FqryModific.paramByName('parPesoB_Total').AsFloat := Romaneio.PesoB_Total;
   FqryModific.paramByName('parPesoL_total').AsFloat := Romaneio.PesoL_total;
   FqryModific.paramByName('parData_Cadastro').AsSQLTimeStamp := DateTimeToSqltimestamp(Romaneio.Data_Cadastro);
   FqryModific.paramByName('parData_Movimento').AsSQLTimeStamp :=DateTimeToSqltimestamp(Romaneio.Data_movimento);
   FqryModific.paramByName('parOperador').AsString := Romaneio.Operador;
   FqryModific.paramByName('parFuncionarioID').AsInteger := Romaneio.FuncionarioId;
   FqryModific.paramByName('parCod_Emp').AsInteger := Romaneio.Cod_Emp;
   FqryModific.paramByName('parQtde_vendas').AsInteger := Romaneio.Qtde_vendas;
   FqryModific.ExecSQL;
   Result := fConexao.BuscarDadosSQL('Select max(Id) as id from Romaneios',nil).Fieldbyname('Id').AsInteger;
end;

function TDaoRomaneio.RetornarDadosFinanceiros(RomaneioId: integer): TClientDataSet;
begin
  FParametros.clear;
  FParametros.add(IntToStr(RomaneioId));
  //FParametros.add('5');
  Result := FConexao.BuscarDadosSQL('Select Ven.AnimalId, Ven.SeqVenda,cli.codigo, Cli.Descricao, Ven.Vlr_total, Ven.CustoTotal, Pag.Descricao as Pagamento, '+
                                    '       Ven.Entregue, Ven.Prorrogado, Ven.ServicoPago, Ven.PagouSinal, Ven.Cod_formaPagamento, Ven.Status '+
                                    'from t_vendas ven '+
                                    '      inner join T_clientes cli on Cli.Codigo=Ven.Cod_Cliente '+
                                    '      left join T_formaspagamento pag on pag.codigo=Cod_formaPagamento '+
                                    'where romaneioId=:parRomaneioId ',FParametros);
//                                    and ( ven.status<>:parStatus or ven.Status is Null )

end;

function TDaoRomaneio.PendenciasDoRomaneio(RomaneioId: integer): TClientDataSet;
begin
  FParametros.clear;
  FParametros.add(IntToStr(RomaneioId));
  FParametros.add('5');
  FParametros.add('AB');
  Result := FConexao.BuscarDadosSQL('Select Ven.SeqVenda,Cli.codigo,Cli.Descricao, Rec.Data_Vencimento,Rec.Vlr_Areceber as vlr_Total,Pag.Descricao as Pagamento '+
                                    'from t_vendas ven '+
                                    '     inner join T_clientes cli on Cli.Codigo=Ven.Cod_Cliente ' +
                                    '     inner join T_Ctasreceber Rec on Rec.Cod_Cliente=Cli.Codigo '+
                                    '     left join T_formaspagamento pag on pag.codigo=Rec.Cod_formaPagamento '+
                                    'where romaneioId=:parRomaneioId and ( ven.status<>:parStatus or ven.Status is Null ) and '+
                                    '        Rec.Tipo_Baixa=:parTipoBaixa and Rec.Data_Vencimento<'+QuotedStr(FormatDateTime('dd/mm/yyyy',self.DataSistema))+' order by 1,3 ',FParametros);
end;

function TDaoRomaneio.RetornarNomeMotorista(RomaneioId: integer): String;
begin
   FParametros.clear;
   FParametros.add(IntToStr(RomaneioId));
   Result := fConexao.BuscarDadosSQL('Select Fun.Descricao from Romaneios Roma '+
                                     'left join T_funcionarios fun on Fun.Codigo=Roma.FuncionarioId '+
                                     'where ID=:parRomaneioId',FParametros).Fieldbyname('Descricao').AsString;
end;

function TDaoRomaneio.RetornarPedidosNaoEntregues: TClientDataSet;
begin
  FParametros.clear;
  FParametros.add('0');
  FParametros.add('5');
  Result := FConexao.BuscarDadosSQL('Select ven.SeqVenda,cli.codigo, Cli.Descricao, Ven.Vlr_total, Pag.Descricao as Pagamento, '+
                                    '       Ven.Entregue, Ven.Prorrogado '+
                                    'from t_vendas ven '+
                                    '      inner join T_clientes cli on Cli.Codigo=Ven.Cod_Cliente '+
                                    '      left join T_formaspagamento pag on pag.codigo=Cod_formaPagamento '+
                                    'where ( Entregue=:parEntregue or Entregue is null ) and '+
                                    '( ven.status<>:parStatus or ven.Status is Null ) order by 3',FParametros);
end;

function TDaoRomaneio.RetornarProdutos(RomaneioId: integer): TClientDataSet;
begin
   FParametros.clear;
   FParametros.add(IntToStr(RomaneioId));
   FParametros.add('C');
   Result := FConexao.BuscarDadosSQL('select Cod_Produto, Cod_Grupo, max(Prod.Descricao) as Descricao, '+
                                     '       max(Gru.Descricao) as Nome_Grupo, '+
                                     'Sum(Qtde_Venda) as Qtde_Total, Sum(Itens.PesoBruto) as PesoBruto, '+
                                     'Max(Prod.Unid) as Unid '+
                                     'from T_vendas Ven '+
                                     '     inner Join T_itensVendas Itens on Itens.SeqVenda=Ven.Seqvenda '+
                                     '     left join T_produtos Prod on Prod.Codigo=Itens.Cod_Produto '+
                                     '     left Join T_Grupos Gru on Gru.codigo=Prod.Cod_Grupo '+
                                     'where romaneioID=:parRomaneioId and ( Itens.status<>:parStatus or Itens.Status is Null ) '+
                                     'group by Cod_Produto,Cod_Grupo order by 2,3',FParametros);
end;

procedure TDaoRomaneio.SetDataSistema(const Value: TDatetime);
begin
  FDataSistema := Value;
end;

end.
