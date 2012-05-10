unit uDaoItemEntrada;

interface

uses uClassConexao, SqlExpr, DBClient,uclassItemEntrada,SysUtils,SqlTimSt;

type TDaoItemEntrada = class
   private
     FConexao : TConexao;
     FQueryModific : TSqlQuery;
   public
      Constructor Create(Conexao : TConexao);
      procedure incluir(ItensCompras : TClientDataSet;ItemEntrada : TItemEntrada );
end;
implementation

uses uClassSaldo, uDaoSaldo;

{ TDaoItemEntrada }

constructor TDaoItemEntrada.Create(Conexao: TConexao);
begin
   FQueryModific := TSqlQuery.Create(Nil);
   FConexao := Conexao;
end;


procedure TDaoItemEntrada.incluir(ItensCompras : TClientDataSet ;ItemEntrada : TItemEntrada );
var loDaoSaldo : TDaoSaldo;
    loSaldo  : TSaldo;

begin
  FQueryModific.Close;
  FQueryModific.SQLConnection := FConexao.Conection;
  FQueryModific.Sql.Text := 'Insert into T_ItensEntradas ( Cod_Produto,Qtde_Entrada,Pco_Entrada, '+
                            'vlr_Total,Operador,Data_Cad,Data_Mov,Data_Entrada,'+
                            'Cod_emp,SeqEntrada, SetorId) Values   '+
                            '(:parCod_Produto,:parQtde_Entrada,:parPco_Entrada, '+
                            ':parvlr_Total,:parOperador,:parData_Cad,:parData_Mov,:parData_entrada,'+
                            ':parCod_emp,:parSeqEntrada, :parSetorId)';

  FQueryModific.Prepared := True;
  ItensCompras.first;
  while not ItensCompras.Eof do
  Begin
     if ItensCompras.FieldByName('SetorId').asInteger>1 then
     begin
        loDaoSaldo := TDaoSaldo.Create(FConexao);
        loSaldo    := TSaldo.Create;
        loSaldo.SetorId := ItensCompras.FieldByName('SetorId').asInteger;
        loSaldo.ProdutoId := ItensCompras.FieldByName('Codigo').asInteger;
        if not loDaoSaldo.ExisteSaldo(loSaldo) then
           loDaoSaldo.CriarNoSetor(loSaldo);
        FreeAndNil(loDaoSaldo);
        FreeAndNil(loSaldo);
     end;
     FQueryModific.ParamByName('parCod_Produto').asInteger    := ItensCompras.FieldByName('Codigo').asInteger;
     FQueryModific.ParamByName('parSetorId').asInteger        := ItensCompras.FieldByName('SetorId').asInteger;
     FQueryModific.ParamByName('parSeqEntrada').asInteger     := ItemEntrada.CompraID;
     FQueryModific.ParamByName('parQtde_Entrada').asFloat     := ItensCompras.FieldByName('Qtde_Venda').asFloat;
     FQueryModific.ParamByName('parPco_Entrada').asFloat      := ItensCompras.FieldByName('Pco_Venda').asFloat;
     FQueryModific.ParamByName('parvlr_Total').asFloat        := ItensCompras.FieldByName('vlr_Total').asFloat;
     FQueryModific.ParamByName('parData_Cad').AsSQLTimeStamp  := DateTimeToSqlTimeStamp(now);
     FQueryModific.ParamByName('parData_Entrada').AsSQLTimeStamp  := DateTimeToSqlTimeStamp(ItemEntrada.DataMovimento);
     FQueryModific.ParamByName('parOperador').AsString        := ItemEntrada.Operador;
     FQueryModific.ParamByName('parCod_Emp').AsInteger        := ItemEntrada.CodigoEmpresa;
     FQueryModific.ParamByName('parData_Mov').AsSQLTimeStamp      := DateTimeToSqlTimeStamp(ItemEntrada.DataMovimento);
     FQueryModific.ExecSql;
     ItensCompras.next;
  End;
end;

end.
