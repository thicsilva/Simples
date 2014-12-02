unit uClassDaoContaCorrente;

interface

uses uClassConexao, uClassContacorrente, SqlExpr, DBXCommon,uPrincipal, SysUtils, 
  Forms, SqlTimSt, DBClient;

Type TDaoContaCorrente = Class
   private
     FConexao : TConexao;
     FQryModific : TSqlQuery;
  public
      Function Atualizar ( prDadosContaCorrente : TContaCorrente ) : Boolean ;
      function Saldo(clienteId : Integer ) : Real ;
      Constructor Create( conexao : TConexao);
End;

implementation

{ TDaoContaCorrente }

function TDaoContaCorrente.Atualizar(
  prDadosContaCorrente: TContaCorrente): Boolean;
var  lQrySalvaDados : TSqlQuery;
    // trdNrTransacao : TdbxTransaction;
begin
   {
   if not frmPrincipal.dbxPrincipal.InTransaction then
      trdNrTransacao := frmPrincipal.dbxPrincipal.BeginTransaction
   Else
   Begin
      Result := False;
      Exit;
   End;
    }
   lQrySalvaDados                := TSqlQuery.Create(Application);
   lQrySalvaDados.SQLConnection  := Fconexao.Conection;
   lQrySalvaDados.SQL.Text      := 'Insert Into T_ContaCorrente '+
                                   '       ( Historico,Cod_Emp,Data_Cad,Data_Mov,Operador,Valor,D_C,Cod_Cliente,Documento ) values  '+
                                   '       ( :parHistorico,:parCod_Emp,:parData_Cad,:parData_Mov,:parOperador,'+
                                   '        :parValor,:parD_C,:parCod_Cliente,:parDocumento )';
   lQrySalvaDados.ParamByName('parCod_Emp').AsString        := gsCod_Emp;
   lQrySalvaDados.ParamByName('parOperador').AsString       := gsOperador;
   lQrySalvaDados.ParamByName('parData_Cad').AsSQLTimeStamp := DateTimeToSQLTimeStamp(now);
   lQrySalvaDados.ParamByName('parData_Mov').AsSQLTimeStamp := DateTimeToSQLTimeStamp(gsData_Mov);
   lQrySalvaDados.ParamByName('parHistorico').AsString      := prDadosContaCorrente.Historico;
   lQrySalvaDados.ParamByName('parD_C').AsString            := prDadosContaCorrente.D_C;
   lQrySalvaDados.ParamByName('parValor').AsFloat           := prDadosContaCorrente.Valor;
   lQrySalvaDados.ParamByName('parCod_Cliente').AsInteger   := prDadosContaCorrente.Cod_Cliente;
   lQrySalvaDados.ParamByName('parDocumento').AsInteger     := prDadosContaCorrente.Documento;
   lQrySalvaDados.ExecSQL;

   //frmPrincipal.dbxPrincipal.CommitFreeAndNil(trdNrTransacao);
   FreeandNil(lQrySalvaDados);
   Result := True;
end;

constructor TDaoContaCorrente.Create;
begin
  Fconexao := conexao;
  FQryModific := TSqlQuery.Create(nil);
  FQryModific.SQLConnection := Fconexao.Conection;
end;

function TDaoContaCorrente.Saldo(clienteId: Integer): Real;
var ldSaldo : Double;
    qryvariavel : TSqlQuery;
    lcdsDados   : TClientDataSet;
begin
   lcdsDados := Fconexao.BuscarDadosSQL('Select D_C, Sum(Valor) as Total from T_Contacorrente where Cod_Cliente='+QuotedStr(IntToStr(clienteId))+'  '+
                                         'group by D_C',Nil);
   ldSaldo := 0;
   while not lcdsDados.Eof do
   Begin
      if lcdsDados.FieldByname('D_C').AsString = 'C' then
         ldSaldo := ldSaldo + lcdsDados.FieldByname('Total').AsFloat;
      if lcdsDados.FieldByname('D_C').AsString = 'D' then
         ldSaldo := ldSaldo - lcdsDados.FieldByname('Total').AsFloat;
      lcdsDados.Next;
   End;
   if ldSaldo>0 then
      ldSaldo := 0;
   Result := ldSaldo*(-1);
end;

end.
