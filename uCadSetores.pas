unit uCadSetores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Mask, bsSkinBoxCtrls, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin, FMTBcd, SimpleDS, DBClient, Provider, SqlExpr,
  bsSkinGrids, bsDBGrids, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmCadSetores = class(TForm)
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
    PagCadastro: TbsSkinPageControl;
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
    qryCadSetores: TSQLQuery;
    dspCadSetores: TDataSetProvider;
    srcCadSetores: TDataSource;
    cdsCadSetores: TClientDataSet;
    sdtsPesquisa: TSimpleDataSet;
    srcPesquisa: TDataSource;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsSkinDBGrid1: TbsSkinDBGrid;
    srcSaldosSetor: TDataSource;
    pnlSetor: TPanel;
    bsSkinPanel2: TbsSkinPanel;
    cmbtipoconsulta: TbsSkinComboBox;
    edtPesquisa2: TbsSkinEdit;
    procedure btnincluirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure EdtPesquisaChange(Sender: TObject);
    procedure PagCadastroChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisa2Change(Sender: TObject);
  private
    procedure LimpaCampos;
    { Private declarations }
  public
    pvQualBotao:string;
    { Public declarations }
  end;

var
  frmCadSetores: TfrmCadSetores;

implementation

uses uFuncoes,uPrincipal;

{$R *.dfm}

procedure TfrmCadSetores.btnalterarClick(Sender: TObject);
begin
   pvQualBotao := 'ALTERAR';

   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   edtcodigo.Text             := incZero(sdtsPesquisa.FieldByName('Codigo').AsString,4);

   if edtcodigo.Text='0001' then
   begin
      CaixaMensagem( 'O setor 0001 não pode ser alterado ', ctAviso, [ cbOk ], 0 );
      Exit
   end;


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

procedure TfrmCadSetores.BtnCancelaClick(Sender: TObject);
begin

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;

   LimpaCampos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadSetores.btnexcluirClick(Sender: TObject);
begin
   IF sdtsPesquisa.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if edtcodigo.Text='0001' then
   begin
      CaixaMensagem( 'O setor 0001 não pode ser Excluido ', ctAviso, [ cbOk ], 0 );
      Exit
   end;

   if CaixaMensagem( 'Deseja Exclir o Cliente '+sdtsPesquisa.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      sdtsPesquisa.Delete;
      sdtsPesquisa.ApplyUpdates(-1);
   End;

end;

procedure TfrmCadSetores.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadSetores.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';

   LimpaCampos();

   edtCodigo.Text := Sequencia('Codigo',False,'Setores',FrmPrincipal.dbxPrincipal,'',False,4);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtDescricao.SetFocus;

end;

procedure TfrmCadSetores.btnokClick(Sender: TObject);
begin
   qryCadSetores.Close;
   If pvQualBotao = 'ALTERAR' then
   Begin
      qryCadSetores.SQL.text :=' Select * from Setores WHERE Codigo=:parcodigo ';
      qryCadSetores.ParamByName('parcodigo').Asinteger := StrtoInt(edtCodigo.Text);
   End
   Else
      qryCadSetores.SQL.text :=' Select * from Setores WHERE 1=2';

   cdsCadSetores.Close;
   cdsCadSetores.ProviderName := dspCadSetores.Name;
   cdsCadSetores.Open;

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadSetores.Edit;
      cdsCadSetores.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadSetores.Append;
      cdsCadSetores.FieldByName('Codigo').AsString     := edtCodigo.Text;
      cdsCadSetores.FieldByName('Data_Cad').AsDateTime := Now;
   End;
   cdsCadSetores.FieldByName('Descricao').AsString     := edtDescricao.Text;
   cdsCadSetores.FieldByName('Operador').AsString      := GsOperador;
   cdsCadSetores.FieldByName('Cod_Emp').AsString       := gsCod_Emp;

   cdsCadSetores.Post;

   If cdsCadSetores.ChangeCount > 0  Then // se houve mudancas
      cdsCadSetores.ApplyUpdates(-1);

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

procedure TfrmCadSetores.edtPesquisa2Change(Sender: TObject);
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(sdtsPesquisa.FieldByName('Codigo').AsString);
   Parametros.Add('%'+edtPesquisa2.Text+'%');
   pnlSetor.Caption :='Setor Selecionado..: '+ sdtsPesquisa.FieldByName('Descricao').AsString;
   pnlSetor.Update;
   srcSaldosSetor.DataSet := gConexao.BuscarDadosSQL('Select prod.Codigo, Prod.Descricao,Prod.Unid, Setor.Saldo '+
                                                     'from T_Produtos Prod '+
                                                     'Left Join SaldosSetor Setor on Setor.ProdutoId = Prod.codigo '+
                                                     'where SetorId=:parSetorId and Prod.Descricao like :parDescricao order by Descricao',Parametros);
end;

procedure TfrmCadSetores.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';

   sdtsPesquisa.Close;
   sdtsPesquisa.DataSet.CommandText := 'Select * from Setores '+
                                       'Where Descricao like :parDescricao and Codigo<>1';
   sdtsPesquisa.DataSet.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+'%';
   sdtsPesquisa.Open;
end;

procedure TfrmCadSetores.FormShow(Sender: TObject);
begin
   EdtPesquisaChange(Sender);
end;

procedure TfrmCadSetores.LimpaCampos();
Begin
   EdtDescricao.Text := '';
End;


procedure TfrmCadSetores.PagCadastroChange(Sender: TObject);
var Parametros : TStringList;
begin
   if sdtsPesquisa.IsEmpty then
      Exit;

  if PagCadastro.ActivePageIndex = 2 then
  begin
     Parametros := TStringList.Create;
     Parametros.Add(sdtsPesquisa.FieldByName('Codigo').AsString);
     pnlSetor.Caption :='Setor Selecionado..: '+ sdtsPesquisa.FieldByName('Descricao').AsString;
     pnlSetor.Update;
     srcSaldosSetor.DataSet := gConexao.BuscarDadosSQL('Select prod.Codigo, Prod.Descricao,Prod.Unid, Setor.Saldo '+
                                                       'from T_Produtos Prod '+
                                                       'Left Join SaldosSetor Setor on Setor.ProdutoId = Prod.codigo '+
                                                       'where SetorId=:parSetorId order by Descricao',Parametros);
  end;
end;

end.
