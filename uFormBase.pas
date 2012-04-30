unit uFormBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinCtrls,cxPropertiesStore, StdCtrls, 
  bsSkinBoxCtrls;

  type
   TTipoOperacao = (toAlterar, toIncluir, toConsultar, toNormal);
   TEnumOperacao = set of TTipoOperacao;

type
  TFormBase1 = class(TForm)
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
     FOperacao      : TTipoOperacao;
     FListControles : TList;
    { Private declarations }
  Protected
     {procedimentos}
     procedure SetOperacao(const Value: TTipoOperacao);

     {funções}
     function getOperacao: TTipoOperacao;
  public
    { Public declarations }
    {procedimentos}
    procedure SubmeterControle(loControle: TControl; loOperacoes: TEnumOperacao);
    procedure LimparCampos;virtual;
    procedure SolicitaSenha;
    {propriedades}
    property Operacao: TTipoOperacao read getOperacao write SetOperacao;

end;

type
   TControleCadastro = class
   private
      FControle: TControl;
      FStatusControle: TEnumOperacao;
   protected
      procedure SetControle(const Value: TControl);
      procedure SetStatusControle(const Value: TEnumOperacao);
   public
      property Controle: TControl read FControle write SetControle;
      property StatusControle: TEnumOperacao read FStatusControle write SetStatusControle;
      procedure BotaoAlterar;
   published
    { published declarations }
end;

var
  FormBase1: TFormBase1;

implementation

uses Uprincipal, uLogin;

{$R *.dfm}

procedure TFormBase1.btnAlterarClick(Sender: TObject);
var lsForm : String;
begin
  {
  lsForm := Trim(Copy(self.Caption,1,pos('-',self.Caption)-1));
  gbAcesso := False;
  frmlogin := Tfrmlogin.create(Self);
  frmlogin.showmodal;
  if frmlogin.Tag = 0 then
     Exit;

  If not gsPerfilacesso.VerificaAcesso('Cadastros',lsForm,'alterar',gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   gbAcesso := True;
   }
end;

procedure TFormBase1.BtnExcluirClick(Sender: TObject);
var lsForm : String;
begin
   {
   lsForm := Trim(Copy(self.Caption,1,pos('-',self.Caption)-1));
   gbAcesso := False;
   frmLogin := TfrmLogin.create(Self);
   frmLogin.showmodal;
   if frmLogin.Tag = 0 then
      Exit;
   If not gsPerfilacesso.VerificaAcesso('Cadastros',lsForm,'Excluir',gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   gbAcesso := True;
   }
end;

procedure TFormBase1.btnIncluirClick(Sender: TObject);
var lsForm : String;
begin
  {
  if gbControleDeSenhaAtivo then
  begin
    lsForm := Trim(Copy(self.Caption,1,pos('-',self.Caption)-1));

    gbAcesso := False;
    frmLogin := TfrmLogin.create(Self);
    frmLogin.showmodal;
    if frmLogin.Tag = 0 then
       Exit;
    If not gsPerfilacesso.VerificaAcesso('Cadastros',lsForm,'Incluir',gbMaster) Then
    Begin
        CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
        Exit;
     End;
     gbAcesso := True;
  end;
  }
end;

procedure TFormBase1.FormClose(Sender: TObject; var Action: TCloseAction);
Var licont      : integer;
    lstmArquivo :  TFileStream ;
begin
   {
   for liCont := 0 to Self.ComponentCount - 1 do
   begin
      if self.Components[liCont] is TcxPropertiesStore then
      Begin
         lstmArquivo       := TFileStream.Create( GsPath+'\Config\Grid_'+gsCod_Operador+Tform(Sender).name, fmCreate );
         (self.Components[liCont] as TcxPropertiesStore).StorageStream :=lstmArquivo;
         (self.Components[liCont] as TcxPropertiesStore).StoreTo;
         lstmArquivo.free;
      End;
   end;
   Tform(Sender) := Nil;
   Action        := caFree;
   }
end;

procedure TFormBase1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

// -> Fazendo o ENTER funcionar como o TAB
   If Key = 13 then
   begin
      SelectNext( ActiveControl, True, True );
      Key := 0;
   end;

end;

procedure TFormBase1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   {
   // -> Fazendo o ENTER funcionar como o TAB
   If Key = #13 then
   begin
      SelectNext( ActiveControl, True, True );
      Key := #0;
   end;
   }
end;

procedure TFormBase1.FormShow(Sender: TObject);
var licont : Integer;
    lstmArquivo :  TFileStream ;
begin
   for liCont := 0 to Self.ComponentCount - 1 do
   begin
      if self.Components[liCont] is TcxPropertiesStore then
      Begin
         if FileExists(GsPath+'\Config\Grid_'+gsCod_Operador+Tform(Sender).name) then
         Begin
            lstmArquivo       := TFileStream.Create( GsPath+'\Config\Grid_'+gsCod_Operador+Tform(Sender).name, fmOpenRead );
            (self.Components[liCont] as TcxPropertiesStore).StorageStream :=lstmArquivo;
            (self.Components[liCont] as TcxPropertiesStore).RestoreFrom;
            lstmArquivo.Free;
         End;
      End;
   end;
   for liCont := 0 to Self.ComponentCount - 1 do
   begin
      if self.Components[liCont] is Tbsskinedit then
         (self.Components[liCont] as Tbsskinedit).CharCase := ecUpperCase;
   end;
   SetOperacao(toNormal);
end;

procedure TFormBase1.SubmeterControle(loControle: TControl;
  loOperacoes: TEnumOperacao);
var loTStatusControle: TControleCadastro;
begin
   loTStatusControle := TControleCadastro.Create;
   loTStatusControle.Controle := loControle;
   loTStatusControle.StatusControle := loOperacoes;
   FListControles.Add(loTStatusControle);
end;

procedure TFormBase1.FormCreate(Sender: TObject);
begin
   FListControles := TList.Create;
end;

procedure TFormBase1.FormDestroy(Sender: TObject);
//var liCont: Integer;
begin
   {
   ]if FListControles.Count > 0 then
   begin
      for liCont := 0 to FListControles.Count - 1 do
      begin
         TControleCadastro( FListControles[liCont] ).Free;
      end;
   end;
   FListControles.Free;
   }
end;

function TFormBase1.getOperacao: TTipoOperacao;
begin
   result := FOperacao;
end;

procedure TFormBase1.LimparCampos;
Var
  liCont: Integer;
begin

   for liCont := 0 to Self.ComponentCount - 1 do
   begin
      if self.Components[liCont] is TCustomEdit then
         (self.Components[liCont] as TCustomEdit).Clear
      else if self.Components[liCont] is TCheckBox then
         (self.Components[liCont] as TCheckBox).Checked := False
      else if self.Components[liCont] is TCustomComboBox then
         (self.Components[liCont] as TCustomComboBox).ItemIndex := -1
     // else if self.Components[liCont] is TDBLookupComboBox then
       //  (self.Components[liCont] as TDBLookupComboBox).keyValue := null;
   end;

end;

procedure TFormBase1.SetOperacao(const Value: TTipoOperacao);
var loControleCadastro: TControleCadastro;
    liCont: Integer;
begin
   FOperacao := Value;
   if FListControles.Count > 0 then
   begin
      for liCont := 0 to FListControles.Count - 1 do
      begin
         loControleCadastro :=  TControleCadastro( FListControles[liCont] );
         loControleCadastro.Controle.Enabled := False;
         if FOperacao in loControleCadastro.StatusControle then
            loControleCadastro.Controle.Enabled := True;
      end;
   end;
end;

procedure TFormBase1.SolicitaSenha;
begin
  Try
     gbAcesso := False;
     frmLogin := TfrmLogin.create(Self);
     frmLogin.showmodal;
     if frmLogin.Tag = 0 then
        Exit;
     gbAcesso := True;
  Finally
     FreeAndNil(frmLogin)
  End;
end;

{ TStatusBotoes }

procedure TControleCadastro.BotaoAlterar;
begin
end;

procedure TControleCadastro.SetControle(const Value: TControl);
begin
  FControle := Value;
end;

procedure TControleCadastro.SetStatusControle(const Value: TEnumOperacao);
begin
  FStatusControle := Value;
end;


end.
