unit Cl_TBuscaDados;

interface

uses  DBclient,ComCtrls,SqlExpr,Provider,Forms,SysUtils,Classes,DBXpress,Dialogs,cl_tConexao ;

 Type TBuscaDados = Class(TConexao)

    Private

       lQryBuscaDados : TSqlQuery;
       ldspBuscaDados : TDataSetProvider;
       lCdsBuscaDados : TClientDataSet;

    Public

       Function BuscaDados(pwSql : String; pwParametros : TStringList ; pwValores : TStringList ) : OleVariant;

   Constructor Create(aowner : TComponent);
   destructor destroy;

 End;

implementation

{ TBuscaDados }

function TBuscaDados.BuscaDados(pwSql: String; pwParametros,
  pwValores: TStringList): OleVariant;
var
  I: Integer;
  lsSeparado : String;

begin
   If pwParametros.Count <> pwValores.Count Then
      Exit;
   Try

     lqryBuscaDados.SQLConnection := conection;
     lqryBuscaDados.SQL.Text      := pwSql;

     if pwParametros.Count > 0 then
        lqryBuscaDados.SQL.Add(' Where');

     lsSeparado := '';
     for I := 0 to pwParametros.Count - 1 do
     Begin
        lqryBuscaDados.SQL.Add(lsSeparado+pwParametros[I]+'='+pwValores[I]);
        lsSeparado:=' And ';
     End;

     ldspBuscaDados.DataSet := lqryBuscaDados;
     ldspBuscaDados.name    := 'ldspBuscaDados';

     lcdsBuscaDados.ProviderName := ldspBuscaDados.Name;
     lcdsBuscaDados.Open;

     Result := lcdsBuscaDados.Data;

   Finally
     FreeAndNil(lcdsBuscaDados);
     FreeAndNil(ldspBuscaDados);
     FreeAndNil(lqryBuscaDados);
   End;

end;

constructor TBuscaDados.Create(aowner : TComponent);
begin

   inherited create;

   lqryBuscaDados   := TSQLQuery.Create(aowner);
   ldspBuscaDados   := TDataSetProvider.Create(aowner);
   lcdsBuscaDados   := TClientDataSet.Create(aowner);

end;

destructor TBuscaDados.destroy;
begin
   FreeAndNil(lqryBuscaDados);
   FreeAndNil(ldspBuscaDados);
   FreeAndNil(lcdsBuscaDados);
end;

end.
