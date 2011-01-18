unit uCadOperacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, Grids, DBGrids, DB, ADODB, Buttons,
  EditNew, ExtCtrls, BusinessSkinForm, bsSkinCtrls, Mask, bsSkinBoxCtrls,
  bsSkinGrids, bsDBGrids, bsSkinTabs, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, FMTBcd, SimpleDS,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,UFormBase,
  cxGridCustomView, cxGrid, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCadOperacoes = class(TFormbase)
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    Previsto: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    EdtDescricao: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    cmbTipoDespesa: TbsSkinComboBox;
    Label3: TLabel;
    edtsequencia: TEdit;
    cxGrid1: TcxGrid;
    cxGrid1Level1: TcxGridLevel;
    qryCadOperacoes: TSQLQuery;
    dspCadOperacoes: TDataSetProvider;
    srcCadOperacoes: TDataSource;
    cdsCadOperacoes: TClientDataSet;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    SQLQuery1: TSQLQuery;
    edtMeta: TbsSkinNumericEdit;
    GridOperacoes: TcxGridDBTableView;
    GridOperacoesCodigo: TcxGridDBColumn;
    GridOperacoesDescricao: TcxGridDBColumn;
    GridOperacoesData_cad: TcxGridDBColumn;
    GridOperacoesData_Atu: TcxGridDBColumn;
    GridOperacoesCod_Emp: TcxGridDBColumn;
    GridOperacoesOperador: TcxGridDBColumn;
    btnPesquisar: TbsSkinButton;
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
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure QryCadTipoDespesasAfterOpen(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    Procedure limpaCasmpos();
  private
    pvQualBotao :String;
  public
    { Public declarations }
  end;

var
  frmCadOperacoes: TfrmCadOperacoes;

implementation
uses uprincipal, ufuncoes;

{$R *.dfm}
Procedure TfrmCadOperacoes.limpaCasmpos();
Begin
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   cmbTipoDespesa.ItemIndex := -1;
   edtMeta.TEXT       := '0,00';
End;

procedure TfrmCadOperacoes.FormShow(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex := 0;
end;

procedure TfrmCadOperacoes.BtnIncluirClick(Sender: TObject);
begin
   pvQualBotao:='INCLUIR';

   EdtCodigo.Text := Sequencia('Codigo',False,'T_Operacoes',FrmPrincipal.dbxPrincipal,'',False,4);

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   limpaCasmpos();

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.SetFocus;
end;

procedure TfrmCadOperacoes.BtnAlterarClick(Sender: TObject);
begin
   pvQualBotao:='ALTERAR';

   edtsequencia.Text := sdtsPesquisa.fieldByName('Sequencia').AsString;

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;

   PagCadastro.ActivePageIndex:=1;
   EdtCodigo.Text     := sdtsPesquisa.fieldByName('Codigo').AsString;
   EdtDescricao.Text  := sdtsPesquisa.fieldByName('Descricao').AsString;
   EdtMeta.Text       := FormatFloat('0.00',sdtsPesquisa.fieldByName('Meta').AsFloat );
   cmbTipoDespesa.ItemIndex   := (sdtsPesquisa.fieldByName('Tipo_conta').Asinteger);

   EdtCodigo.SetFocus;

end;

procedure TfrmCadOperacoes.BtnOkClick(Sender: TObject);
begin
   if cmbTipoDespesa.ItemIndex = -1 Then
   Begin
      CaixaMensagem( 'Selecione um tipo de Despesa ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   qryCadOperacoes.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadOperacoes.SQL.text :=' Select * from T_Operacoes WHERE Codigo=:parcodigo ';
      qryCadOperacoes.ParamByName('parcodigo').AsString := sdtsPesquisa.fieldByName('Codigo').AsString;
   End
   Else
      qryCadOperacoes.SQL.text :=' Select * from T_Operacoes WHERE 1=2';

   cdsCadOperacoes.Close;
   cdsCadOperacoes.ProviderName := dspCadOperacoes.Name;
   cdsCadOperacoes.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadOperacoes.Edit;
      cdsCadOperacoes.FieldByName('Data_Atu').AsDateTime := Now;
      cdsCadOperacoes.FieldByName('Codigo').AsString     := edtCodigo.Text;
   End
   Else
   Begin
      cdsCadOperacoes.Append;
      cdsCadOperacoes.FieldByName('Codigo').AsString     := edtCodigo.Text;
      cdsCadOperacoes.FieldByName('Sequencia').AsInteger := StrToInt(Sequencia('Sequencia',False,'T_Operacoes',FrmPrincipal.dbxPrincipal,'',False,8));
      cdsCadOperacoes.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadOperacoes.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadOperacoes.FieldByName('Operador').AsString      := GsOperador;
   cdsCadOperacoes.FieldByName('Cod_Emp').AsString       := gsCod_Emp;
   cdsCadOperacoes.FieldByName('Meta').AsFloat           := StrTofloat(edtmeta.Text);
   cdsCadOperacoes.FieldByName('Tipo_Conta').AsInteger   := cmbTipoDespesa.ItemIndex; // 0 - Debito 1 Credito

   cdsCadOperacoes.Post;

   If cdsCadOperacoes.ChangeCount > 0  Then // se houve mudancas
      cdsCadOperacoes.ApplyUpdates(-1);

   If pvQualBotao = 'ALTERAR' then
      edtPesquisaChange(edtPesquisa);


   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;

   limpaCasmpos();
   
   PagCadastro.ActivePageIndex:=0;
end;

procedure TfrmCadOperacoes.BtnCancelaClick(Sender: TObject);
begin
   BtnOk.Enabled      :=False;
   BtnCancela.Enabled :=False;
   BtnIncluir.Enabled :=True;
   BtnAlterar.Enabled :=True;
   BtnExcluir.Enabled :=True;
   PagCadastro.ActivePageIndex:=0;
   limpaCasmpos();
end;

procedure TfrmCadOperacoes.BtnExcluirClick(Sender: TObject);
begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Confirma exclusão da Operacao '+
                    sdtsPesquisa.fieldByName('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  then
   Begin
      sdtsPesquisa.Delete;
      sdtsPesquisa.ApplyUpdates(-1);
   End;
end;

procedure TfrmCadOperacoes.QryCadTipoDespesasAfterOpen(
  DataSet: TDataSet);
  Var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;

end;

procedure TfrmCadOperacoes.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmCadOperacoes.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Operacoes '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;


end.
