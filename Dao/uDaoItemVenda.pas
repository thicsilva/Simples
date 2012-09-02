unit uDaoItemVenda;

interface

uses uClassConexao, DbClient, SqlExpr,uClassItemVenda,SysUtils,SqlTimSt,Classes;

type TDaoItemVenda = class
  private
    FConexao : TConexao;
    FQueryModific : TSqlQuery;
    FConnection: TSqlConnection;
    procedure SetConnection(const Value: TSqlConnection);
  public
    Constructor Create(Conexao : TConexao);
    procedure Inserir(ItensVendas : TClientDataSet; ItemVenda : TItemVenda);
    function Buscar(SeqVenda : Integer) : TClientDataSet;
    property Connection : TSqlConnection read FConnection write SetConnection;
end;

implementation

uses uDaoSaldo, uClassSaldo;

{ TDaoItemVenda }

function TDaoItemVenda.Buscar(SeqVenda: Integer): TClientDataSet;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntTostr(SeqVenda));
   Result := FConexao.BuscarDadosSQL( 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                                      'Prod.Pco_Custo, Itens.* '+
                                      'from T_itensvendas Itens, T_produtos Prod '+
                                      'where Prod.Codigo=Itens.Cod_Produto AND Itens.SeqVenda=:parSeqVenda ',Parametros);

end;

constructor TDaoItemVenda.Create(Conexao: TConexao);
begin
  Fconexao := Conexao;
  FQueryModific := TSqlQuery.Create(Nil);
end;

procedure TDaoItemVenda.Inserir(ItensVendas: TClientDataSet; ItemVenda : TItemVenda);
var loDaoSaldo : TDaoSaldo;
    loSaldo    : TSaldo;
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := FConnection;
   FQueryModific.Sql.Text := 'Insert into T_ItensVendas '+
                             '( Cod_Produto,Qtde_Venda,Pco_Venda,vlr_Desconto, '+
                             '  vlr_Total,Operador,Data_Cad,Data_Mov,Complemento,'+
                             '  Cod_emp,SeqVenda,Perc_Comis, SetorId,PesoBruto,PesoLiquido,'+
                             '  MargemSecundaria,PrecoCusto,Pco_Tabela,LucroBruto ) Values '+
                             '(:parCod_Produto,:parQtde_Venda,:parPco_Venda,:parvlr_Desconto, '+
                             ' :parvlr_Total,:parOperador,:parData_Cad,:parData_Mov,:parComplemento,'+
                             ' :parCod_emp,:parSeqVenda,:parPerc_Comis, :parSetorId, :parPesoBruto,:parPesoLiquido,'+
                             ' :parMargemSecundaria,:parPrecoCusto,:parPco_Tabela,:parLucroBruto)';

   FQueryModific.Prepared := True;
   ItensVendas.first;
   while not ItensVendas.Eof do
   Begin
      {
      if ItensVendas.FieldByName('SetorId').asInteger>1 then
      begin
         loDaoSaldo := TDaoSaldo.Create(FConexao);
         loSaldo    := TSaldo.Create;
         loSaldo.SetorId   := ItensVendas.FieldByName('SetorId').asInteger;
         loSaldo.ProdutoId := ItensVendas.FieldByName('Codigo').asInteger;
         if not loDaoSaldo.ExisteSaldo(loSaldo) then
            loDaoSaldo.CriarNoSetor(loSaldo);
         FreeAndNil(loDaoSaldo);
         FreeAndNil(loSaldo);
      end;
       }
      FQueryModific.ParamByName('parCod_Produto').asInteger   := ItensVendas.FieldByName('Codigo').asInteger;
      FQueryModific.ParamByName('parQtde_Venda').asFloat      := ItensVendas.FieldByName('Qtde_Venda').asFloat;
      FQueryModific.ParamByName('parPco_Venda').asFloat       := ItensVendas.FieldByName('Pco_Venda').asFloat;
      FQueryModific.ParamByName('parvlr_Desconto').asFloat    := ItensVendas.FieldByName('vlr_Desconto').asFloat;
      FQueryModific.ParamByName('parvlr_Total').asFloat       := ItensVendas.FieldByName('vlr_Total').asFloat;
      FQueryModific.ParamByName('parOperador').asString       := ItemVenda.Operador;
      FQueryModific.ParamByName('parData_Cad').AsSQLTimeStamp := DatetimeToSqltimeStamp(Now);
      FQueryModific.ParamByName('parData_Mov').AsSQLTimeStamp := DatetimeToSqltimeStamp(ItemVenda.DataMovimento);
      FQueryModific.ParamByName('parComplemento').asString    := ItensVendas.FieldByName('Complemento').asString;
      FQueryModific.ParamByName('parCod_emp').asInteger       := ItemVenda.CodigoEmpresa;
      FQueryModific.ParamByName('parSeqVenda').asInteger      := ItemVenda.VendaID;
      FQueryModific.ParamByName('parPerc_Comis').asFloat      := ItensVendas.FieldByName('Perc_Comis').asFloat;
      FQueryModific.ParamByName('parSetorId').asInteger       := ItensVendas.FieldByName('SetorId').asInteger;
      FQueryModific.ParamByName('parPesoLiquido').asFloat     := ItensVendas.FieldByName('PesoLiquido').AsFloat;
      FQueryModific.ParamByName('parPesoBruto').asFloat       := ItensVendas.FieldByName('PesoBruto').AsFloat;
      FQueryModific.ParamByName('parMargemSecundaria').asFloat:= ItensVendas.FieldByName('MargemSecundaria').AsFloat;
      FQueryModific.ParamByName('parPrecoCusto').asFloat      := ItensVendas.FieldByName('PrecoCusto').AsFloat;
      FQueryModific.ParamByName('parLucroBruto').asFloat      := ItensVendas.FieldByName('LucroBruto').AsFloat;
      FQueryModific.ParamByName('parPco_Tabela').asFloat      := ItensVendas.FieldByName('Pco_Tabela').AsFloat;
      FQueryModific.ExecSql;
      ItensVendas.next;
   End;
end;

procedure TDaoItemVenda.SetConnection(const Value: TSqlConnection);
begin
  FConnection := Value;
end;

end.
