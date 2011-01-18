unit uCadAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, bsSkinCtrls, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, bsSkinBoxCtrls,
  Buttons, ComCtrls, bsSkinTabs, ExtCtrls, ToolWin, BusinessSkinForm,
  FMTBcd, SqlExpr, Provider, DBClient, SimpleDS,UformBase, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfrmCadAtividades = class(TFormBase)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    cxGrid1: TcxGrid;
    GridAtividades: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    cdsCadAtividades: TClientDataSet;
    srcCadAtividades: TDataSource;
    dspCadAtividades: TDataSetProvider;
    qryCadAtividades: TSQLQuery;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    GridAtividadesCodigo: TcxGridDBColumn;
    GridAtividadesDescricao: TcxGridDBColumn;
    GridAtividadesData_cad: TcxGridDBColumn;
    GridAtividadesData_Atu: TcxGridDBColumn;
    GridAtividadesCod_Emp: TcxGridDBColumn;
    GridAtividadesOperador: TcxGridDBColumn;
    btnPesquisar: TbsSkinButton;
    bsSkinExPanel1: TbsSkinExPanel;
    edtCodigo: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
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
    procedure btnincluirClick(Sender: TObject);
    procedure LimpaCampos();
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
     pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAtividades: TfrmCadAtividades;

implementation

uses uPrincipal,Ufuncoes;

{$R *.dfm}

procedure TFrmCadAtividades.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;
procedure TfrmCadAtividades.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_Atividades',FrmPrincipal.dbxPrincipal,'',False,3);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadAtividades.btnokClick(Sender: TObject);
begin
   qryCadAtividades.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadAtividades.SQL.text :=' Select * from T_Atividades WHERE Codigo=:parcodigo ';
      qryCadAtividades.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadAtividades.SQL.text :=' Select * from T_Atividades WHERE 1=2';

   cdsCadAtividades.Close;
   cdsCadAtividades.ProviderName := dspCadAtividades.Name;
   cdsCadAtividades.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadAtividades.Edit;
      cdsCadAtividades.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadAtividades.Append;
      cdsCadAtividades.FieldByName('Codigo').Asinteger        := StrtoInt(edtCodigo.Text);
      cdsCadAtividades.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadAtividades.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadAtividades.FieldByName('Operador').AsString      := GsOperador;
   cdsCadAtividades.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadAtividades.Post;

   If cdsCadAtividades.ChangeCount > 0  Then // se houve mudancas
      cdsCadAtividades.ApplyUpdates(-1);

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

procedure TfrmCadAtividades.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadAtividades.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Atividades '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadAtividades.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   edtcodigo.Text             := incZero( IntToStr(sdtsPesquisa.FieldByName('Codigo').AsInteger),5);

   edtDescricao.Text          := sdtsPesquisa.FieldByName('Descricao').AsString;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',sdtsPesquisa.FieldByName('Data_Cad').AsDateTime);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;

end;

procedure TfrmCadAtividades.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
