unit uDaoVenda;

interface

uses DBClient,Classes,uClassConexao,uClassVenda,uDaoCliente,Forms,
     uDaoFuncionario,uDaoFormaPagamento,SqltimSt,SysUtils,SqlExpr, Provider;

type TDaoVenda = class
   private
     FConexao : TConexao;
     FqryModific : TSqlQuery;
     FParametros : TStringList;
   public
     constructor Create(conexao : TConexao );

     function RetonarVendasSemSinalPago : TclientDataSet;
     function CarregarVenda(DadosVendas : TClientDataSet) : TVenda;
     function TemVenda(ClienteId : Integer) : Boolean;
     function Buscar(VendaId : Integer) : TVenda;
     function PesoTotal(IDVenda : Integer) : Real;
     function RetornarVencimentos(VendaId : Integer) : TStringList;

     procedure MarcarComoEntregue(IDVenda : Integer);
     Procedure MarcarComoPagouSinal(IDVenda : Integer);
     Procedure MarcarComoNaoPagouSinal(IDVenda : Integer);
     Procedure MarcarComoServicoPago(IDVenda : Integer);
     procedure MarcarComoNaoServicoPago(IDVenda: Integer);
     procedure AtualizarRomaneio(RomaneiId,VendaId : Integer);
     procedure CancelarRomaneio(RomaneiId : Integer);
     procedure TirarVendaRomaneio(VendaId : Integer);
     procedure ProrrogarVencimento(VendaId : Integer; Dias : Integer);
     procedure Incluir( Venda : TVenda );
end;


implementation

{ TDaoVenda }

procedure TDaoVenda.AtualizarRomaneio(RomaneiId, VendaId: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text :='Update T_vendas set RomaneioId=:parRomaneioID where SeqVenda=:parSeqvenda';
   FqryModific.ParamByName('parSeqVenda').AsInteger := VendaId;
   FqryModific.ParamByName('parRomaneioID').AsInteger := RomaneiId;
   FqryModific.ExecSql;
end;

function TDaoVenda.Buscar(VendaId: Integer): TVenda;
var cdsDados : TClientDataSet;
begin
   FParametros.add(IntToStr(VendaId));
   cdsDados := FConexao.BuscarDadosSQL('Select * from T_Vendas where Seqvenda=:parSeqVenda',Fparametros);
   if not cdsDados.IsEmpty then
      Result := CarregarVenda(cdsDados)
   else
      Result := TVenda.Create(FConexao);
end;

procedure TDaoVenda.CancelarRomaneio(RomaneiId: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text :='Update T_vendas set RomaneioId=:parRomaneioID where RomaneioId=:parRomaneioId_2';
   FqryModific.ParamByName('parRomaneioID_2').AsInteger := RomaneiId;
   FqryModific.ParamByName('parRomaneioID').AsInteger := 0;
   FqryModific.ExecSql;
end;

function TDaoVenda.CarregarVenda(DadosVendas: TClientDataSet): TVenda;
var DaoFuncionario : TDaoFuncionario;
    DaoFormaPagamento : TDaoFormaPagamento;
    DaoCliente : TDaoCliente;
    Venda : TVenda;
begin
    DaoFuncionario    := TDaoFuncionario.Create(FConexao);
    DaoFormaPagamento := TDaoFormaPagamento.Create(FConexao);
    DaoCliente        := TDaoCliente.Create(FConexao);

    Venda := TVenda.Create(FConexao);
    Venda.FormaPagamento := DaoFormaPagamento.Buscar(DadosVendas.fieldByname('Cod_FormaPagamento').AsInteger);
    Venda.Funcionario    := DaoFuncionario.Buscar(DadosVendas.fieldByname('Cod_Funcionario').AsInteger);
    Venda.Cliente        := DaoCliente.Buscar(DadosVendas.fieldByname('Cod_Cliente').AsInteger);
    Venda.VendaID        := DadosVendas.FieldByName('SeqVenda').AsInteger;
    Venda.Data_Venda     := DadosVendas.FieldByName('Data_Venda').AsDateTime;
    venda.Valor_Total    := DadosVendas.FieldByName('Vlr_Total').AsFloat;
    venda.romaneioId     := DadosVendas.FieldByName('RomaneioId').AsInteger;
    venda.Peso_Total     := self.PesoTotal( DadosVendas.FieldByName('SeqVenda').AsInteger);
    venda.Entregue       := DadosVendas.FieldByName('Entregue').AsBoolean;
    Venda.Vencimentos    := self.RetornarVencimentos(Venda.VendaID);
    Result := Venda;
end;

constructor TDaoVenda.Create(conexao: TConexao);
begin
  FConexao := conexao;
  FqryModific  := TSqlQuery.Create(Application);
  FqryModific.SQLConnection := FConexao.Conection;
  FParametros := TStringList.Create;
end;

procedure TDaoVenda.Incluir( Venda : TVenda );
var cdsVenda : TClientDataSet;
    dspVenda : TDataSetProvider;
begin

   dspVenda              := TDataSetProvider.Create(Application);
   dspVenda.Name         := 'pvrVenda';
   dspVenda.DataSet      := FqryModific;

   FqryModific.Close;
   FqryModific.SQLConnection := FConexao.Conection;
   FqryModific.SQL.Text      := 'Select * from T_Vendas Where 1=2 ';

   cdsVenda := TClientDataSet.Create(Application);
   cdsVenda.ProviderName := dspVenda.Name;
   cdsVenda.Open;

   cdsVenda.Append;
   cdsVenda.FieldByname('SeqVenda').Asinteger           := Venda.VendaID;
   cdsVenda.FieldByname('Cod_Cliente').Asinteger        := Venda.Cliente.Id;
   cdsVenda.FieldByname('Cod_Funcionario').Asinteger    := Venda.Funcionario.IdFuncionario;
   cdsVenda.FieldByname('Cod_FormaPagamento').Asinteger := Venda.FormaPagamento.Id;
   cdsVenda.FieldByName('Nome_Cliente').asString        := Venda.Cliente.Descricao;
   cdsVenda.FieldByname('Vlr_Total').AsFloat            := 0;
   cdsVenda.FieldByname('CustoTotal').AsFloat           := 0;
   cdsVenda.FieldByname('LucroBruto').AsFloat           := 0;
   cdsVenda.FieldByname('Vlr_Desconto').AsFloat         := 0;
   cdsVenda.FieldByname('Status').AsString              := 'N';
   cdsVenda.FieldByname('Operador').AsString            := Venda.Operador;
   cdsVenda.FieldByname('Cod_Emp').AsString             := IntToStr(Venda.Empresa.IdEmpresa);
   cdsVenda.FieldByName('Data_Mov').asDateTime          := Venda.DataMovimento;
   cdsVenda.FieldByName('Data_venda').asDateTime        := Venda.Data_Venda;
   cdsVenda.FieldByName('Data_Cad').asDateTime          := now;
   cdsVenda.FieldByname('Vlr_DescProd').AsFloat         := 0;
   cdsVenda.FieldByname('Controle').AsString            := Venda.Controle;
   cdsVenda.FieldByname('Tipo_Venda').AsString          := 'P';
   cdsVenda.FieldByname('SeqOs').AsInteger              := 0;
   cdsVenda.FieldByname('Etiqueta').AsInteger           := 1;
   cdsVenda.FieldByName('Cod_TipoVenda').AsInteger      := Venda.TipoVenda;
   cdsVenda.FieldByname('Tipo_Venda').AsString          := 'S';
   cdsVenda.FieldByname('Status').AsString              := '1';
   cdsVenda.FieldByname('PagouSinal').AsBoolean         := False;
   cdsVenda.FieldByName('Cod_caixa').asInteger          := 1;
   cdsVenda.FieldByname('AnimalID').AsInteger           := 0;
   cdsVenda.FieldByname('Tipo_Venda').AsString          := 'S';
   cdsVenda.FieldByname('NumeroSerie').AsString         := Venda.Serie;
   cdsVenda.FieldByname('Descricao').AsString           := Venda.DescricaoProduto;
   cdsVenda.FieldByname('Defeito').AsString             := Venda.Defeito;
   cdsVenda.Post;
   Try
      cdsVenda.ApplyUpdates(-1);
   except
      Exit;
   End;
   FreeAndNil(dspVenda);
end;

procedure TDaoVenda.MarcarComoPagouSinal(IDVenda: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set PagouSinal=1 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
  FqryModific.ExecSql;
end;

procedure TDaoVenda.MarcarComoServicoPago(IDVenda: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set ServicoPago=1 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
  FqryModific.ExecSql;
end;

procedure TDaoVenda.MarcarComoNaoPagouSinal(IDVenda: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set PagouSinal=0 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
  FqryModific.ExecSql;
end;

procedure TDaoVenda.MarcarComoNaoServicoPago(IDVenda: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text :='UpDate T_vendas set ServicoPago=0 where SeqVenda=:parSeqvenda';
   FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
   FqryModific.ExecSql;
end;

procedure TDaoVenda.MarcarComoEntregue(IDVenda: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text :='UpDate T_vendas set status=2, Entregue=1, Data_entrega=:parData_entrega where SeqVenda=:parSeqvenda';
   FqryModific.ParamByName('parSeqVenda').AsInteger := IDVenda;
   FqryModific.ParamByName('parData_entrega').AsSQLTimeStamp := DateTimeToSqlTimeStamp(now);
   FqryModific.ExecSql;
end;

function TDaoVenda.PesoTotal(IDVenda: Integer): Real;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntToStr(IDVenda));
   Result := FConexao.BuscarDadosSQL('select Sum(PesoBruto) as Total from T_Itensvendas where Seqvenda=:parSeqvendal',Parametros).FieldByname('Total').AsFloat;
   FreeAndNil(Parametros);
end;

procedure TDaoVenda.ProrrogarVencimento(VendaId, Dias: Integer);
begin
  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_Ctasreceber set Data_Vencimento=Data_Vencimento+'+IntToStr(Dias)+' where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := VendaId;
  FqryModific.ExecSql;

  FqryModific.Close;
  FqryModific.SQL.Text :='UpDate T_vendas set Prorrogado=1 where SeqVenda=:parSeqvenda';
  FqryModific.ParamByName('parSeqVenda').AsInteger := VendaId;
  FqryModific.ExecSql;

end;

function TDaoVenda.RetonarVendasSemSinalPago: TclientDataSet;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add('1');
   Result := FConexao.BuscarDadosSQL('select Cod_Caixa,seqvenda,Controle,Nome_Cliente,vlr_total from T_vendas where PagouSinal<>:parPagouSinal',Parametros);
end;

function TDaoVenda.RetornarVencimentos(VendaId: Integer): TStringList;
var  dados : TClientDataSet;
     lstVencimento : TStringList;
     Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntToStr(VendaId));
   dados := FConexao.BuscarDadosSQL('Select vlr_Areceber, Data_Vencimento from T_Ctasreceber where SeqVenda=:parSeqvenda order by 2',Parametros);
   lstVencimento := TStringList.Create;
   while not dados.Eof do
   begin
      lstVencimento.Add(FormatFloat('0.00',dados.FieldByName('Vlr_Areceber').AsFloat)+' - '+FormatDateTime('dd/mm/yyyy',dados.FieldByName('Data_Vencimento').AsDateTime));
      dados.Next;
   end;
   FreeAndNil(Parametros);
   Result := lstVencimento;
end;

function TDaoVenda.TemVenda(ClienteId: Integer): Boolean;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntTostr(ClienteId));
   Result := not FConexao.BuscarDadosSQL('select SeqVenda from T_vendas where cod_Cliente=:parCod_Cliente',Parametros).IsEmpty;
end;

procedure TDaoVenda.TirarVendaRomaneio(VendaId: Integer);
begin
   FqryModific.Close;
   FqryModific.SQL.Text :='Update T_vendas set RomaneioId=:parRomaneioID, Prorrogado=:parProrrogar where SeqVenda=:parSeqvenda';
   FqryModific.ParamByName('parSeqVenda').AsInteger   := VendaId;
   FqryModific.ParamByName('parRomaneioID').AsInteger := 0;
   FqryModific.ParamByName('parProrrogar').AsInteger  := 0;
   FqryModific.ExecSql;
end;

end.
