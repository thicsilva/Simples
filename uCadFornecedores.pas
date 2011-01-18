unit uCadFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, FMTBcd, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  bsdbctrls, SimpleDS,ConfigUtils,uformBase;

type
  TfrmCadFornecedores = class(TFormBase)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    cmbtipoconsulta: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    dspCadFornecedores: TDataSetProvider;
    cdsCadFornecedores: TClientDataSet;
    srcCadFornecedores: TDataSource;
    dspVariavel: TDataSetProvider;
    GridClintes: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryvariavel: TSQLQuery;
    qryCadFornecedores: TSQLQuery;
    GridClintesCodigo: TcxGridDBColumn;
    GridClintesDescricao: TcxGridDBColumn;
    GridClintesCNPJCPF: TcxGridDBColumn;
    GridClintesEndereco: TcxGridDBColumn;
    GridClintesBairro: TcxGridDBColumn;
    GridClintesCidade: TcxGridDBColumn;
    GridClintesUF: TcxGridDBColumn;
    GridClintesTelefone: TcxGridDBColumn;
    GridClintescelular: TcxGridDBColumn;
    GridClintesOperador: TcxGridDBColumn;
    GridClintesData_Cad: TcxGridDBColumn;
    GridClintesData_Atu: TcxGridDBColumn;
    GridClintesStatus: TcxGridDBColumn;
    GridClintesativo: TcxGridDBColumn;
    GridClintesCep: TcxGridDBColumn;
    srcPesquisa: TDataSource;
    cdsVendas: TClientDataSet;
    cdsItensVendas: TClientDataSet;
    srcItensVendas: TDataSource;
    srcVendas: TDataSource;
    srcCtasReceber: TDataSource;
    cdsCtasReceber: TClientDataSet;
    qryPesquisa: TSQLQuery;
    dspPesquisa: TDataSetProvider;
    cdspesquisa: TClientDataSet;
    btnSelecionar: TbsSkinButton;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    lblCNPJCPF: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    edtCep: TbsSkinEdit;
    edtEndereco: TbsSkinEdit;
    edtCidade: TbsSkinEdit;
    edtUf: TbsSkinEdit;
    edtTelefone: TbsSkinEdit;
    edtCelular: TbsSkinEdit;
    edtCnpjCpf: TbsSkinEdit;
    chkClienteAtivo: TbsSkinCheckRadioBox;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LimpaCampos();
    procedure edtCnpjCpfExit(Sender: TObject);
    procedure edtCnpjCpfEnter(Sender: TObject);
    procedure GridClintesDblClick(Sender: TObject);
    procedure edtEnderecoExit(Sender: TObject);
    procedure EdtPesquisaExit(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
   pvQualBotao         : String;
   FFonts              : TFonts;
   FCustomDrawingStyle : TCustomDrawingStyleArr;
   FColorScheme        : TColorSchemes;
   FGridBrushMasterCell: TBrush;
   { Private declarations }
  public
    pvsCNPJCPF    : String;
    piCod_Produto : Integer;
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

uses uPrincipal,ufuncoes;

procedure TfrmCadFornecedores.LimpaCampos();
Begin
   EdtDescricao.Text := '';
   edtEndereco.Text  := '';
   EdtBairro.Text    := '';
   edtdata_Cad.Text  := '';
   edtCidade.Text    := '';
   EdtCep.Text       := '';
   EdtUf.Text        := '';
   EdtCelular.Text   := '';
   edtTelefone.text  := '';
   pvsCNPJCPF        := '';
   edtCnpjCpf.Text   := '';
End;



{$R *.dfm}

procedure TfrmCadFornecedores.EdtPesquisaExit(Sender: TObject);
var lscopia : String;
begin

   if cmbtipoconsulta.ItemIndex = 1 then
   Begin

      EdtPesquisa.EditMask := '';
      EdtPesquisa.Text     := SubstString( Trim( EdtPesquisa.Text ), ';,/-.', '' );

      If Trim( pvsCNPJCPF ) <> EdtPesquisa.Text Then
      Begin
         lsCopia := VerCopia( EdtPesquisa.Text, 'CNPJCPF', 'T_Fornecedores', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
         If lsCopia <> '' Then
         Begin
            CaixaMensagem( 'Este CNPJ/CPF já está cadastrado no código ' + lsCopia, ctAviso, [ cbOk ], 0 );
            Exit;
         End;
      End;

      if Length( EdtPesquisa.Text ) <= 11 then
      begin
         lblCNPJCPF.Caption   := 'C.P.F.';
         EdtPesquisa.EditMask := '###.###.###-##;0;_';

         if not CPF_Check( EdtPesquisa.Text ) then
         begin
            EdtPesquisa.EditMask := '';
            EdtPesquisa.SetFocus;
            //CaixaMensagem( 'CPF ' + Trim( EdtPesquisa.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
            exit;
         end;
      end
      else
      begin
         lblCNPJCPF.Caption   := 'C.N.P.J.';
         EdtPesquisa.EditMask := '##.###.###/####-##;0;_';

         if not CNPJ_Check( EdtPesquisa.Text ) then
         begin
            EdtPesquisa.EditMask := '';
            EdtPesquisa.SetFocus;
            //CaixaMensagem( 'CNPJ ' + Trim( EdtPesquisa.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
   End;
end;

procedure TfrmCadFornecedores.EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if KEY=13 then
      btnSelecionarClick(btnSelecionar);
end;

procedure TfrmCadFornecedores.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text      := Sequencia('Codigo',False,'T_Fornecedores',FrmPrincipal.dbxPrincipal,'',False,5);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   chkClienteAtivo.Checked := True;
   edtCnpjCpf.SetFocus;
end;

procedure TfrmCadFornecedores.btnokClick(Sender: TObject);
begin
   if Trim(edtcnpjcpf.text)='' then
   begin
      CaixaMensagem( 'O CPF/CNPJ Não pode ser vazio ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   qryCadFornecedores.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadFornecedores.SQL.text :=' Select * from T_Fornecedores WHERE Codigo=:parcodigo ';
      qryCadFornecedores.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadFornecedores.SQL.text :=' Select * from T_Fornecedores WHERE 1=2';

   cdsCadFornecedores.Close;
   cdsCadFornecedores.ProviderName := dspCadFornecedores.Name;
   cdsCadFornecedores.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadFornecedores.Edit;
      cdsCadFornecedores.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadFornecedores.Append;
      cdsCadFornecedores.FieldByName('Codigo').Asinteger        := StrtoInt(edtCodigo.Text);
      cdsCadFornecedores.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadFornecedores.FieldByName('Descricao').AsString      := edtDescricao.Text;
   cdsCadFornecedores.FieldByName('Endereco').AsString       := edtendereco.Text;
   cdsCadFornecedores.FieldByName('Cidade').AsString         := edtCidade.Text;
   cdsCadFornecedores.FieldByName('Bairro').AsString         := edtBairro.Text;
   cdsCadFornecedores.FieldByName('Uf').AsString             := edtUf.Text;
   cdsCadFornecedores.FieldByName('Cep').AsString            := edtCep.Text;
   cdsCadFornecedores.FieldByName('Telefone').AsString       := EdtTelefone.Text;
   cdsCadFornecedores.FieldByName('Celular').AsString        := EdtCelular.Text;
   cdsCadFornecedores.FieldByName('Operador').AsString       := gsOperador;
   cdsCadFornecedores.FieldByName('CNPJCPF').AsString        := EdtCnpjCpf.text;
   cdsCadFornecedores.FieldByName('Ativo').AsString          := 'S';
   if not chkClienteAtivo.Checked then
      cdsCadFornecedores.FieldByName('Ativo').AsString      := 'N';
   cdsCadFornecedores.FieldByName('Operador').AsString      := GsOperador;
   cdsCadFornecedores.FieldByName('Cod_Emp').AsString       := gsCod_Emp;
   cdsCadFornecedores.Post;

   If cdsCadFornecedores.ChangeCount > 0  Then // se houve mudancas
      cdsCadFornecedores.ApplyUpdates(-1);

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   If pvQualBotao = 'ALTERAR' then
      btnSelecionarClick(btnSelecionar);

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadFornecedores.btnSelecionarClick(Sender: TObject);
var lsCoringa : String;
    lswhere   : String;
begin
//   toobar.SetFocus;

   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   lswhere := 'Where Descricao like :parDescricao ';
   IF cmbtipoconsulta.ItemIndex = 1 Then
   Begin
      lswhere := 'Where cnpjcpf =:parDescricao ';
      lsCoringa := '';
   End;

   qrypesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.sql.text := 'Select * from T_Fornecedores '+lswhere ;
   IF cmbtipoconsulta.ItemIndex = 0 Then
      qryPesquisa.ParamByName('parDescricao').AsString    := lsCoringa+EdtPesquisa.Text+'%';
   IF cmbtipoconsulta.ItemIndex = 1 Then
      qryPesquisa.ParamByName('parDescricao').AsString := EdtPesquisa.Text;
   cdspesquisa.Close;
   cdspesquisa.ProviderName :=dspPEsquisa.Name;
   cdspesquisa.Open;

   if cdsPesquisa.IsEmpty then
      CaixaMensagem( 'Cliente não encontrado ', ctAviso, [ cbOk ], 0 );
end;

procedure TfrmCadFornecedores.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF cdspesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   PagCadastro.ActivePageIndex:=1;


   edtcodigo.Text             := incZero( IntToStr(cdspesquisa.FieldByName('Codigo').AsInteger),5);
   edtDescricao.Text          := cdspesquisa.FieldByName('Descricao').AsString;
   edtendereco.Text           := cdspesquisa.FieldByName('Endereco').AsString;
   edtCidade.Text             := cdspesquisa.FieldByName('Cidade').AsString;
   edtBairro.Text             := cdspesquisa.FieldByName('Bairro').AsString;
   edtUf.Text                 := cdspesquisa.FieldByName('Uf').AsString;
   edtCep.Text                := cdspesquisa.FieldByName('Cep').AsString;
   edtCnpjCpf.Text            := cdspesquisa.FieldByName('CNPJCPF').AsString;
   pvsCNPJCPF                 := cdspesquisa.FieldByName('CNPJCPF').AsString;
   EdtTelefone.Text           := cdspesquisa.FieldByName('Telefone').AsString;
   EdtCelular.Text            := cdspesquisa.FieldByName('Celular').AsString;
   chkClienteAtivo.Checked    := True;
   if cdspesquisa.FieldByName('Ativo').AsString = 'N' Then
      chkClienteAtivo.Checked := False;
   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',cdspesquisa.FieldByName('Data_Cad').AsDateTime);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   try
//      edtDescricao.SetFocus;
   Except
   end;

end;

procedure TfrmCadFornecedores.btnexcluirClick(Sender: TObject);
begin
   IF cdspesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o forma de pagamento '+cdspesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      cdspesquisa.Delete;
      cdspesquisa.ApplyUpdates(-1);
   End;
   btnselecionarClick(btnSelecionar);
end;

procedure TfrmCadFornecedores.BtnCancelaClick(Sender: TObject);
begin
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;
   LimpaCampos();
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadFornecedores.btnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadFornecedores.FormShow(Sender: TObject);
begin
   PagCadastro.ActivePageIndex:=0;
   piCod_Produto  := 0;
end;

procedure TfrmCadFornecedores.edtCnpjCpfExit(Sender: TObject);
var lsCopia : String;
begin
   edtCNPJCPF.EditMask := '';
   edtCNPJCPF.Text     := SubstString( Trim( edtCNPJCPF.Text ), ';,/-.', '' );

   If Trim( pvsCNPJCPF ) <> edtCNPJCPF.Text Then
   Begin
      lsCopia := VerCopia( edtCNPJCPF.Text, 'CNPJCPF', 'T_Fornecedores', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
      If lsCopia <> '' Then
      Begin
         CaixaMensagem( 'Este CNPJ/CPF já está cadastrado no código ' + lsCopia, ctAviso, [ cbOk ], 0 );
         Exit;
      End;
   End;

   if Length( edtCNPJCPF.Text ) <= 11 then
   begin
      lblCNPJCPF.Caption   := 'C.P.F.';
      edtCNPJCPF.EditMask := '###.###.###-##;0;_';

      if not CPF_Check( edtCNPJCPF.Text ) then
      begin
         CaixaMensagem( 'CPF ' + Trim( edtCNPJCPF.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
         exit;
      end;
     {
      if Trim( edtInscEst.Text ) <> 'ISENTO' then
      begin
         if CaixaMensagem( 'Deseja preencher a Inscrição Estadual com "ISENTO" ?', ctConfirma, [ cbSimNao ], 0 ) then
            edtInscEst.Text := 'ISENTO';
      end;
      }
   end
   else
   begin
      lblCNPJCPF.Caption   := 'C.N.P.J.';
      edtCNPJCPF.EditMask := '##.###.###/####-##;0;_';

      if not CNPJ_Check( edtCNPJCPF.Text ) then
      begin
         CaixaMensagem( 'CNPJ ' + Trim( edtCNPJCPF.Text ) + ' inválido', ctAviso, [ cbOk ], 0 );
         exit;
      end;
   end;
end;

procedure TfrmCadFornecedores.edtEnderecoExit(Sender: TObject);
VAR lsCopia : String;
begin
   lsCopia := VerCopia( Trim(edtEndereco.Text), 'Endereco', 'T_Fornecedores', frmPrincipal.dbxPrincipal, gsCod_Emp, 'Codigo' );
   If lsCopia <> '' Then
      CaixaMensagem( 'Endereco já cadastrado código ' + inczero(lsCopia,5), ctAviso, [ cbOk ], 0 );
end;

procedure TfrmCadFornecedores.edtCnpjCpfEnter(Sender: TObject);
begin
   edtCNPJCPF.EditMask := '';
   edtCNPJCPF.SelectAll;
end;

procedure TfrmCadFornecedores.GridClintesDblClick(Sender: TObject);
begin
   if frmcadFornecedores.Tag=5 Then
   Begin
      piCod_Produto := cdspesquisa.FieldByName('Codigo').AsInteger;
      Close;
   End;
end;

end.

