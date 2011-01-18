unit uDaoContaCorrente;

interface

uses cl_tConexao,uClassContacorrente, SqlExpr, DBXCommon,uPrincipal, SysUtils, 
  Forms, SqlTimSt;

Type TDaoContaCorrente = Class(TConexao)
   public
      Function Atualizar ( prDadosContaCorrente : TContaCorrente ) : Boolean ;
      Constructor Create;
End;

implementation

{ TDaoContaCorrente }

function TDaoContaCorrente.Atualizar(
  prDadosContaCorrente: TContaCorrente): Boolean;
var  lQrySalvaDados : TSqlQuery;
     trdNrTransacao : TdbxTransaction;
begin
   if not frmPrincipal.dbxPrincipal.InTransaction then
      trdNrTransacao := frmPrincipal.dbxPrincipal.BeginTransaction
   Else
   Begin
      Result := False;
      Exit;
   End;

   lQrySalvaDados                := TSqlQuery.Create(Application);
   lQrySalvaDados.SQLConnection  := Conection;
   lQrySalvaDados.SQL.Text      := 'Insert Into T_Disciplinas '+
                                   '       (Historico,Cod_Emp,Data_Cad,Data_Mov,Operador,Valor,D_C,Cod_Cliente,Documento ) values  '+
                                   '       (:parHistorico,:parCod_Emp,:parData_Cad,:parData_Mov,:parOperador,'+
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

   frmPrincipal.dbxPrincipal.CommitFreeAndNil(trdNrTransacao);
   FreeandNil(lQrySalvaDados);
   Result := True;
end;

constructor TDaoContaCorrente.Create;
begin

end;

end.
