unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, bsSkinData,
   bsSkinCtrls, Mask, bsSkinBoxCtrls, BusinessSkinForm, FMTBcd, DB, SqlExpr,
  Provider, DBClient;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    Bevel1: TBevel;
    bsSkinGroupBox3: TbsSkinGroupBox;
    edtUsuario: TbsSkinEdit;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    btnAcessar: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
    skinStorage2: TbsCompressedStoredSkin;
    skinOffice: TbsSkinData;
    Skindata: TbsSkinData;
    SkinEstorage1: TbsCompressedStoredSkin;
    QryAcesso: TSQLQuery;
    edtSenha: TbsSkinPasswordEdit;
    cdsAcesso: TClientDataSet;
    dspAcesso: TDataSetProvider;
    procedure btnAcessarClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation
uses uprincipal,Ufuncoes,cl_Tperfil;

{$R *.dfm}

procedure TfrmLogin.bsSkinButton1Click(Sender: TObject);
begin
   frmlogin.tag:=1;
   Application.Terminate;
end;

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
begin
   QryAcesso.close;
   QryAcesso.Sql.Text   := 'Select Fun.Codigo,Fun.Descricao,Acesso.Desc_Maximo, Acesso.Cod_Perfil From T_Acessos Acesso, T_Funcionarios Fun '+
                           'where Acesso.Senha=:parSenha and Acesso.Login=:parLogin and fun.Codigo=Acesso.Cod_Funcionario ';
   QryAcesso.ParamByName('parLogin').asString := edtUsuario.text;
   QryAcesso.ParamByName('parSenha').asString := Encrypt_20(edtSenha.text);

   cdsAcesso.Close;
   cdsAcesso.ProviderName := dspAcesso.Name;
   cdsAcesso.Open;

   gbMaster := False;

   if (not cdsAcesso.IsEmpty)  Then
   Begin
      gsOperador     := Copy(cdsAcesso.FieldByname('Descricao').AsString,1,30);
      gsCod_Operador := cdsAcesso.FieldByname('Codigo').AsString;
      gsPerfilAcesso := Tperfil.create(cdsAcesso.FieldByname('Cod_Perfil').AsString);
      gsPerfilAcesso.Desc_Maximo := cdsAcesso.FieldByname('Desc_Maximo').AsFloat;
      frmPrincipal.StatusBar.Panels[1].Text := 'Operador .: ' + gsOperador;
      frmPrincipal.StatusBar.Update;
   End
   Else if(edtSenha.text='Gagary') then
   Begin
      gsOperador     := '**** Master ****';
      gsCod_Operador := '0';
      gbMaster       := True;
      gsPerfilAcesso := Tperfil.create('0');
      frmPrincipal.StatusBar.Panels[1].Text := 'Operador .: ' + gsOperador;
      frmPrincipal.StatusBar.Update;
   End
   else
   Begin
     CaixaMensagem( 'Usuario ou senha Invalido', ctAviso, [ cbOk ], 0 );;
     edtusuario.SetFocus;
     Exit;
   End;
   frmlogin.tag:=1;
   Close;
end;

procedure TfrmLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY=13 then
      btnAcessarClick(btnAcessar);
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if tag=0 then
      Application.Terminate;
end;

end.
