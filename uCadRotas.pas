unit uCadRotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, bsSkinCtrls, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, bsSkinBoxCtrls,
  Buttons, ComCtrls, bsSkinTabs, ExtCtrls, ToolWin, BusinessSkinForm,
  FMTBcd, SqlExpr, Provider, DBClient, SimpleDS,UformBase, dxSkinsCore;

type
  TfrmCadRotas = class(TFormBase)
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
    cdsCadRotas: TClientDataSet;
    srcCadRotas: TDataSource;
    dspCadRotas: TDataSetProvider;
    qryCadRotas: TSQLQuery;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    GridAtividadesCodigo: TcxGridDBColumn;
    GridAtividadesDescricao: TcxGridDBColumn;
    GridAtividadesData_cad: TcxGridDBColumn;
    GridAtividadesData_Atu: TcxGridDBColumn;
    GridAtividadesCod_Emp: TcxGridDBColumn;
    GridAtividadesOperador: TcxGridDBColumn;
    btnSelecionar: TbsSkinButton;
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
  frmCadRotas: TfrmCadRotas;

implementation

uses uPrincipal,Ufuncoes;

{$R *.dfm}

procedure TfrmCadRotas.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;
procedure TfrmCadRotas.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_Rotas',FrmPrincipal.dbxPrincipal,'',False,3);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadRotas.btnokClick(Sender: TObject);
begin
   qryCadRotas.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadRotas.SQL.text :=' Select * from T_Rotas WHERE Codigo=:parcodigo ';
      qryCadRotas.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadRotas.SQL.text :=' Select * from T_Rotas WHERE 1=2';

   cdsCadRotas.Close;
   cdsCadRotas.ProviderName := dspCadRotas.Name;
   cdsCadRotas.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadRotas.Edit;
      cdsCadRotas.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadRotas.Append;
      cdsCadRotas.FieldByName('Codigo').Asinteger        := StrtoInt(edtCodigo.Text);
      cdsCadRotas.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadRotas.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadRotas.FieldByName('Operador').AsString      := GsOperador;
   cdsCadRotas.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadRotas.Post;

   If cdsCadRotas.ChangeCount > 0  Then // se houve mudancas
      cdsCadRotas.ApplyUpdates(-1);

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

procedure TfrmCadRotas.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadRotas.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Rotas '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadRotas.btnalterarClick(Sender: TObject);
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

procedure TfrmCadRotas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
