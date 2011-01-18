unit uCadGrupos;

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
  TfrmCadGrupos = class(TFormBase)
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
    cdsCadGrupos: TClientDataSet;
    srcCadGrupos: TDataSource;
    dspCadGrupos: TDataSetProvider;
    qryCadGrupos: TSQLQuery;
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
  frmCadGrupos: TfrmCadGrupos;

implementation

uses uPrincipal,Ufuncoes;

{$R *.dfm}

procedure TfrmCadGrupos.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;
procedure TfrmCadGrupos.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'T_Grupos',FrmPrincipal.dbxPrincipal,'',False,4);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadGrupos.btnokClick(Sender: TObject);
begin
   qryCadGrupos.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadGrupos.SQL.text :=' Select * from T_Grupos WHERE Codigo=:parcodigo ';
      qryCadGrupos.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadGrupos.SQL.text :=' Select * from T_Grupos WHERE 1=2';

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

procedure TfrmCadGrupos.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadGrupos.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from T_Grupos '+
                                       'Where Descricao like :parDescricao ';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadGrupos.btnalterarClick(Sender: TObject);
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

procedure TfrmCadGrupos.btnFecharClick(Sender: TObject);
begin
   Close;
end;

end.
