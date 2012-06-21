unit uDaoRomaneio;

interface

uses uClassConexao,uClassRomaneio, Classes, SqlExpr,SqltimSt, DBClient,
  SysUtils;

type TDaoRomaneio = Class
   private
     FConexao : TConexao;
     FqryModific : TSqlQuery;
     FParametros : TStringList;
   public
     constructor Create(Conexao : TConexao);
     function Incluir(Romaneio : TRomaneio) : Integer;
     function BuscarTodos : TClientDataSet;
     function BuscarPorId(RomaneioId : Integer) : TClientDataSet;
     function RetornarProdutos(RomaneioId : integer) : TClientDataSet;
     function RetornarDadosFinanceiros (RomaneioId : integer) : TClientDataSet;
     procedure FecharRomaneio(RomaneioId : integer);
     procedure Cancelar(RomaneioId : integer);
End;

implementation


{ TDaoRomaneio }

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
                                    'where (Status<>:parStatus or Status IS Null) order by Data_Cadastro',Parametros);
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
  Result := FConexao.BuscarDadosSQL('Select ven.SeqVenda,cli.codigo, Cli.Descricao, Ven.Vlr_total, Pag.Descricao as Pagamento, '+
                                    '       Ven.Entregue, Ven.Prorrogado '+
                                    'from t_vendas ven '+
                                    '      inner join T_clientes cli on Cli.Codigo=Ven.Cod_Cliente '+
                                    '      left join T_formaspagamento pag on pag.codigo=Cod_formaPagamento '+
                                    'where romaneioId=:parRomaneioId ',FParametros);

end;

function TDaoRomaneio.RetornarProdutos(RomaneioId: integer): TClientDataSet;
begin
  FParametros.clear;
  FParametros.add(IntToStr(RomaneioId));
  Result := FConexao.BuscarDadosSQL('select Cod_Produto, max(Prod.Descricao) as Descricao, '+
                                    'Sum(Qtde_Venda) as Qtde_Total, Sum(Itens.PesoBruto) as PesoBruto, '+
                                    'Max(Prod.Unid) as Unid '+
                                    'from T_vendas Ven '+
                                    '     inner Join T_itensVendas Itens on Itens.SeqVenda=Ven.Seqvenda '+
                                    '     left join T_produtos Prod on Prod.Codigo=Itens.Cod_Produto '+
                                    'where romaneioID=:parRomaneioId '+
                                    'group by Cod_produto',FParametros);

end;

end.
