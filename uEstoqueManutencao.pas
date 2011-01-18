unit uEstoqueManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uFormBase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, bsSkinCtrls, bsdbctrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls,
  ToolWin, ComCtrls, FMTBcd, DBClient, Provider, SqlExpr, bsSkinTabs,SqlTimSt,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmEstoqueManutencao = class(TFormBase)
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    cdsProdutosAvarias: TClientDataSet;
    SrcProdutosAvarias: TDataSource;
    cdsProdutosAvariasCod_Produto: TIntegerField;
    cdsProdutosAvariasDescricao: TStringField;
    cdsProdutosAvariasPco_Venda: TFloatField;
    cdsProdutosAvariasqtde_Avaria: TIntegerField;
    cdsProdutosAvariasVlr_Total: TFloatField;
    qryItensAvarias: TSQLQuery;
    dspItensAvarias: TDataSetProvider;
    cdsItensAvarias: TClientDataSet;
    cdsAvarias: TClientDataSet;
    dspAvarias: TDataSetProvider;
    qryAvarias: TSQLQuery;
    PagGeral: TbsSkinPageControl;
    TabLancamento: TbsSkinTabSheet;
    cxGrid1: TcxGrid;
    GridAvarias: TcxGridDBTableView;
    GridAvariasCod_Produto: TcxGridDBColumn;
    GridAvariasDescricao: TcxGridDBColumn;
    GridAvariasqtde_Avaria: TcxGridDBColumn;
    GridAvariasPco_Venda: TcxGridDBColumn;
    GridAvariasVlr_Total: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnlProdutos: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtCod_Produto: TbsSkinEdit;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde_Venda: TbsSkinEdit;
    btnTudo: TbsSkinButton;
    btnAdicionar: TbsSkinButton;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    cmbCod_Funcionario: TbsSkinDBLookupComboBox;
    memoMotivo: TbsSkinMemo;
    tabConsulta: TbsSkinTabSheet;
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    tabajustaSaldo: TbsSkinTabSheet;
    panelconsulta: TbsSkinPanel;
    lblsituacao: TbsSkinStdLabel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    btnSelecionar: TbsSkinButton;
    cxGrid2: TcxGrid;
    GrdAvarias: TcxGridDBTableView;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    grdDevolucoes: TcxGridDBTableView;
    grdDevolucoesColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    srcAvarias: TDataSource;
    srcItensAvarias: TDataSource;
    Column_SeqAvaria: TcxGridDBColumn;
    Column_Data_Cad: TcxGridDBColumn;
    Column_Cod_Funcionario: TcxGridDBColumn;
    Column_Descricao: TcxGridDBColumn;
    Column_Vlr_Total: TcxGridDBColumn;
    Column_Motivo_Avaria: TcxGridDBColumn;
    bsSkinPanel2: TbsSkinPanel;
    cxGrid3: TcxGrid;
    cxGridAjustaEstoque: TcxGridDBTableView;
    CXColumn_Data_Cad: TcxGridDBColumn;
    cxColumn_Operador: TcxGridDBColumn;
    cxColumn_Motivo: TcxGridDBColumn;
    cxColumn_E_S: TcxGridDBColumn;
    vlr_Total: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    btnAddAjuste: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    edtMotivoAjuste: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    cmbTipo: TbsSkinComboBox;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtVlr_Total: TbsSkinEdit;
    cdsAjustaEstoque: TClientDataSet;
    srcAjustaEstoque: TDataSource;
    cdsAjustaEstoqueData_Cad: TDateTimeField;
    cdsAjustaEstoqueOperador: TStringField;
    cdsAjustaEstoquemotivo: TStringField;
    cdsAjustaEstoqueTipo: TStringField;
    cdsAjustaEstoqueVlr_Total: TFloatField;
    dspSaldos: TDataSetProvider;
    cdsSaldos: TClientDataSet;
    qrySaldos: TSQLQuery;
    edtPco_venda: TbsSkinEdit;
    cmbTipoProduto: TbsSkinComboBox;
    bsSkinStdLabel11: TbsSkinStdLabel;
    procedure FormShow(Sender: TObject);
    procedure cmbCod_FuncionarioChange(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnTudoClick(Sender: TObject);
    procedure btnAddAjusteClick(Sender: TObject);
    procedure cmbTipoProdutoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueManutencao: TfrmEstoqueManutencao;

implementation

uses ufuncoes,uprincipal,uclassEstoque;

{$R *.dfm}

procedure TfrmEstoqueManutencao.btnAddAjusteClick(Sender: TObject);
begin
  inherited;
   cdsAjustaEstoque.Append;
   cdsAjustaEstoque.FieldByName('Data_cad').asDateTime   := gsData_mov;
   cdsAjustaEstoque.FieldByName('Operador').asString     := gsOperador;
   cdsAjustaEstoque.FieldByName('Motivo').asString       := edtMotivoAjuste.Text;
   cdsAjustaEstoque.FieldByName('Tipo').asString         := cmbTipo.Text;
   cdsAjustaEstoque.FieldByName('Vlr_Total').asfloat     := StrTofloat(edtVlr_Total.Text);
   cdsAjustaEstoque.post;

   edtVlr_Total.Text    := '0';
   edtMotivoAjuste.Text :=  '';
end;

procedure TfrmEstoqueManutencao.btnAdicionarClick(Sender: TObject);
begin
  inherited;
   cdsProdutosAvarias.Append;
   cdsProdutosAvarias.FieldByName('Cod_produto').asInteger := strToInt(edtCod_Produto.Text);
   cdsProdutosAvarias.FieldByName('Descricao').asString    := cmbNome_Produto.Text;
   cdsProdutosAvarias.FieldByName('Pco_Venda').asfloat     := strTofloat(edtPco_venda.Text);
   cdsProdutosAvarias.FieldByName('Qtde_Avaria').asInteger := strToInt(edtQtde_Venda.Text);
   cdsProdutosAvarias.FieldByName('Vlr_Total').asfloat     := (strToInt(edtQtde_Venda.Text)*strTofloat(edtPco_venda.Text));
   cdsProdutosAvarias.post;
   edtQtde_Venda.Text       := '0';
   edtCod_Produto.Text      := '';
   cmbNome_Produto.KeyValue := Null;
   edtCod_Produto.SetFocus;
end;

procedure TfrmEstoqueManutencao.btnFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmEstoqueManutencao.btnokClick(Sender: TObject);
var liSeqAvaria     : Integer;
    liseqInventario : Integer;
    ldVlr_Total     : Double;
    lEstoque        : TEstoque;
begin

   lEstoque := TEstoque.Create;

   Case pagGeral.ActivePageIndex Of
      0 :
      Begin
      {$REGION 'Lancamento de Avarias'}

         if Trim( cmbCod_Funcionario.Text ) = '' Then
         Begin
            CaixaMensagem( 'O Funcionario não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
            Exit
         End;

         if Trim( memoMotivo.Text ) = '' Then
         Begin
            CaixaMensagem( 'O motivo não pode ficar em branco ', ctAviso, [ cbOk ], 0 );
            Exit
         End;

         if cdsProdutosAvarias.IsEmpty Then
         Begin
            CaixaMensagem( 'Avarias sem produtos lançados ', ctAviso, [ cbOk ], 0 );
            Exit
         End;

         liSeqAvaria := StrToInt(Sequencia('SeqAvaria',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));


         qryItensAvarias.Close;
         qryItensAvarias.Params.Clear;
         qryItensAvarias.sql.Text :='Select * from T_ItensaVarias where 1=2 ';

         cdsItensAvarias.Close;
         cdsItensAvarias.ProviderName := dspItensAvarias.name;
         cdsItensAvarias.Open;

         cdsProdutosAvarias.First;
         ldVlr_Total := 0;
         while not cdsProdutosAvarias.Eof  do
         Begin
            cdsItensAvarias.Append;
            cdsItensAvarias.FieldByName('Cod_Emp').AsString          := gscod_emp;
            cdsItensAvarias.FieldByName('Operador').AsString         := gsOperador;
            cdsItensAvarias.FieldByName('SeqAvaria').AsInteger       := liSeqAvaria;
            cdsItensAvarias.FieldByName('Data_Cad').AsDateTime       := now;
            cdsItensAvarias.FieldByName('Data_Mov').AsDateTime       := gsData_mov;
            cdsItensAvarias.FieldByName('Cod_produto').AsInteger     := cdsProdutosAvarias.FieldByName('Cod_Produto').AsInteger;
            cdsItensAvarias.FieldByName('Qtde_Avaria').AsInteger     := cdsProdutosAvarias.FieldByName('Qtde_Avaria').AsInteger;
            cdsItensAvarias.FieldByName('pco_venda').Asfloat         := cdsProdutosAvarias.FieldByName('pco_venda').AsFloat;
            cdsItensAvarias.FieldByName('Vlr_total').AsFloat         := (cdsProdutosAvarias.FieldByName('pco_venda').AsFloat*cdsProdutosAvarias.FieldByName('Qtde_Avaria').AsInteger);
            cdsItensAvarias.Post;
            cdsItensAvarias.ApplyUpdates(-1);
            lEstoque.BaixaMAteriaPrima(cdsProdutosAvarias.FieldByName('Cod_Produto').AsInteger,liSeqAvaria,cdsProdutosAvarias.FieldByName('Qtde_Avaria').AsInteger);
            ldVlr_Total := ldVlr_Total + (cdsProdutosAvarias.FieldByName('pco_venda').AsFloat*cdsProdutosAvarias.FieldByName('Qtde_Avaria').AsInteger);
            cdsProdutosAvarias.Next;
         End;
         qryAvarias.Close;
         qryAvarias.sql.Text :='Select * from T_Avarias where 1=2 ';

         cdsAvarias.Close;
         cdsAvarias.ProviderName := dspAvarias.name;
         cdsAvarias.Open;

         cdsAvarias.Append;
         cdsAvarias.FieldByName('SeqAvaria').AsInteger       := liSeqAvaria;
         cdsAvarias.FieldByName('Cod_Funcionario').AsInteger := cmbCod_Funcionario.KeyValue;
         cdsAvarias.FieldByName('Data_Cad').AsDateTime       := now;
         cdsAvarias.FieldByName('Data_Mov').AsDateTime       := gsData_mov;
         cdsAvarias.FieldByName('Cod_Emp').AsString          := gscod_emp;
         cdsAvarias.FieldByName('Operador').AsString         := gsOperador;
         cdsAvarias.FieldByName('Vlr_Total').AsFloat         := ldVlr_Total;
         cdsAvarias.FieldByName('Motivo_Avaria').AsString    := memoMotivo.text;
         cdsAvarias.Post;
         cdsAvarias.ApplyUpdates(0);

         CaixaMensagem( 'Avaria Numero  '+IntToStr(liSeqAvaria), ctAviso, [ cbOk ], 0 );
     {$ENDREGION}
      End;
      2 :
      Begin
      {$REGION 'Ajuste de Saldo de Estoque'}

         qrySaldos.Close;
         qrySaldos.Params.Clear;
         qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

         cdsSaldos.Close;
         cdsSaldos.ProviderName := dspSaldos.Name;
         cdsSaldos.Open;
         while not cdsAjustaEstoque.eof  do
         Begin
            cdsSaldos.Append;
            cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
            cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
            cdsSaldos.FieldByName('E_S').AsString          := Copy(cdsAjustaEstoque.FieldByName('Tipo').AsString,1,1);
            cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
            cdsSaldos.FieldByName('Cod_Produto').AsInteger := 2;
            cdsSaldos.FieldByName('Pco_Venda').AsFloat     := cdsAjustaEstoque.FieldByName('Vlr_Total').AsFloat;
            cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
            cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
            cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
            cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
            cdsSaldos.FieldByName('Historico').AsString    := cdsAjustaEstoque.FieldByName('Motivo').AsString;
            cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'AJUSTE DE SALDO';
            cdsSaldos.Post;
            cdsSaldos.ApplyUpdates(-1);
            cdsAjustaEstoque.Next;
         End;
      {$ENDREGION}
      End;
   End;
   CaixaMensagem( 'Processo Finalizado ', ctAviso, [ cbOk ], 0 );
   Close;
end;

procedure TfrmEstoqueManutencao.btnSelecionarClick(Sender: TObject);
begin
   inherited;
   qryAvarias.Close;
   qryAvarias.params.clear;
   qryAvarias.Sql.text := 'Select Avaria.SeqAvaria,Avaria.Data_Cad,Avaria.Cod_funcionario,Fun.Descricao, '+
                          '        Avaria.Motivo_Avaria, Avaria.vlr_Total '+
                          'From T_Avarias Avaria ' +
                          '     Left join T_funcionarios Fun On ' +
                          '          Fun.Codigo=Avaria.Cod_funcionario '+
                          'Where (Avaria.Data_Mov>=:parData_MovIni And Avaria.Data_Mov<=:parData_MovFim ) ';
   qryAvarias.ParamByName('parData_MovIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryAvarias.ParamByName('parData_MovFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');

   cdsAvarias.Close;
   cdsAvarias.ProviderName := dspAvarias.Name;
   cdsAvarias.Open;

   qryItensAvarias.Close;
   qryItensAvarias.Params.Clear;
   qryItensAvarias.Sql.Text := 'Select Itens.SeqAvaria, Itens.Cod_Produto, Prod.Descricao, '+
                               '       Itens.Qtde_Avaria, Itens.Pco_Venda, '+
                               '       Itens.Vlr_total '+
                               'FROM T_ItensAvarias itens '+
                               '     Left Join T_produtos Prod on '+
                               '          Prod.Codigo = Itens.Cod_Produto '+
                               'WHERE (itens.Data_Mov>=:parData_MovIni And itens.Data_Mov<=:parData_MovFim ) ';
   qryitensAvarias.ParamByName('parData_MovIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryitensAvarias.ParamByName('parData_MovFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');

   cdsItensAvarias.Close;
   cdsItensAvarias.ProviderName := dspItensAvarias.Name;
   cdsItensAvarias.Open;

end;

procedure TfrmEstoqueManutencao.btnTudoClick(Sender: TObject);
begin
  inherited;
   cdsProdutosAvarias.Delete;
end;

procedure TfrmEstoqueManutencao.cmbCod_FuncionarioChange(Sender: TObject);
begin
   CmbNome_Funcionario.KeyValue := CmbCod_Funcionario.KeyValue;
end;

procedure TfrmEstoqueManutencao.cmbNome_FuncionarioChange(Sender: TObject);
begin
   CmbCod_Funcionario.KeyValue := CmbNome_Funcionario.KeyValue;
end;

procedure TfrmEstoqueManutencao.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);
   End;
end;

procedure TfrmEstoqueManutencao.cmbPeriodoChange(Sender: TObject);
begin
  inherited;
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );

end;

procedure TfrmEstoqueManutencao.cmbTipoProdutoChange(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select COd_Barras,Unid,Codigo,Descricao,Pco_Venda,Saldo,Tipo_Produto '+
                          'From T_Produtos '+
                          'where tipo_Produto=:parTipo_Produto ';
   qryVariavel.SQL.add(' Order by Descricao  ');
   qryVariavel.ParamByName('parTipo_Produto').AsInteger := cmbTipoProduto.ItemIndex;

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;
end;

procedure TfrmEstoqueManutencao.edtCod_ProdutoExit(Sender: TObject);
begin
  inherited;
   if Trim(edtCod_produto.text) <> '' Then
   Begin
      cmbNome_Produto.KeyValue :=  edtCod_Produto.Text;
      if trim(cmbNome_Produto.text) = '' Then
      Begin
         CaixaMensagem( 'Produto não encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.Setfocus;
      End;
   End;
end;

procedure TfrmEstoqueManutencao.FormShow(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   cdsProdutosAvarias.EmptyDataSet;
   cdsAjustaEstoque.EmptyDataSet;
   memoMotivo.Lines.Clear;
   
   cmbTipoProdutoChange(cmbTipoProduto);
   cmbPeriodoChange(cmbPeriodo);
end;

end.
