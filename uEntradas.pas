unit uEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsdbctrls, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, Buttons,
  bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls, ToolWin, DB,
  DBClient, ADODB, Provider, EditNew, BusinessSkinForm, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,uFormBase,
  cxControls, cxGridCustomView, cxGrid, FMTBcd, SqlExpr, SqlTimSt,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmEntradas = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinComboBox1: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinPanel3: TbsSkinPanel;
    edtobs: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtCod_Fornecedor: TbsSkinEdit;
    cmbNome_Fornecedor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtData_cad: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    bsSkinDBGrid2: TbsSkinDBGrid;
    pnlProdutos: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtCod_Produto: TbsSkinEdit;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde_Venda: TbsSkinEdit;
    EdtPco_Venda: TbsSkinEdit;
    edtTotal: TbsSkinEdit;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    srcCadFornecedores: TDataSource;
    dspVariavel: TDataSetProvider;
    cdsItensEntradasTMP: TClientDataSet;
    cdsItensEntradasTMPCodigo: TIntegerField;
    cdsItensEntradasTMPDescricao: TStringField;
    cdsItensEntradasTMPqtde_Venda: TFloatField;
    cdsItensEntradasTMPPco_Venda: TFloatField;
    cdsItensEntradasTMPvlr_Total: TFloatField;
    srcItensVendasTMP: TDataSource;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnExcluir: TbsSkinSpeedButton;
    btnAdicionar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    dspEntradas: TDataSetProvider;
    dspItensEntradas: TDataSetProvider;
    cdsItensEntradas: TClientDataSet;
    cdsEntradas: TClientDataSet;
    srcConsEntradas: TDataSource;
    srcconsItensEntradas: TDataSource;
    tabCtasPagar: TbsSkinTabSheet;
    srcCadOperacoes: TDataSource;
    cxGrid1: TcxGrid;
    GrdCompras: TcxGridDBTableView;
    colum_SEqEntrada: TcxGridDBColumn;
    Colum_Seqnotafiscal: TcxGridDBColumn;
    Colum_Cod_Fornecedore: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    Colum_Data_Venda: TcxGridDBColumn;
    Colum_Vlr_Total: TcxGridDBColumn;
    Colum_Operador: TcxGridDBColumn;
    Colum_SeqPedido: TcxGridDBColumn;
    GrdItensCompras: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    btnPesquisar: TbsSkinButton;
    qryItensEntradas: TSQLQuery;
    QryEntradas: TSQLQuery;
    qryCtasPagar: TSQLQuery;
    qryModific: TSQLQuery;
    QryVariavel: TSQLQuery;
    cdsConsEntradas: TClientDataSet;
    cdsconsItensEntradas: TClientDataSet;
    cdsCadOperacoes: TClientDataSet;
    cdsCadFornecedores: TClientDataSet;
    edtSeqNotaFiscal: TbsSkinEdit;
    bsSkinStdLabel11: TbsSkinStdLabel;
    cmbCod_Fornecedor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtDataEntrada: TbsSkinDateEdit;
    bsSkinStdLabel17: TbsSkinStdLabel;
    edtNumeroPedido: TbsSkinEdit;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtTotalEntrada: TbsSkinEdit;
    bsSkinStdLabel18: TbsSkinStdLabel;
    edtNumeroItens: TbsSkinEdit;
    bsSkinStdLabel19: TbsSkinStdLabel;
    edtQtde_Total: TbsSkinEdit;
    bsSkinGroupBox2: TbsSkinGroupBox;
    bsSkinStdLabel12: TbsSkinStdLabel;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel13: TbsSkinStdLabel;
    lblVencimentos: TbsSkinStdLabel;
    lblDiasa: TbsSkinStdLabel;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    rdgTipoVencimento: TbsSkinRadioGroup;
    edtParcelas: TbsSkinSpinEdit;
    edtDias: TbsSkinSpinEdit;
    edtData_Emissao: TbsSkinDateEdit;
    edtHistorico: TbsSkinEdit;
    cmbNome_CentroCusto: TbsSkinDBLookupComboBox;
    cmbCod_CentroCusto: TbsSkinDBLookupComboBox;
    edtData_Vencimento: TbsSkinDateEdit;
    edtCod_CentroCusto: TbsSkinEdit;
    bsSkinEdit1: TbsSkinEdit;
    btnCadAlunos: TbsSkinSpeedButton;
    bsSkinStdLabel20: TbsSkinStdLabel;
    EdtVlr_total: TbsSkinEdit;
    dspCtasPagar: TDataSetProvider;
    cdsCtasPagar: TClientDataSet;
    srcCtasPagar: TDataSource;
    dtpData_Ini: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    btnDevolver: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinStdLabel21: TbsSkinStdLabel;
    lblMostraFornecedor: TbsSkinStdLabel;
    cmbPeriodo: TbsSkinComboBox;
    lblsituacao: TbsSkinStdLabel;
    bsSkinStdLabel22: TbsSkinStdLabel;
    cmbSetores: TbsSkinDBLookupComboBox;
    cdsSetores: TClientDataSet;
    srcSetores: TDataSource;
    cdsItensEntradasTMPComplemento: TStringField;
    cdsItensEntradasTMPvlr_Desconto: TFloatField;
    cdsItensEntradasTMPSetorId: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure cmbNome_FornecedorChange(Sender: TObject);
    procedure cmbCod_FornecedorChange(Sender: TObject);
    procedure EdtPco_VendaExit(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure pagCadastroChange(Sender: TObject);
    procedure rdgTipoVencimentoClick(Sender: TObject);
    procedure cmbCod_CentroCustoChange(Sender: TObject);
    procedure cmbNome_CentroCustoChange(Sender: TObject);
    procedure edtCod_FornecedorExit(Sender: TObject);
    procedure edtobsExit(Sender: TObject);
    procedure cdsItensEntradasTMPBeforeOpen(DataSet: TDataSet);
    procedure edtCod_CentroCustoExit(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
  private
    procedure CarregarTabelas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradas: TfrmEntradas;

implementation

uses uprincipal,ufuncoes, uDaoSaldo, uClassSaldo, uClassItemEntrada,
  uDaoItemEntrada;

{$R *.dfm}

procedure TfrmEntradas.FormShow(Sender: TObject);
begin
   CarregarTabelas;

   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );

   rdgTipoVencimentoClick(rdgTipoVencimento);
   pagCadastro.ActivePageIndex := 0;
end;

procedure TfrmEntradas.edtCod_CentroCustoExit(Sender: TObject);
begin
  if Trim(edtCod_CentroCusto.text) <> '' Then
   Begin
      cmbNome_CentroCusto.KeyValue :=  edtCod_CentroCusto.Text;
      if cmbNome_CentroCusto.KeyValue = null Then
      Begin
         CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
         edtCod_CentroCusto.Setfocus;
      End;
   End;
end;

procedure TfrmEntradas.edtCod_FornecedorExit(Sender: TObject);
begin
   if Trim(edtCod_Fornecedor.text) <> '' Then
   Begin
      cmbNome_Fornecedor.KeyValue :=  edtCod_Fornecedor.Text;
      if cmbNome_Fornecedor.KeyValue = null Then
      Begin
         CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
         edtCod_Fornecedor.Setfocus;
      End;
   End;
end;

procedure TfrmEntradas.edtCod_ProdutoExit(Sender: TObject);
begin
   if Trim(edtCod_produto.text) <> '' Then
   Begin
      cmbNome_Produto.KeyValue :=  edtCod_Produto.Text;
      if cmbNome_Produto.KeyValue = null Then
      Begin
         CaixaMensagem( 'Registro não Encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.Setfocus;
      End;
   End;
end;

procedure TfrmEntradas.edtobsExit(Sender: TObject);
begin
   edtCod_Produto.SetFocus;
end;

procedure TfrmEntradas.cmbNome_ProdutoChange(Sender: TObject);
begin
if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Compra').asFloat);
   End;
end;

procedure TfrmEntradas.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmEntradas.CarregarTabelas;
begin
  qryVariavel.Close;
  qryVariavel.Params.clear;
  qryVariavel.SQL.Text := 'Select * from T_Operacoes where ' + '( Tipo_Conta=:parTipo_Conta Or Tipo_Conta=:parTipo_Conta1 or Tipo_Conta=:parTipo_Conta2 ) ' + 'Order by Descricao ';
  qryVariavel.ParamByName('parTipo_Conta').AsInteger := 0;
  // 1 Debito 2 Credito
  qryVariavel.ParamByName('parTipo_Conta1').AsInteger := 2;
  // 1 Debito 2 Credito
  qryVariavel.ParamByName('parTipo_Conta2').AsInteger := 3;
  // 1 Debito 2 Credito
  cdsCadOperacoes.Close;
  cdsCadOperacoes.ProviderName := dspVariavel.name;
  cdsCadOperacoes.Open;
  qryVariavel.Close;
  qryVariavel.Params.Clear;
  qryVariavel.SQL.text := 'Select COd_Barras,Unid,Codigo,Descricao,Pco_Compra ' + 'From T_Produtos where tipo_Produto<>:parTipo_Produto ' + 'Order by Descricao ';
  qryVariavel.ParamByName('parTipo_Produto').AsString := '1';
  cdsCadProdutos.Close;
  cdsCadProdutos.ProviderName := dspVariavel.Name;
  cdsCadProdutos.Open;
  QryVariavel.Close;
  QryVariavel.SQL.Text := 'Select * from T_Fornecedores order by Descricao';
  cdsCadFornecedores.Close;
  cdsCadFornecedores.ProviderName := dspVariavel.Name;
  cdsCadFornecedores.Open;

  qryVariavel.Close;
  qryVariavel.Params.Clear;
  qryVariavel.SQL.text := 'Select * From Setores ';
  cdsSetores.Close;
  cdsSetores.ProviderName := dspVariavel.Name;
  cdsSetores.Open;
end;

procedure TfrmEntradas.cmbNome_FornecedorChange(Sender: TObject);
begin
  cmbCod_Fornecedor.KeyValue := cmbNome_Fornecedor.KeyValue;
  if cmbNome_Fornecedor.KeyValue <> Null then
     edtCod_Fornecedor.Text     := cmbNome_Fornecedor.KeyValue;
end;

procedure TfrmEntradas.cmbCod_FornecedorChange(Sender: TObject);
begin
   cmbNome_Fornecedor.KeyValue  :=  cmbCod_Fornecedor.KeyValue;
end;

procedure TfrmEntradas.EdtPco_VendaExit(Sender: TObject);
begin
   edtTotal.Text := FormatFloat('0.00',StrToFloat(edtQtde_Venda.Text)*StrToFloat(EdtPco_Venda.Text));
end;

procedure TfrmEntradas.btnincluirClick(Sender: TObject);
begin
   pagCadastro.ActivePageIndex := 1;
   btnincluir.Enabled          := False;
   btnok.Enabled               := True;
   BtnCancela.Enabled          := True;
   edtdata_Cad.Text            := FormatDateTime('dd/mm/yyyy',gsdata_mov);
   edtdataEntrada.Text         := FormatDateTime('dd/mm/yyyy',gsdata_mov);
   EdtCod_Fornecedor.SetFocus;
end;

procedure TfrmEntradas.btnAdicionarClick(Sender: TObject);
begin
   if trim(cmbSetores.text )='' Then
   Begin
      CaixaMensagem( 'Informe o setor para entrada', ctAviso, [ cbOk ], 0 );
      edtCod_Produto.SetFocus;
      Exit;
   End;

   if strtofloat(Edttotal.text ) <=0 Then
   Begin
      CaixaMensagem( 'O Valor Total não pode ser zero ', ctAviso, [ cbOk ], 0 );
      edtCod_Produto.SetFocus;
      Exit;
   End;
   if cdsItensEntradasTmp.Locate('Codigo',IntToStr( StrtoInt ( EdtCod_Produto.Text ) ),[] ) Then
   Begin
      CaixaMensagem( 'Este produto ja foi includo ', ctAviso, [ cbOk ], 0 );
       edtCod_Produto.SetFocus;
      Exit;
   End;

   cdsItensEntradasTmp.Append;
   cdsItensEntradasTmp.FieldByName('Codigo').asInteger      := StrToInt(edtCod_Produto.Text);
   cdsItensEntradasTmp.FieldByName('Qtde_Venda').asFloat    := StrToInt (edtQtde_Venda.Text);
   cdsItensEntradasTmp.FieldByName('Pco_Venda').asFloat     := StrToFloat (edtPco_Venda.Text);
   cdsItensEntradasTmp.FieldByName('vlr_Total').asFloat     := StrToFloat ( edtTotal.Text);
   cdsItensEntradasTmp.FieldByName('Descricao').asString    := cmbNome_Produto.Text;
   cdsItensEntradasTmp.FieldByName('SetorId').asInteger     := cmbSetores.KeyValue;
   cdsItensEntradasTmp.Post;

   edtTotalEntrada.Text  := FormatFloat('0.00', StrToFloat(edtTotalEntrada.Text) +  StrToFloat(edtTotal.Text)  );

   edtCod_Produto.SetFocus;
   edtCod_Produto.Text := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text  := '0';
   edtPco_Venda.Text   := '0,00';
   edtTotal.Text       := '0,00';
end;

procedure TfrmEntradas.btnExcluirClick(Sender: TObject);
begin
   IF cdsItensEntradasTMP.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o Aluno '+cdsItensEntradasTMP.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtTotalEntrada.Text    := FormatFloat('0.00',StrToFloat(edtTotalEntrada.Text) -  cdsItensEntradasTMP.FieldByname('Vlr_Total').asFloat );
      cdsItensEntradasTMP.Delete;
   End;

end;

procedure TfrmEntradas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmEntradas.btnokClick(Sender: TObject);
Var liSeqEntrada   : integer;
    licont         : Integer;
    liDias         : Integer;
    lsMes          : String;
    lsDias         : String;
    lsDiasant      : String;
    lsAno          : String;
    trdNrTransacao : TTransactionDesc;
    loItementrada  : TitemEntrada;
    loDaoItemEntrada : TDaoItemEntrada;
begin

   liSeqEntrada := StrToInt(Sequencia('SeqEntrada',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));

   qryEntradas.Close;
   qryEntradas.SQL.Text :='Select * from T_Entradas where 1=2';

   cdsEntradas.Close;
   cdsEntradas.ProviderName := dspEntradas.Name;
   cdsEntradas.Open;

   if StrToIntDef( edtSeqNotaFiscal.Text, 0 ) = 0 Then
   Begin
      CaixaMensagem( 'Informe o numero da nota Fiscal  ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   if Trim( cmbCod_Fornecedor.Text ) = '' Then
   Begin
      CaixaMensagem( 'O Fornecedor não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if (Trim( cmbCod_CentroCusto.Text ) = '') and (TabCtasPagar.tabVisible) Then
   Begin
      CaixaMensagem( 'O Centro de Custo não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if cmbSetores.KeyValue = Null then
   begin
      CaixaMensagem( 'Informe o setor para credito do estoque', ctAviso, [ cbOk ], 0 );
      Exit
   end;
   {if not frmPrincipal.dbxPrincipal.InTransaction then
   begin
      trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
      frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
   end;}

   Try
      cdsEntradas.Append;
      cdsEntradas.FieldByname('SeqEntrada').Asinteger     := liSeqEntrada;
      cdsEntradas.FieldByname('Cod_Fornecedor').Asinteger := StrToInt(cmbCod_Fornecedor.Text);
      cdsEntradas.FieldByname('Vlr_Total').AsFloat        := StrToFloat( edtTotalEntrada.Text );
      cdsEntradas.FieldByname('Status').AsString          := 'N';
      cdsEntradas.FieldByName('Data_Cad').asDateTime      := now;
      cdsEntradas.FieldByName('Data_Mov').asDateTime      := gsdata_Mov;
      cdsEntradas.FieldByName('Data_Entrada').asDateTime  := edtDataEntrada.Date;
      cdsEntradas.FieldByname('Operador').AsString        := gsOperador;
      cdsEntradas.FieldByname('Cod_Emp').AsString         := gsCod_Emp;
      cdsEntradas.FieldByname('SeqNotaFiscal').AsInteger  := StrToint(edtSeqNotaFiscal.text);
      cdsEntradas.FieldByname('Operador').AsString        := gsOperador;
      cdsEntradas.FieldByname('Obs').AsString             := edtObs.text;
      cdsEntradas.Post;
      cdsEntradas.ApplyUpdates(-1);

      qryItensEntradas.Close;
      qryItensEntradas.SQL.Text :='Select * from T_ItensEntradas where 1=2';

      cdsItensEntradas.Close;
      cdsItensEntradas.ProviderName := dspItensEntradas.Name;
      cdsItensEntradas.Open;

      loItementrada  := TitemEntrada.Create;
      loDaoItemEntrada := TDaoItemEntrada.Create(gConexao);
      loItementrada.CodigoEmpresa := StrtoInt(gsCod_emp);
      loItementrada.Operador  := gsOperador;
      loItementrada.DataMovimento  := gsData_mov;
      loItementrada.DataEntrada  := edtDataEntrada.Date;
      loItementrada.CompraId  := liSeqEntrada;
      loDaoItemEntrada.incluir(cdsItensEntradasTmp,loItemEntrada);
   except on E: Exception do
       CaixaMensagem('Não foi possivel efetuar a entrada ('+E.Message+')', ctConfirma, [ cbSimNao ], 0 )
   End;

   lsdias    := FormatDateTime('DD',edtdata_Vencimento.Date);
   lsMes     := FormatDateTime('MM',edtdata_Vencimento.Date);
   lsDiasAnt := FormatDateTime('DD',edtdata_Vencimento.Date);
   lsAno     := FormatDateTime('yyyy',edtdata_Vencimento.Date);
   lidias    := 0;

   Try
      QryCtasPagar.Close;
      QryCtasPagar.SQL.Text := 'Select * from T_CtasPagar where 1=2 ';

      cdsCtasPagar.Close;
      cdsCtasPagar.ProviderName := dspCtasPagar.name;
      cdsCtasPagar.Open;

      For licont := 1 to StrToInt(edtParcelas.Text) Do
      Begin
         lidias := liDias + StrToInt(edtdias.Text);

         cdsCtasPagar.Append;
         cdsCtasPagar.FieldByName('Data_Cad').AsDateTime := Now;
         cdsCtasPagar.FieldByName('Historico').AsString          := copy(edtHistorico.Text,1,50)+' (Entrada) NF '+edtSeqNotaFiscal.text;
         cdsCtasPagar.FieldByName('Operador').AsString           := gsOperador;
         cdsCtasPagar.FieldByName('Cod_Fornecedor').AsString     := cmbCod_Fornecedor.Text;
         cdsCtasPagar.FieldByName('Data_Emissao').AsDateTime     := edtData_Emissao.Date;
         If rdgTipoVencimento.ItemIndex = 0 Then
            cdsCtasPagar.FieldByName('Data_Vencimento').AsDateTime  := StrtoDateTime(lsdias+'/'+lsMes+'/'+lsAno)
         Else
            cdsCtasPagar.FieldByName('Data_Vencimento').AsDateTime  := (edtData_Vencimento.Date)+lidias ;
         cdsCtasPagar.FieldByName('SeqParcela').AsInteger        := licont;
         cdsCtasPagar.FieldByName('Valor').AsFloat               := arredondar(StrToFloat(EdtVlr_total.Text)/StrToInt(edtParcelas.Text),2);
         cdsCtasPagar.FieldByName('Status').AsInteger            := 0;
         cdsCtasPagar.FieldByName('Cod_Operacao').AsString       := cmbCod_CentroCusto.Text;
         cdsCtasPagar.FieldByname('Sequencia').Asinteger         := StrToInt(Sequencia('Sequencia',False,'T_CtasPagar',FrmPrincipal.dbxPrincipal,'',False,8));
         cdsCtasPagar.FieldByname('Documento').AsString          := inczero(IntToStr(liSeqEntrada),8)+incZero(intToStr(licont),3);
         if Trim(edtSeqNotaFiscal.Text)<>'' then
            cdsCtasPagar.FieldByname('Documento').AsString       := inczero(edtSeqNotaFiscal.text,8)+incZero(intToStr(licont),3);

         lsmes  := IncZero( IntToStr ( StrToint ( lsMes ) + 1 ),2);
         lsDias :=lsdiasAnt;
         if StrToint(lsMes)>12 Then
         Begin
           lsmes := '01';
           lsAno := IncZero( IntToStr ( StrToint ( lsAno ) + 1 ),2);
         End;
         if ( StrToint(lsMes)=2 ) and ( StrToint(lsDias)>=29 ) Then
         Begin
           lsDias:='28';
         end;
         cdsCtasPagar.Post;
     End;
      If StrToInt(edtParcelas.Text)>0 Then
         cdsCtasPagar.ApplyUpdates(-1);
   Except
//      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
   End;

  // frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );

   CaixaMensagem( 'Entradas Numero  '+IntToStr(liSeqEntrada), ctAviso, [ cbOk ], 0 );

   BtnCancelaClick(BtnCancela);
end;

procedure TfrmEntradas.BtnCancelaClick(Sender: TObject);
begin
   pagCadastro.ActivePageIndex := 0;
   btnincluir.Enabled          := True;
   btnok.Enabled               := False;
   BtnCancela.Enabled          := False;

   cdsItensEntradasTMP.EmptyDataSet;

   edtObs.Text                 :='';
   edtTotalEntrada.Text        := '0,00';
   cmbCod_Fornecedor.keyvalue  := null;
   cmbNome_Fornecedor.keyvalue := null;
   edtCod_Fornecedor.Text      := '';

   edtCod_Produto.Text      := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text       := '0';
   edtPco_Venda.Text        := '0,00';
   edtTotal.Text            := '0,00';
   edtNumeroItens.text      := '0,00';
   edtQtde_Total.text       := '0,00';
   edtSeqNotaFiscal.text    := '';

end;

procedure TfrmEntradas.btnPesquisarClick(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.Text := 'Select Ent.SeqEntrada,Ent.Cod_Fornecedor, Ent.Operador, '+
                               '       Forne.Descricao, Ent.Data_Entrada, '+
                               '       Ent.Vlr_Total '+
                               'From T_Entradas Ent, T_fornecedores Forne '+
                               'WHERE Forne.Codigo=Ent.Cod_Fornecedor ';
   If cmbPeriodo.ItemIndex<>0 Then
      qryVariavel.SQL.Text := qryVariavel.SQL.Text + ' AND ( Ent.Data_Entrada>=:parData_EntradaIni And Ent.Data_Entrada<=:parData_EntradaFim ) ';

   qryVariavel.SQL.Text := qryVariavel.SQL.Text + ' Order by Ent.seqentrada';

   If cmbPeriodo.ItemIndex<>0 Then
   Begin
      qryVariavel.ParamByName('parData_EntradaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
      qryVariavel.ParamByName('parData_EntradaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   End;
   cdsConsEntradas.Close;
   cdsConsEntradas.ProviderName := dspVariavel.Name;
   cdsConsEntradas.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.Text := 'Select Prod.Descricao, Itens.* from T_itensEntradas Itens, T_produtos Prod '+
                           'where Prod.Codigo=Itens.Cod_Produto ';
   If cmbPeriodo.ItemIndex<>0 Then
   Begin
      qryVariavel.SQL.Text := qryVariavel.SQL.Text + ' AND ( Itens.Data_Entrada>=:parData_EntradaIni And Itens.Data_Entrada<=:parData_EntradaFim ) ';

      qryVariavel.ParamByName('parData_EntradaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
      qryVariavel.ParamByName('parData_EntradaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   End;

   cdsconsItensEntradas.Close;
   cdsconsItensEntradas.ProviderName := dspVariavel.Name;
   cdsconsItensEntradas.Open;

end;

procedure TfrmEntradas.pagCadastroChange(Sender: TObject);
begin
   IF pagCadastro.ActivePageIndex = 2   Then
   Begin
    edtData_Emissao.text        := FormatDateTime('dd/mm/yyyy',Now);
    EdtVlr_total.Text           := edtTotalEntrada.Text;
    edtData_Vencimento.Date     := now;
    edtParcelas.Value           := 1;
    lblMostraFornecedor.Caption := ( edtCod_Fornecedor.Text+'-'+cmbNome_Fornecedor.Text )
   End;
end;

procedure TfrmEntradas.rdgTipoVencimentoClick(Sender: TObject);
begin
   IF rdgTipoVencimento.ItemIndex = 0  Then
   Begin
       edtDias.Visible            := False;
       lblDiasa.Visible           := False;
       edtData_Vencimento.Visible := True;
       lblVencimentos.Visible     := True;
   end
   Else
   Begin
      edtDias.Visible            := True;
      lblDiasa.Visible           := True;
      edtData_Vencimento.Visible := False;
      lblVencimentos.Visible     := False;
   End;
end;

procedure TfrmEntradas.cdsItensEntradasTMPBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
 for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmEntradas.cmbCod_CentroCustoChange(Sender: TObject);
begin
   cmbNome_CentroCusto.KeyValue := cmbCod_CentroCusto.KeyValue;
   edtCod_CentroCusto.Text := cmbCod_CentroCusto.Text;
end;

procedure TfrmEntradas.cmbNome_CentroCustoChange(Sender: TObject);
begin
   cmbCod_CentroCusto.KeyValue := cmbNome_CentroCusto.KeyValue
end;

end.
