unit uCadCaixas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Mask, bsSkinBoxCtrls, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin, FMTBcd, SimpleDS, DBClient, Provider, SqlExpr,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmCadCaixas = class(TForm)
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
    bsSkinBevel3: TbsSkinBevel;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    btnPesquisar: TbsSkinButton;
    cxGrid1: TcxGrid;
    GridConsulta: TcxGridDBTableView;
    GridConsultaCodigo: TcxGridDBColumn;
    GridConsultaDescricao: TcxGridDBColumn;
    GridConsultaData_cad: TcxGridDBColumn;
    GridConsultaData_Atu: TcxGridDBColumn;
    GridConsultaCod_Emp: TcxGridDBColumn;
    GridConsultaOperador: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    qryCadCaixas: TSQLQuery;
    dspCadCaixas: TDataSetProvider;
    srcCadCaixas: TDataSource;
    cdsCadCaixas: TClientDataSet;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtDataMovCaixa: TbsSkinDateEdit;
    procedure btnincluirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
  private
    procedure LimpaCampos;
    { Private declarations }
  public
    pvQualBotao:string;
    { Public declarations }
  end;

var
  frmCadCaixas: TfrmCadCaixas;

implementation

uses uFuncoes,uPrincipal;

{$R *.dfm}

procedure TfrmCadCaixas.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   edtcodigo.Text             := incZero(sdtsPesquisa.FieldByName('Codigo').AsString,4);

   edtDescricao.Text          := sdtsPesquisa.FieldByName('Descricao').AsString;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',sdtsPesquisa.FieldByName('Data_Cad').AsDateTime);
   edtDataMovCaixa.text := FormatDateTime('dd/mm/yyyy',sdtsPesquisa.FieldByName('DataMovimento').AsDateTime);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;
end;

procedure TfrmCadCaixas.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadCaixas.btnexcluirClick(Sender: TObject);
begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o Cliente '+sdtsPesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      sdtsPesquisa.Delete;
      sdtsPesquisa.ApplyUpdates(-1);
   End;

end;

procedure TfrmCadCaixas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadCaixas.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'Caixas',FrmPrincipal.dbxPrincipal,'',False,4);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadCaixas.btnokClick(Sender: TObject);
begin
   qryCadCaixas.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadCaixas.SQL.text :=' Select * from Caixas WHERE Codigo=:parcodigo ';
      qryCadCaixas.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadCaixas.SQL.text :=' Select * from Caixas WHERE 1=2';

   cdsCadCaixas.Close;
   cdsCadCaixas.ProviderName := dspCadCaixas.Name;
   cdsCadCaixas.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadCaixas.Edit;
      cdsCadCaixas.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadCaixas.Append;
      cdsCadCaixas.FieldByName('Codigo').AsString     := edtCodigo.Text;
      cdsCadCaixas.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadCaixas.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadCaixas.FieldByName('Operador').AsString      := GsOperador;
   cdsCadCaixas.FieldByName('DataMovimento').AsDateTime := Strtodate(edtDataMovCaixa.Text);
   cdsCadCaixas.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadCaixas.Post;

   If cdsCadCaixas.ChangeCount > 0  Then // se houve mudancas
      cdsCadCaixas.ApplyUpdates(-1);

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

procedure TfrmCadCaixas.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from Caixas '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadCaixas.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;


end.
