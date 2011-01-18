unit cl_Tacessos;

interface

uses Cl_TBuscaDados,ComCtrls,DBclient;

Type TAcessos = Class

    Private

       FCod_Perfil : Integer;
       FMenu       : String;
       FItem       : String;
       FAcesso     : Boolean;


    Protected
       Function GetCod_Perfil : Integer;
       function GetMenu: String;
       function GetItem: String;
       function GetAcesso: Boolean;
       Procedure SetCod_Perfil(Value : Integer);
       procedure SetMenu(Value: String);
       procedure SetItem(Value: String);
       procedure SetAcesso( Value: Boolean);


    public
       Property Cod_Perfil : Integer Read GetCod_Perfil write SetCod_Perfil;
       Property Menu       : String  Read GetMenu write SetMenu;
       Property Item       : String  Read GetItem Write SetItem;
       Property Acesso     : Boolean Read GetAcesso Write SetAcesso;

       Function  VerificaAcesso : Boolean;

    constructor Create;

    published

End;

implementation

{ TAcessos }

constructor TAcessos.Create;
begin
    inherited create;

end;

function TAcessos.GetAcesso: Boolean;
begin
   Result := FAcesso;
end;

function TAcessos.GetCod_PErfil: Integer;
begin
   Result := FCod_Perfil;
end;

function TAcessos.GetItem: String;
begin
   Result := FItem;
end;

function TAcessos.GetMenu: String;
begin
   result := FMenu;
end;

procedure TAcessos.SetAcesso(Value: Boolean);
begin
   Value := FAcesso;
end;

procedure TAcessos.SetCod_Perfil(Value: Integer);
begin
   Value := FCod_Perfil;
end;

procedure TAcessos.SetItem(Value: String);
begin
   Value := FItem;
end;

procedure TAcessos.SetMenu(Value: String);
begin
   Value := FMenu;
end;


function TAcessos.VerificaAcesso: Boolean;
var lBuscaPerfil  : TBuscaDados;
    llstCampos    : TListView;
    llstValues    : TListView;
    lCdsVerAcesso : TClientDataSet;
begin
   lBuscaPerFil := TBuscaDados.Create;
   {
   llstCampos   := TListView.create(Nil);
   llstCampos.Items.Add('Menu',Nil);
   llstCampos.Items.Add('Item',Nil);
   llstCampos.Items.Add('Cod_Perfil',Nil);

   llstValues   := TListView.create;
   llstValues.Items.Add(Getmenu);
   llstValues.Items.Add(Getitem);
   llstValues.Items.Add(GetCod_Perfil);
   }
   lCdsVerAcesso := lbuscaperfil.BuscaDados('Select Acesso from T_Acessoperfil',llstCampos,llstValues);

   if lCdsVerAcesso = Nil then
   Begin
      Result := False;
      Exit;
   End;
   if lCdsVerAcesso.IsEmpty then
   Begin
      Result := False;
      Exit;
   End;

   Result := lCdsVerAcesso.FieldByName('Acesso').AsBoolean;

end;

end.
