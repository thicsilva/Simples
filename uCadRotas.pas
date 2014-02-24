unit uCadRotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, bsSkinCtrls, StdCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Mask, bsSkinBoxCtrls,
  Buttons, ComCtrls, bsSkinTabs, ExtCtrls, ToolWin, BusinessSkinForm,
  FMTBcd, SqlExpr, Provider, DBClient, SimpleDS,UformBase, dxSkinsCore,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

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
    bsSkinTabSheet3: TbsSkinTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bsSkinPanel2: TbsSkinPanel;
    lblCliente: TbsSkinLabel;
    SequenciaEntrega: TbsSkinSpinEdit;
    btnAdicionarAnimal: TbsSkinButton;
    srcClientesRotas: TDataSource;
    cdsClientesRotas: TClientDataSet;
    cdsClientesRotasCodigo: TIntegerField;
    cdsClientesRotasDescricao: TStringField;
    cdsClientesRotasBairro: TStringField;
    cdsClientesRotasCidade: TStringField;
    cdsClientesRotasSequenciaEntrega: TIntegerField;
    bsSkinButton1: TbsSkinButton;
    procedure btnincluirClick(Sender: TObject);
    procedure LimpaCampos();
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure pagCadastroChange(Sender: TObject);
    procedure cdsClientesRotasAfterScroll(DataSet: TDataSet);
    procedure btnAdicionarAnimalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
     pvQualBotao : String;
    procedure AtualizaClientesRotas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRotas: TfrmCadRotas;

implementation

uses uPrincipal,Ufuncoes,uDaoRota,uDaoCliente;

{$R *.dfm}

procedure TfrmCadRotas.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;
procedure TfrmCadRotas.pagCadastroChange(Sender: TObject);
begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
  AtualizaClientesRotas;
end;

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

procedure TfrmCadRotas.cdsClientesRotasAfterScroll(DataSet: TDataSet);
begin
   lblCliente.Caption := cdsClientesRotas.FieldByName('descricao').AsString;
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

procedure TfrmCadRotas.FormShow(Sender: TObject);
begin
  inherited;
  pagCadastro.ActivePageIndex := 0;
end;

procedure TfrmCadRotas.bsSkinButton1Click(Sender: TObject);
begin
   IF cdsClientesRotas.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   //RelClientesDaRota.ShowReport;
end;

procedure TfrmCadRotas.btnAdicionarAnimalClick(Sender: TObject);
var DaoCliente : TDaoCliente;
    ClienteId : Integer;
begin
   DaoCliente := TDaoCliente.Create(gConexao);
   ClienteId := cdsClientesRotas.FieldByName('Codigo').AsInteger;
   if cdsClientesRotas.locate('SequenciaEntrega',StrtointDef(SequenciaEntrega.Text,0),[]) then
   begin
      DaoCliente.AtualizarSequencia(ClienteId,StrToint(SequenciaEntrega.Text));
      while not cdsClientesRotas.eof do
      begin
         DaoCliente.AtualizarSequencia(cdsClientesRotas.FieldByName('Codigo').AsInteger,cdsClientesRotas.FieldByName('Sequenciaentrega').AsInteger+1);
         cdsClientesRotas.Next;
      end;
   end
   else
     DaoCliente.AtualizarSequencia(ClienteId,StrToint(SequenciaEntrega.Text));
   FreeAndNil(DaoCliente);
   AtualizaClientesRotas;
end;

procedure TfrmCadRotas.AtualizaClientesRotas;
var
  DaoRota: TDaoRota;
begin
  case pagCadastro.ActivePageIndex of
    2:
      begin
        DaoRota := TDaoRota.Create(gConexao);
        cdsClientesRotas.data := DaoRota.BuscarClientesDarota(sdtsPesquisa.FieldByName('Codigo').AsInteger).Data;
        FreeAndNil(DaoRota);
      end;
  end;
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
