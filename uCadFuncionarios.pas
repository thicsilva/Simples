unit uCadFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, FMTBcd, SqlExpr,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  bsdbctrls, SimpleDS, dxSkinsCore;

type
  TfrmCadFuncionarios = class(TForm)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    dspCadFuncionarios: TDataSetProvider;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
    GridClintes: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qryCadFuncionarios: TSQLQuery;
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
    GridClintesativo: TcxGridDBColumn;
    GridClintesCep: TcxGridDBColumn;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    srcCadSupervisor: TDataSource;
    sdtsCadSupervisor: TSimpleDataSet;
    btnPesquisa: TbsSkinButton;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
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
    cmbNome_Supervisor: TbsSkinDBLookupComboBox;
    cmbCod_Supervisor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    chkAtivo: TbsSkinCheckRadioBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    procedure EdtPesquisaChange(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbCod_SupervisorChange(Sender: TObject);
    procedure cmbNome_SupervisorChange(Sender: TObject);
    procedure LimpaCampos();
  private
   pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFuncionarios: TfrmCadFuncionarios;

implementation

uses uPrincipal,ufuncoes;

procedure TfrmCadFuncionarios.LimpaCampos();
Begin
   EdtDescricao.Text := '';
   edtEndereco.Text  := '';
   EdtBairro.Text    := '';
   edtCidade.Text    := '';
   EdtCep.Text       := '';
   EdtUf.Text        := '';
   EdtCelular.Text   := '';
   edtTelefone.text  := '';
   cmbCod_Supervisor.KeyValue  := null;
   cmbNome_Supervisor.KeyValue := null;
End;



{$R *.dfm}

procedure TfrmCadFuncionarios.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Funcionarios '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;

end;

procedure TfrmCadFuncionarios.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_Funcionarios',FrmPrincipal.dbxPrincipal,'',False,5);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   chkAtivo.Checked := True;
   edtCnpjCpf.SetFocus;
end;

procedure TfrmCadFuncionarios.btnokClick(Sender: TObject);
begin
   qryCadFuncionarios.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadFuncionarios.SQL.text :=' Select * from T_Funcionarios WHERE Codigo=:parcodigo ';
      qryCadFuncionarios.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadFuncionarios.SQL.text :=' Select * from T_Funcionarios WHERE 1=2';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspCadFuncionarios.Name;
   cdsCadFuncionarios.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadFuncionarios.Edit;
      cdsCadFuncionarios.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadFuncionarios.Append;
      cdsCadFuncionarios.FieldByName('Codigo').Asinteger        := StrtoInt(edtCodigo.Text);
      cdsCadFuncionarios.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadFuncionarios.FieldByName('Descricao').AsString      := edtDescricao.Text;
   cdsCadFuncionarios.FieldByName('Endereco').AsString       := edtendereco.Text;
   cdsCadFuncionarios.FieldByName('Cidade').AsString         := edtCidade.Text;
   cdsCadFuncionarios.FieldByName('Bairro').AsString         := edtBairro.Text;
   cdsCadFuncionarios.FieldByName('Uf').AsString             := edtUf.Text;
   cdsCadFuncionarios.FieldByName('Cep').AsString            := edtCep.Text;
   cdsCadFuncionarios.FieldByName('Telefone').AsString       := EdtTelefone.Text;
   cdsCadFuncionarios.FieldByName('Celular').AsString        := EdtCelular.Text;
   cdsCadFuncionarios.FieldByName('Cod_Supervisor').AsInteger:= 1;
   if cmbCod_Supervisor.keyvalue <> null Then
      cdsCadFuncionarios.FieldByName('Cod_Supervisor').AsInteger:= cmbCod_Supervisor.keyvalue;
   cdsCadFuncionarios.FieldByName('CNPJCPF').AsString        := EdtCnpjCpf.text;
   cdsCadFuncionarios.FieldByName('Ativo').AsString          := 'S';
   if not chkAtivo.Checked then
      cdsCadFuncionarios.FieldByName('SAtivo').AsString      := 'N';
   cdsCadFuncionarios.FieldByName('Operador').AsString      := GsOperador;
   cdsCadFuncionarios.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadFuncionarios.Post;

   If cdsCadFuncionarios.ChangeCount > 0  Then // se houve mudancas
      cdsCadFuncionarios.ApplyUpdates(-1);

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   If pvQualBotao = 'ALTERAR' then
      EdtPesquisaChange(EdtPesquisa);

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadFuncionarios.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;


   edtcodigo.Text             := incZero( IntToStr(sdtsPesquisa.FieldByName('Codigo').AsInteger),5);
   edtDescricao.Text          := sdtsPesquisa.FieldByName('Descricao').AsString;
   edtendereco.Text           := sdtsPesquisa.FieldByName('Endereco').AsString;
   edtCidade.Text             := sdtsPesquisa.FieldByName('Cidade').AsString;
   edtBairro.Text             := sdtsPesquisa.FieldByName('Bairro').AsString;
   edtUf.Text                 := sdtsPesquisa.FieldByName('Uf').AsString;
   edtCep.Text                := sdtsPesquisa.FieldByName('Cep').AsString;
   edtCnpjCpf.Text            := sdtsPesquisa.FieldByName('CNPJCPF').AsString;
   EdtTelefone.Text           := sdtsPesquisa.FieldByName('Telefone').AsString;
   EdtCelular.Text            := sdtsPesquisa.FieldByName('Celular').AsString;
   chkAtivo.Checked    := True;
   if sdtsPesquisa.FieldByName('Ativo').AsString = 'N' Then
      chkAtivo.Checked := False;
   cmbCod_Supervisor.KeyValue  := sdtsPesquisa.FieldByName('Cod_Supervisor').AsInteger;
   cmbNome_Supervisor.KeyValue := sdtsPesquisa.FieldByName('Cod_Supervisor').AsInteger;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',sdtsPesquisa.FieldByName('Data_Cad').AsDateTime);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;

end;

procedure TfrmCadFuncionarios.btnexcluirClick(Sender: TObject);
Begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o Professor '+sdtsPesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      sdtsPesquisa.Delete;
      sdtsPesquisa.ApplyUpdates(-1);
   End;
End;

procedure TfrmCadFuncionarios.BtnCancelaClick(Sender: TObject);
begin
   edtDescricao.Text := '';

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadFuncionarios.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadFuncionarios.FormShow(Sender: TObject);
begin

   sdtsCadSupervisor.close;
   sdtsCadSupervisor.DataSet.CommandText := 'Select Codigo, Descricao From T_Funcionarios '+
                                            'Order By Descricao ';
   sdtsCadSupervisor.Open;

   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadFuncionarios.cmbCod_SupervisorChange(Sender: TObject);
begin
   cmbnome_Supervisor.KeyValue := CmbCod_Supervisor.KeyValue;
end;

procedure TfrmCadFuncionarios.cmbNome_SupervisorChange(Sender: TObject);
begin
   cmbCod_Supervisor.KeyValue := CmbNome_Supervisor.KeyValue;
end;

end.
