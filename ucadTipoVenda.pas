unit ucadTipoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Mask, bsSkinBoxCtrls, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin,UformBase, FMTBcd, SqlExpr, Provider, DBClient,
  SimpleDS, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmCadtipoVenda = class(TFormBase)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    btnPesquisar: TbsSkinButton;
    cxGrid1: TcxGrid;
    GridAtividades: TcxGridDBTableView;
    GridAtividadesCodigo: TcxGridDBColumn;
    GridAtividadesDescricao: TcxGridDBColumn;
    GridAtividadesData_cad: TcxGridDBColumn;
    GridAtividadesData_Atu: TcxGridDBColumn;
    GridAtividadesCod_Emp: TcxGridDBColumn;
    GridAtividadesOperador: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinExPanel1: TbsSkinExPanel;
    edtCodigo: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    srcPesquisa: TDataSource;
    sdtsPesquisa: TSimpleDataSet;
    cdsCadGrupos: TClientDataSet;
    srcCadGrupos: TDataSource;
    dspCadGrupos: TDataSetProvider;
    qryCadGrupos: TSQLQuery;
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
    procedure btnalterarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure LimpaCampos();
    procedure EdtPesquisaChange(Sender: TObject);
  private
    pvQualBotao : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadtipoVenda: TfrmCadtipoVenda;

implementation

uses ufuncoes, uprincipal;
{$R *.dfm}

procedure TfrmCadtipoVenda.btnalterarClick(Sender: TObject);
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

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;
end;

procedure TfrmCadtipoVenda.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadtipoVenda.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadtipoVenda.btnincluirClick(Sender: TObject);
begin
    pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_tipoVendas',FrmPrincipal.dbxPrincipal,'',False,4);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadtipoVenda.btnokClick(Sender: TObject);
begin
   qryCadGrupos.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadGrupos.SQL.text :=' Select * from T_tipoVendas WHERE Codigo=:parcodigo ';
      qryCadGrupos.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadGrupos.SQL.text :=' Select * from T_tipoVendas WHERE 1=2';

   cdsCadGrupos.Close;
   cdsCadGrupos.ProviderName := dspCadGrupos.Name;
   cdsCadGrupos.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadGrupos.Edit;
      cdsCadGrupos.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadGrupos.Append;
      cdsCadGrupos.FieldByName('Codigo').AsString     := edtCodigo.Text;
      cdsCadGrupos.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadGrupos.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadGrupos.FieldByName('Operador').AsString      := GsOperador;
   cdsCadGrupos.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadGrupos.Post;

   If cdsCadGrupos.ChangeCount > 0  Then // se houve mudancas
      cdsCadGrupos.ApplyUpdates(-1);

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

procedure TfrmCadtipoVenda.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_TipoVendas '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadtipoVenda.LimpaCampos;
begin
   EdtDescricao.Text := '';
end;

end.
