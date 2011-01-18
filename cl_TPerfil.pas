unit cl_TPerfil;

interface

uses ComCtrls,DBclient,Forms,Variants,SqlExpr,Provider,cl_tConexao, SysUtils ;

Type TPerfil = Class(TConexao)

    Private

       FDesc_Maximo : Double;
       FMenu        : String;
       FItem        : String;
       FCdsAcessos  : TClientDataSet;

       procedure SetCdsAcessos(const Value: TClientDataSet);

    Protected

       function GetMenu: String;
       function GetItem: String;
       function GetDesc_Maximo: Double;

       procedure SetMenu(Value: String);
       procedure SetItem(Value: String);
       procedure SetDesc_Maximo( Value: Double);

    public

       Property Desc_Maximo : Double Read GetDesc_Maximo write SetDesc_Maximo;
       Property Menu        : String  Read GetMenu write SetMenu;
       Property Item        : String  Read GetItem Write SetItem;
       Property CdsAcessos  : TClientDataSet read FCdsAcessos write SetCdsAcessos;

       function VerificaAcesso(pwCategoria : String; pwMenu : String ; pwItem : String; pwMaster : Boolean ) : Boolean;
       function AcessoForm(pwCategoria : String; pwMenu : String; pwMaster : Boolean ) : Boolean;


       Procedure CarregaAcesso(pwCod_Perfil : String);

    constructor Create(pwCod_Perfil : String);

    published

End;

implementation

uses
  Classes;

{ TAcessos }

function TPerfil.AcessoForm(pwCategoria, pwMenu: String; pwMaster : Boolean ): Boolean;
begin
   if FCdsAcessos.Locate('Categoria;Menu',VarArrayOf( [Trim(pwCategoria),Trim(pwMenu) ] ),[] ) Then
      result := FCdsAcessos.FieldByname('Acesso').AsBoolean
   Else
      result := False;

   if pwMaster then
      result := pwMaster;

end;

procedure TPerfil.CarregaAcesso(pwCod_Perfil : String);
Var lQryBuscaDados : TSqlQuery;
    ldspBuscaDados : TDataSetProvider;
    lCdsBuscaDados : TClientDataSet;
  I: Integer;
  lsSeparado : String;

begin
   Try
      lqryBuscaDados               := TSQLQuery.Create(Application);
      lqryBuscaDados.SQLConnection := conection;
      lqryBuscaDados.SQL.Text      := 'Select Sequencia, Categoria, Menu, Item, Acesso '+
                                      'From T_Acessoperfil '+
                                      'Where cod_Perfil=:parCod_Perfil and Acesso=:parAcesso';
      lqryBuscaDados.ParamByName('parCod_Perfil').AsString := pwCod_Perfil;
      lqryBuscaDados.ParamByName('parAcesso').AsBoolean    := True;

      ldspBuscaDados         := TDataSetProvider.Create(Application);
      ldspBuscaDados.DataSet := lqryBuscaDados;
      ldspBuscaDados.name    := 'ldspBuscaDados';

      fCdsAcessos := TClientDataSet.Create(Application);
      fCdsAcessos.ProviderName := ldspBuscaDados.Name;
      fCdsAcessos.Open;
   Finally
      FreeAndNil(ldspBuscaDados);
      FreeAndNil(lqryBuscaDados);
   End;

end;



constructor TPerfil.Create(pwCod_Perfil : String);
begin
    inherited create;

    CarregaAcesso(pwCod_Perfil);

end;

function TPerfil.GetDesc_Maximo: Double;
begin
   Result := FDesc_Maximo;
end;

function TPerfil.GetItem: String;
begin
   Result := FItem;
end;

function TPerfil.GetMenu: String;
begin
   result := FMenu;
end;


procedure TPerfil.SetCdsAcessos(const Value: TClientDataSet);
begin
  FCdsAcessos := Value;
end;

procedure TPerfil.SetDesc_Maximo(Value: Double);
begin
  FDesc_Maximo := Value ;
end;

procedure TPerfil.SetItem(Value: String);
begin
   Value := FItem;
end;

procedure TPerfil.SetMenu(Value: String);
begin
   Value := FMenu;
end;


function TPerfil.VerificaAcesso(pwCategoria, pwMenu, pwItem: String; pwMaster : Boolean ): Boolean;
begin
    if not FCdsAcessos.Locate('Categoria;Menu;Item',VarArrayOf( [ Trim(pwCategoria), Trim(pwMenu),Trim(pwItem) ] ),[] ) Then
      result := False
   Else
      result := FCdsAcessos.FieldByname('Acesso').AsBoolean;

   if pwMaster then
      result := pwMaster;

end;

end.
