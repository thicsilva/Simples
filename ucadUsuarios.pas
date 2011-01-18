unit ucadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, bsdbctrls, FMTBcd, SqlExpr, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TfrmCadUsuarios = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    dspCadUsuarios: TDataSetProvider;
    cdsCadUsuarios: TClientDataSet;
    srcCadUsuarios: TDataSource;
    dspVariavel: TDataSetProvider;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtSenha: TEdit;
    edtconfirmaSenha: TEdit;
    edtCod_Funcionario: TbsSkinEdit;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    cmbPerfil: TbsSkinDBLookupComboBox;
    QryCadUsuarios: TSQLQuery;
    qryVariavel: TSQLQuery;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    edtCodigo: TbsSkinEdit;
    cxGrid1: TcxGrid;
    GridUsuarios: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnPesquisar: TbsSkinButton;
    GridUsuariosColumn1: TcxGridDBColumn;
    GridUsuariosColumn2: TcxGridDBColumn;
    GridUsuariosColumn3: TcxGridDBColumn;
    GridUsuariosColumn4: TcxGridDBColumn;
    edtData_cad: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtLogin: TbsSkinEdit;
    cdsCadPerfil: TClientDataSet;
    srcCadPerfil: TDataSource;
    bsSkinStdLabel6: TbsSkinStdLabel;
    EdtDesc_Maximo: TbsSkinNumericEdit;
    procedure EdtPesquisaChange(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btntudoClick(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
  private
   pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

uses uPrincipal,ufuncoes;

{$R *.dfm}

procedure TfrmCadUsuarios.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   qryCadUsuarios.Close;
   qryCadUsuarios.SQL.Text := 'Select Acesso.Cod_Perfil, Acesso.Codigo, Fun.Descricao, Acesso.Cod_Funcionario, acesso.Senha, '+
                              '       Acesso.Data_Cad, Acesso.DAta_Atu, Acesso.Login, Acesso.Desc_Maximo '+
                              'From T_Acessos Acesso, T_Funcionarios Fun  '+
                              'Where Descricao like :parDescricao and '+
                              '      Fun.Codigo = Acesso.Cod_Funcionario ';
   qryCadUsuarios.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';

   cdsCadUsuarios.Close;
   cdsCadUsuarios.ProviderName := dspCadUsuarios.Name;
   cdsCadUsuarios.Open;

end;

procedure TfrmCadUsuarios.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';


   edtCodigo.Text :=  Sequencia('Codigo',False,'T_Acessos',FrmPrincipal.dbxPrincipal,'',False,5);

   qryCadUsuarios.Close;
   qryCadUsuarios.SQL.text :=' Select * from T_Acessos WHERE 1=2';

   cdsCadUsuarios.Close;
   cdsCadUsuarios.ProviderName := dspCadUsuarios.Name;
   cdsCadUsuarios.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);
   edtLogin.Text    := '';

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

end;

procedure TfrmCadUsuarios.btnokClick(Sender: TObject);
var lscopia : String;
begin

   VerCopia( edtCod_Funcionario.Text, 'Cod_funcionario', 'T_Acessos', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
   If lsCopia <> '' Then
   Begin
      CaixaMensagem( 'Este funcionario ja tem acesso cadastrado' + lsCopia, ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if EdtSenha.text='' Then
   Begin
      CaixaMensagem( 'Informa a Senha ?', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if edtCod_Funcionario.text='' Then
   Begin
      CaixaMensagem( 'Informe o funcionario ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   If pvQualBotao = 'ALTERAR' then
   begin
      qryCadUsuarios.Close;
      qryCadUsuarios.SQL.Text := 'Select * from T_Acessos where codigo=:parCodigo';
      qryCadUsuarios.ParamByName('parCodigo').AsString := edtcodigo.Text;

      cdsCadUsuarios.close;
      cdsCadUsuarios.Open;

      cdsCadUsuarios.Edit;
      cdsCadUsuarios.FieldByName('Data_Atu').AsDateTime := Now;

   End
   Else
   Begin
      if edtSenha.Text <> edtconfirmaSenha.Text Then
      Begin
         CaixaMensagem( 'A Senha esta divergente no campo de confirmação ', ctAviso, [ cbOk ], 0 );
         Exit
      End;
      cdsCadUsuarios.Append;
      cdsCadUsuarios.FieldByName('Data_Cad').AsDateTime := Now;
   End;

   cdsCadUsuarios.FieldByName('Codigo').Asinteger          := StrtoInt(edtCodigo.Text);
   cdsCadUsuarios.FieldByName('Senha').AsString            := Encrypt_20(edtSenha.Text);
   cdsCadUsuarios.FieldByName('Operador').AsString         := gsOperador;
   cdsCadUsuarios.FieldByName('Login').AsString            := EdtLogin.Text;
   cdsCadUsuarios.FieldByName('Cod_Emp').AsString          := gsCod_Emp;
   cdsCadUsuarios.FieldByName('Cod_Perfil').AsString       := cmbPerfil.KeyValue;
   cdsCadUsuarios.FieldByName('Cod_funcionario').AsInteger := StrtoInt(edtCod_Funcionario.text);
   cdsCadUsuarios.FieldByName('Desc_maximo').AsFloat       := StrtoFloat(edtDesc_maximo.text);
   cdsCadUsuarios.Post;

   If cdsCadUsuarios.ChangeCount > 0  Then // se houve mudancas
      cdsCadUsuarios.ApplyUpdates(-1);

   //edtDescricao.Text := '';

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   PagCadastro.ActivePageIndex:=0;
   EdtPesquisaChange(EdtPesquisa);
end;

procedure TfrmCadUsuarios.btnalterarClick(Sender: TObject);
begin
   IF cdsCadUsuarios.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   pvQualBotao := 'ALTERAR';

   edtcodigo.Text          := incZero( IntToStr(cdsCadUsuarios.FieldByName('Codigo').AsInteger),4);
   edtCod_Funcionario.text := IntToStr(cdsCadUsuarios.FieldByName('Cod_Funcionario').AsInteger);
   edtCod_FuncionarioExit(edtCod_Funcionario);
   EdtData_cad.text        := FormatDateTime('dd/mm/yyyy',cdsCadUsuarios.FieldByName('Data_Cad').AsDateTime);
   edtSenha.Text           := Decrypt_20(cdsCadUsuarios.FieldByName('Senha').AsString);
   edtLogin.Text           := cdsCadUsuarios.FieldByName('login').AsString;
   edtconfirmaSenha.Text   := edtSenha.Text;
   EdtDesc_Maximo.text     := FormatFloat('0.00',cdsCadUsuarios.FieldByName('Desc_maximo').AsFloat);
   cmbPerfil.KeyValue      := cdsCadUsuarios.FieldByName('Cod_Perfil').Asinteger;


   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   //edtDescricao.SetFocus;

end;

procedure TfrmCadUsuarios.btnexcluirClick(Sender: TObject);
begin
   IF cdsCadUsuarios.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o Usuario '+cdsCadUsuarios.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      cdsCadUsuarios.Delete;
      cdsCadUsuarios.ApplyUpdates(-1);
   End;

end;

procedure TfrmCadUsuarios.BtnCancelaClick(Sender: TObject);
begin
  // edtDescricao.Text := '';

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadUsuarios.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
   PagCadastro.ActivePageIndex:=0;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.Text := 'Select * from T_Perfil';

   cdsCadPerfil.Close;
   cdsCadPerfil.ProviderName := dspVariavel.Name;
   cdsCadPerfil.Open;


end;

procedure TfrmCadUsuarios.btntudoClick(Sender: TObject);
begin
   qryCadUsuarios.Close;
   qryCadUsuarios.SQL.Text := 'Select * from T_Usuarios  ';

   cdsCadUsuarios.Close;
   cdsCadUsuarios.ProviderName := dspCadUsuarios.Name;
   cdsCadUsuarios.Open;
end;

procedure TfrmCadUsuarios.cmbNome_FuncionarioChange(Sender: TObject);
var lsTexto : String;
    licont  : Integer;
begin
   if cmbNome_Funcionario.KeyValue <> Null then
   Begin
      edtcod_Funcionario.text := cmbNome_Funcionario.KeyValue;
      lstexto := '';
      for licont := 1 to length(cmbNome_Funcionario.Text) do
      Begin
         if copy(cmbNome_Funcionario.Text,licont,1)<>'' then
            lstexto := lstexto + copy(cmbNome_Funcionario.Text,licont,1)
         Else
            break;
      End;
      edtLogin.text := lstexto; 
   End;
end;

procedure TfrmCadUsuarios.edtCod_FuncionarioExit(Sender: TObject);
begin
   if trim(edtCod_Funcionario.text)<>'' then
   Begin
      cmbNome_Funcionario.KeyValue := StrToInt(edtCod_Funcionario.text);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtCod_Funcionario.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

end.
