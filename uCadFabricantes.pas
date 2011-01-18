unit uCadFabricantes;

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
  TfrmCadFabricantes = class(TFormBase)
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
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    cdsCadFabricantes: TClientDataSet;
    srcCadFabricantes: TDataSource;
    dspCadFabricantes: TDataSetProvider;
    qryCadFabricantes: TSQLQuery;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    GridAtividadesCodigo: TcxGridDBColumn;
    GridAtividadesDescricao: TcxGridDBColumn;
    GridAtividadesData_cad: TcxGridDBColumn;
    GridAtividadesData_Atu: TcxGridDBColumn;
    GridAtividadesCod_Emp: TcxGridDBColumn;
    GridAtividadesOperador: TcxGridDBColumn;
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
  frmCadFabricantes: TfrmCadFabricantes;

implementation

uses uPrincipal,Ufuncoes;

{$R *.dfm}

procedure TfrmCadFabricantes.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;
procedure TfrmCadFabricantes.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_Fabricantes',FrmPrincipal.dbxPrincipal,'',False,4);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadFabricantes.btnokClick(Sender: TObject);
begin
   qryCadFabricantes.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadFabricantes.SQL.text :=' Select * from T_Fabricantes WHERE Codigo=:parcodigo ';
      qryCadFabricantes.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadFabricantes.SQL.text :=' Select * from T_Fabricantes WHERE 1=2';

   cdsCadFabricantes.Close;
   cdsCadFabricantes.ProviderName := dspCadFabricantes.Name;
   cdsCadFabricantes.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadFabricantes.Edit;
      cdsCadFabricantes.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadFabricantes.Append;
      cdsCadFabricantes.FieldByName('Codigo').AsString     := edtCodigo.Text;
      cdsCadFabricantes.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadFabricantes.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadFabricantes.FieldByName('Operador').AsString      := GsOperador;
   cdsCadFabricantes.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadFabricantes.Post;

   If cdsCadFabricantes.ChangeCount > 0  Then // se houve mudancas
      cdsCadFabricantes.ApplyUpdates(-1);

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

procedure TfrmCadFabricantes.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadFabricantes.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Fabricantes '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadFabricantes.btnalterarClick(Sender: TObject);
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

procedure TfrmCadFabricantes.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
