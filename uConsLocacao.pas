{

 Status
        0 - Locado
        1 - Entregue
        2 - Cancelado

}

unit uConsLocacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, ExtCtrls, DB, DBClient, Provider, ADODB,
  ToolWin, ComCtrls, BusinessSkinForm, bsSkinGrids, bsDBGrids, Mask,
  bsSkinBoxCtrls, Menus, bsSkinMenus, RDprint, EditNew, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid,dateUtils,
  FMTBcd, SqlExpr,SqlTimSt, cxPropertiesStore, SimpleDS, dxSkinsCore,uformBase, 
  uClassDaoContaCorrente, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmConsLocacao = class(TFormBase)
    bsSkinPanel3: TbsSkinPanel;
    srcItensVendas: TDataSource;
    srcVendas: TDataSource;
    panelconsulta: TbsSkinPanel;
    cmbStatus: TbsSkinComboBox;
    lblsituacao: TbsSkinStdLabel;
    ImpMatricial: TRDprint;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    dspVariavel: TDataSetProvider;
    impEtiquetas: TRDprint;
    cmbTipoFiltro: TbsSkinComboBox;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    GrdVendas: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Colum_Seqvenda: TcxGridDBColumn;
    Colum_NomeStatus: TcxGridDBColumn;
    Colum_Cod_Aluno: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    Colum_Data_Venda: TcxGridDBColumn;
    Colum_Operador: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Complemento: TcxGridDBColumn;
    cmbTipoData: TbsSkinComboBox;
    edtPesquisa: TbsSkinEdit;
    QryVariavel: TSQLQuery;
    Qrymodific: TSQLQuery;
    qryVendas: TSQLQuery;
    qryItensVendas: TSQLQuery;
    dspItensVendas: TDataSetProvider;
    cdsItensVendas: TClientDataSet;
    dspvendas: TDataSetProvider;
    cdsVendas: TClientDataSet;
    pnlmensagem: TPanel;
    colum_Controle: TcxGridDBColumn;
    Colum_NumeroCupom: TcxGridDBColumn;
    Column_Vendedor: TcxGridDBColumn;
    grdDevolucoes: TcxGridDBTableView;
    qryItensDevolucoes: TSQLQuery;
    DspItensDevolucoes: TDataSetProvider;
    cdsItensDevolucoes: TClientDataSet;
    srcItensDevolucoes: TDataSource;
    grdDevolucoesColumn1: TcxGridDBColumn;
    CdsVerifica: TClientDataSet;
    qrySaldos: TSQLQuery;
    dspSaldos: TDataSetProvider;
    cdsSaldos: TClientDataSet;
    cmbPeriodo: TbsSkinComboBox;
    btnSelecionar: TbsSkinButton;
    cdsHistoricoOS: TClientDataSet;
    sdtsPesqEtiqueta: TSimpleDataSet;
    GrdItensDevolvidos: TcxGridDBTableView;
    GrdItensDevolvidosColumn1: TcxGridDBColumn;
    GrdItensDevolvidosColumn2: TcxGridDBColumn;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    separador: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    btnFinalizar: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    Column_Status_Pagamento: TcxGridDBColumn;
    Print: TPrintDialog;
    checkUsarleitor: TbsSkinCheckRadioBox;
    colum_NomeAnimal: TcxGridDBColumn;
    Status_Entrega: TcxGridDBColumn;
    cxPropertiesStore1: TcxPropertiesStore;
    bsSkinPopupMenu2: TbsSkinPopupMenu;
    MenuItem1: TMenuItem;
    LucroBruto: TcxGridDBColumn;
    Item_LucroBruto: TcxGridDBColumn;
    LucroBrutoReal: TcxGridDBColumn;
    MenuDeControle: TcxGridPopupMenu;
    Colum_TotalLocacao: TcxGridDBColumn;
    Colum_DataLocacao: TcxGridDBColumn;
    Colum_Total: TcxGridDBColumn;
    colum_dias: TcxGridDBColumn;
    sdtsPesqPrepagamento: TSimpleDataSet;
    colum_DataDevolucao: TcxGridDBColumn;
    Column_NomeStatus: TcxGridDBColumn;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    Colum_TipoCobranca: TcxGridDBColumn;
    ColumnDataVencimento: TcxGridDBColumn;
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure cdsItensVendasAfterOpen(DataSet: TDataSet);
    procedure QryVendaAfterOpen(DataSet: TDataSet);
    procedure QryVendaAfterScroll(DataSet: TDataSet);
    procedure cdsVendasCalcFields(DataSet: TDataSet);
    procedure cdsVendasBeforeOpen(DataSet: TDataSet);
    procedure cdsItensVendasBeforeOpen(DataSet: TDataSet);
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEntregueClick(Sender: TObject);
    procedure btnImpComprovanteClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure VisualizarDevolvidos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure checkUsarleitorClick(Sender: TObject);
    procedure GrdVendasCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure cdsItensVendasCalcFields(DataSet: TDataSet);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
  private
    pvilinha  : integer;
    procedure CarregaPropriedade;
    function RetornarTotalVenda(var DataDevolucao : TDatetime; lrSeqVenda: String) : Real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsLocacao: TfrmConsLocacao;

implementation

uses Uprincipal,Ufuncoes, uVendas, UnitDeclaracoes, uSelMotivoStatus, uDaoCaixaMovimento,
  udevolucaoVenda, uConsItensDevolvidos, uDaoVenda, uClassVenda, uDaoItemVenda,
  uclassContaCorrente, uFechaLocacao;

{$R *.dfm}

procedure TfrmConsLocacao.btnSelecionarClick(Sender: TObject);
begin
   qryVendas.Close;
   qryVendas.Params.Clear;
   qryVendas.SQL.Text :='Select Animal.NomeAnimal,Cli.Descricao, cli.cnpjcpf, fun.Descricao as Vendedor, Ven.*  From  T_Vendas Ven '+
                        'Left Join T_Clientes Cli On  '+
                        '     Cli.Codigo=Ven.Cod_Cliente '+
                        'Left Join T_Funcionarios Fun On '+
                        '     Fun.Codigo=Ven.Cod_funcionario '+
                        'Left join ClienteAnimais Animal on Animal.AnimalId=Ven.AnimalId '+
                        'where  Tipo_Venda=:parTipo_Venda ';

   if cmbStatus.ItemIndex <> 0 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND Ven.Status=:parStatus ';
   if cmbTipoFiltro.ItemIndex = 1 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND Cli.Descricao Like :parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 2 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND Ven.SeqVenda=:parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 3 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND ven.Controle=:parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 4 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND Cli.cnpjcpf=:parPesquisa ';
   If cmbPeriodo.ItemIndex<>0 Then
      qryVendas.SQL.Text := qryVendas.SQL.Text + ' AND ( Ven.Data_Venda>=:parData_PagamentoIni And Ven.Data_Venda<=:parData_PagamentoFim ) ';


   if cmbStatus.ItemIndex <> 0 Then
      qryVendas.ParamByName('parStatus').AsString  := IntToStr(cmbStatus.ItemIndex);
   if cmbTipoFiltro.ItemIndex = 1 Then
      qryVendas.ParamByName('parPesquisa').AsString := '%'+edtPesquisa.Text+'%'
   else if cmbTipoFiltro.ItemIndex <> 0 Then
      qryVendas.ParamByName('parPesquisa').AsString :=edtPesquisa.Text;
      qryVendas.ParamByName('parTipo_Venda').AsString :='P';

   If cmbPeriodo.ItemIndex<>0 Then
   Begin
     qryVendas.ParamByName('parData_PagamentoIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
     qryVendas.ParamByName('parData_PagamentoFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   End;

   cdsVendas.Close;
   cdsVendas.ProviderName := dspvendas.name;
   cdsVendas.Open;

   //-------------------------------------itens vendas ----------------------------------------------

   qryItensVendas.Close;
   qryItensVendas.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                              'Prod.Pco_Custo, coalesce(Itens.Status,0) as Status, Itens.* '+
                              'from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                              'where Prod.Codigo=Itens.Cod_Produto AND Ven.Tipo_Venda=:parTipo_Venda  ';

   if cmbStatus.ItemIndex <> 0 Then
      qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' AND Ven.Status=:parStatus ';

   If cmbPeriodo.ItemIndex<>0 Then
      qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' AND ( Ven.Data_Venda>=:parData_PagamentoIni And Ven.Data_Venda<=:parData_PagamentoFim ) ';


   if cmbTipoFiltro.ItemIndex = 2 Then
      qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' AND Ven.SeqVenda=:parPesquisa ';
   if cmbTipoFiltro.ItemIndex = 3 Then
      qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' AND ven.Controle=:parPesquisa ';

   qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' And Itens.Seqvenda=Ven.SeqVenda Order by Ven.seqvenda ';
   qryItensVendas.ParamByName('parTipo_Venda').AsString :='P';

   if cmbStatus.ItemIndex <> 0 Then
      qryItensVendas.ParamByName('parStatus').AsString  := IntToStr(cmbStatus.ItemIndex);

   if (cmbTipoFiltro.ItemIndex = 2) or (cmbTipoFiltro.ItemIndex = 3) Then
      qryItensVendas.ParamByName('parPesquisa').AsString :=edtPesquisa.Text;

   If cmbPeriodo.ItemIndex<>0 Then
   Begin
      qryItensVendas.ParamByName('parData_PagamentoIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
      qryItensVendas.ParamByName('parData_PagamentoFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   End;

   cdsItensVendas.close;
   cdsItensVendas.ProviderName := dspItensVendas.name;
   cdsItensVendas.open;

   //-------------------------------------itens Devolucoes ----------------------------------------------

   qryItensDevolucoes.Close;
   qryItensDevolucoes.Params.Clear;
   qryItensDevolucoes.SQL.Text := 'Select * from T_ItensDevolucoes ';

   cdsItensDevolucoes.close;
   cdsItensDevolucoes.ProviderName := dspItensVendas.name;
   cdsItensDevolucoes.open;

end;


procedure TfrmConsLocacao.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmConsLocacao.btnFinalizarClick(Sender: TObject);
var liSeqvenda : Integer;
    arqImpressora: TextFile;
    lilinha : Integer;
    liDias : Integer;
begin

   if ( cdsVendas.FieldByName('Status').AsString <> '1') Then
   Begin
      CaixaMensagem( 'Locação já finalizada ou cancelada', ctAviso, [ cbOk ], 0 );
      Exit;
   End;


   If cdsItensVendas.locate('Seqvenda',cdsVendas.FieldByName('SeqVenda').Asinteger, []) Then
   Begin
      frmFechaLocacao := TfrmFechaLocacao.Create(Nil);
      sdtsPesqPrepagamento.Close;
      sdtsPesqPrepagamento.Params.Clear;
      sdtsPesqPrepagamento.DataSet.CommandText := 'Select sum(Valor) as Total from t_Movcaixa '+
                                                  'Where PrePagamento=:parPrePagamento and Seqvenda=:parSeqVenda ';
      sdtsPesqPrepagamento.DataSet.ParamByName('parPrePagamento').AsString  := 'S';
      sdtsPesqPrepagamento.DataSet.ParamByName('parSeqvenda').AsInteger     :=  cdsItensVendas.fieldbyname('SeqVenda').ASInteger;
      sdtsPesqPrepagamento.Open;

      liDias :=  RetornarNumeroDias(cdsItensVendas.fieldbyname('Data_Mov').AsDateTime,RetornarDataSistema);
      frmFechaLocacao.edtData_Venda.Text  := FormatDateTime('dd/mm/yyyy', cdsItensVendas.fieldbyname('Data_Mov').AsDateTime);
      frmFechaLocacao.edtNumeroVenda.Text := cdsItensVendas.fieldbyname('SeqVenda').AsString;
      frmFechaLocacao.edtCodCliente.Text  :=  cdsVendas.fieldbyname('Cod_Cliente').AsString;
      frmFechaLocacao.lblDataLocacao.caption :='Data da Locação '+frmFechaLocacao.edtData_Venda.Text;
      frmFechaLocacao.edtPrePagamento.text := FormatFloat('0.00',sdtsPesqPrepagamento.fieldByName('Total').AsFloat);
      liSeqvenda := cdsItensVendas.fieldbyname('SeqVenda').ASInteger;
      while ( cdsItensVendas.fieldbyname('SeqVenda').AsInteger = liSeqvenda ) and ( Not cdsItensVendas.Eof )  do
      Begin
         if cdsItensVendas.fieldbyname('Status').AsInteger<>1 then
         begin
            frmFechaLocacao.cdsItensVendasTmp.Append;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Codigo').asInteger    := cdsItensVendas.fieldbyname('Cod_Produto').AsInteger;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Descricao').asString  := cdsItensVendas.fieldbyname('Descricao').AsString;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Quantidade').asFloat  := cdsItensVendas.fieldbyname('Qtde_Venda').AsFloat;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Diaria').asFloat      := cdsItensVendas.fieldbyname('Pco_Venda').AsFloat;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Dias').asFloat        := liDias;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('TipoCobranca').asString := cdsItensVendas.fieldbyname('TipoCobranca').AsString;
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Total').asFloat       := lidias * (cdsItensVendas.fieldbyname('Qtde_Venda').AsFloat * cdsItensVendas.fieldbyname('Pco_Venda').AsFloat);
            frmFechaLocacao.cdsItensVendasTmp.FieldByName('Marcado').asString    := 'X';
            frmFechaLocacao.cdsItensVendasTmp.Post;
         end;
         cdsItensvendas.Next;
      End;
   End;
   frmFechaLocacao.Showmodal;
   btnSelecionarClick(btnSelecionar);

end;

procedure TfrmConsLocacao.btnImpComprovanteClick(Sender: TObject);
var
    loVenda : TVenda;
    DaoVenda: TDaoVenda;
    DaoItemVenda : TDaoItemVenda;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   loVenda  := DaoVenda.CarregarVenda(cdsVendas);
   loVenda.VendaID := cdsVendas.FieldByName('SeqVenda').Asinteger;
   lovenda.Empresa := gEmpresa;
   DaoItemVenda := TDaoItemVenda.Create(gConexao);
   loVenda.Imprimir(cdsVendas,DaoItemVenda.Buscar(loVenda.VendaID),
                    gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),0,
                    StrToint(gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador)));
   FreeAndNil(DaoVenda);
   FreeAndNil(lovenda);
   FreeAndNil(DaoItemVenda);
end;

procedure TfrmConsLocacao.cdsItensVendasAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;


procedure TfrmConsLocacao.cdsItensVendasBeforeOpen(DataSet: TDataSet);
var licont : integer;
begin
   CriarCalculado (DataSet,'TotalLocacao',ftFloat,0);
   CriarCalculado (DataSet,'Dias',ftInteger,0);
   CriarCalculado (DataSet,'Nome_Status',ftString,20);

   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;


procedure TfrmConsLocacao.cdsItensVendasCalcFields(DataSet: TDataSet);
begin

   If cdsItensVendas.FieldByName('Status').AsString = '0' Then
      cdsItensVendas.FieldByName('Nome_Status').AsString := 'Locado'
   Else If cdsItensVendas.FieldByName('Status').AsString = '1' Then
      cdsItensVendas.FieldByName('Nome_Status').AsString := 'Entregue'
   Else If cdsItensVendas.FieldByName('Status').AsString = '2' Then
      cdsItensVendas.FieldByName('Nome_Status').AsString := 'Cancelado'
   Else
      cdsItensVendas.FieldByName('Nome_Status').AsString := 'Não Informado';

   if cdsItensVendas.fieldByName('Status').AsInteger<>1 then
      cdsItensVendas.fieldByName('Dias').AsInteger := RetornarNumeroDias(cdsItensVendas.fieldByName('Data_Mov').AsDateTime, now)
   else
      cdsItensVendas.fieldByName('Dias').AsInteger := RetornarNumeroDias(cdsItensVendas.fieldByName('Data_Mov').AsDateTime,cdsItensVendas.fieldByName('DataDevolucao').AsDateTime);

   if AnsiSameText( cdsItensVendas.fieldByName('TipoCobranca').AsString,'diario') then
   begin
      cdsItensVendas.fieldByName('TotalLocacao').AsFloat := ( ( cdsItensVendas.fieldByName('Qtde_venda').AsFloat * cdsItensVendas.fieldByName('Pco_Venda').AsFloat ) *
                                                                cdsItensVendas.fieldByName('Dias').AsInteger )

   end;

   if AnsiSameText( cdsItensVendas.fieldByName('TipoCobranca').AsString,'mensal') then
   begin
      cdsItensVendas.fieldByName('TotalLocacao').AsFloat :=  ( cdsItensVendas.fieldByName('Qtde_venda').AsFloat * cdsItensVendas.fieldByName('Pco_Venda').AsFloat )

   end;
end;

procedure TfrmConsLocacao.cdsVendasBeforeOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   CriarCalculado (DataSet,'Status_Pagamento',ftString,20);
   CriarCalculado (DataSet,'Status_Entrega',ftString,20);
   CriarCalculado (DataSet,'LucroBrutoReais',ftFloat,0);
   CriarCalculado (DataSet,'TotalLocacao',ftFloat,0);
   CriarCalculado (DataSet,'LucroBrutoReais',ftFloat,0);
   CriarCalculado (DataSet,'Data_Vencimento',ftDate,0);


   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsLocacao.cdsVendasCalcFields(DataSet: TDataSet);
var DataVencimento : TDateTime;
begin
   If cdsVendas.FieldByName('Status').AsString = '1' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Locado'
   Else If cdsVendas.FieldByName('Status').AsString = '2' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Entregue'
   Else If cdsVendas.FieldByName('Status').AsString = '3' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Cancelado'
   Else
      cdsVendas.FieldByName('Nome_Status').AsString := 'Não Informado';

   if cdsVendas.FieldByName('ServicoPago').AsBoolean then
      cdsVendas.FieldByName('Status_Pagamento').AsString := 'Pagamento Total'
   else
      cdsVendas.FieldByName('Status_Pagamento').AsString := 'Pendente de Pagamento';

  if cdsVendas.FieldByName('Entregue').AsBoolean then
      cdsVendas.FieldByName('Status_Entrega').AsString := 'Pedido Entrege'
   else
      cdsVendas.FieldByName('Status_Entrega').AsString := 'Pendente de Entrega';

   cdsVendas.FieldByName('LucroBrutoReais').AsFloat :=   ( cdsVendas.FieldByName('vlr_total').AsFloat-cdsVendas.FieldByName('CustoTotal').AsFloat );

   cdsVendas.FieldByName('TotalLocacao').AsFloat := RetornarTotalVenda(DataVencimento,cdsVendas.FieldByName('SeqVenda').AsString);
   cdsVendas.FieldByName('Data_Vencimento').AsFloat := DataVencimento;
   if ( DataVencimento<now )  and ( cdsVendas.FieldByName('Status').AsString = '1' ) then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Vencido'


end;


function TfrmConsLocacao.RetornarTotalVenda( var DataDevolucao : TDatetime;  lrSeqVenda : String ) : Real;
var Dados : TClientDataSet;
    Total : Real;
    MaiorData : TDateTime;
begin
   Dados := gConexao.BuscarDadosSQL('Select Qtde_Venda, Pco_venda, Data_Cad,Data_Mov, coalesce(Status,0) as Status, '+
                                    '       DataDevolucao, DataPrevisaoEntrega, TipoCobranca  from T_itensvendas '+
                                    'Where SeqVenda='+lrSeqVenda ,Nil);
   Total := 0;
   MaiorData := Dados.FieldByName('DataPrevisaoEntrega').AsDateTime;
   while not Dados.Eof do
   begin
      if Dados.fieldByName('Status').AsInteger<>1 then
      begin
         if AnsiSameText( Dados.fieldByName('TipoCobranca').AsString,'diario') then
            Total :=  Total + ( Dados.FieldByName('Qtde_Venda').AsFloat * Dados.FieldByName('Pco_venda').AsFloat ) * RetornarNumeroDias(Dados.FieldByName('Data_Mov').AsDateTime,RetornarDataSistema)
         else
            Total :=  Total + ( Dados.FieldByName('Qtde_Venda').AsFloat * Dados.FieldByName('Pco_venda').AsFloat );
      end
      else
      begin
         if AnsiSameText( Dados.fieldByName('TipoCobranca').AsString,'diario') then
            Total :=  Total +  ( Dados.FieldByName('Qtde_Venda').AsFloat * Dados.FieldByName('Pco_venda').AsFloat ) * RetornarNumeroDias(Dados.FieldByName('Data_Mov').AsDateTime,Dados.FieldByName('DataDevolucao').AsDateTime)
         else
            Total :=  Total + ( Dados.FieldByName('Qtde_Venda').AsFloat * Dados.FieldByName('Pco_venda').AsFloat );
      end;
      if MaiorData<Dados.FieldByName('DataPrevisaoEntrega').AsDateTime then
         MaiorData := Dados.FieldByName('DataPrevisaoEntrega').AsDateTime;

      Dados.Next;
   end;
   DataDevolucao := MaiorData;
   Result := Total;
end;



procedure TfrmConsLocacao.checkUsarleitorClick(Sender: TObject);
begin
  inherited;
  if checkUsarleitor.Checked then
  begin
     cmbTipoFiltro.ItemIndex := 3;
     cmbStatus.ItemIndex := 1;
     cmbTipoFiltro.Enabled :=False;
     cmbStatus.Enabled :=False;
     btnSelecionarClick(btnSelecionar);
  end
  else
  begin
     cmbTipoFiltro.ItemIndex := 0;
     cmbStatus.ItemIndex     := 0;
     cmbTipoFiltro.Enabled   := True;
     cmbStatus.Enabled       := True;
  end;
end;

procedure TfrmConsLocacao.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmConsLocacao.QryVendaAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsLocacao.QryVendaAfterScroll(DataSet: TDataSet);
begin
 {
    PnlCobrador.Visible := False;
    qryItensVendas.Close;
    qryItensVendas.SQL.Text := 'Select Prod.Descricao, Itens.* from T_itensvendas Itens, T_produtos Prod '+
                               'where SeqVenda=:parSeqVenda and Prod.Codigo=Itens.Cod_Produto ';
    qryItensVendas.Parameters.ParamValues['parSeqVenda'] := QryVenda.fieldbyname('SeqVenda').AsInteger;

    cdsItensVendas.Close;
    cdsItensVendas.ProviderName := dspItensVendas.Name;
    cdsItensVendas.Open;

    if Trim ( QryVenda.fieldbyname('Cod_Cobrador').AsString )<>'' then
    Begin
      qryBuscaCobrador.Close;
      qryBuscaCobrador.SQL.text :=' Select * from T_cobradores where codigo=:parCodigo ';
      qryBuscaCobrador.Parameters.ParamValues['parCodigo'] := QryVenda.fieldbyname('Cod_Cobrador').AsInteger;
      qryBuscaCobrador.Open;
      if not qryBuscaCobrador.IsEmpty Then
      Begin
        PnlCobrador.Caption := 'O cobrador do bordero '+QryVenda.fieldbyname('Bordero').AsString+' é --> '+QryBuscaCobrador.FieldByname('Descricao').asString;
        PnlCobrador.Visible := True;
      End;
    End;
    }
end;

procedure TfrmConsLocacao.VisualizarDevolvidos1Click(Sender: TObject);
begin
   //frmConsItensDevolvidos := tfrmConsItensDevolvidos.Create(Self);
   //frmConsItensDevolvidos.piSeqVenda :=  cdsVendas.FieldByName('SeqVenda').AsInteger;
   //frmConsItensDevolvidos.ShowModal;
end;

procedure TfrmConsLocacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited
  //
end;

procedure TfrmConsLocacao.FormShow(Sender: TObject);
begin
 inherited;

   cmbPeriodoChange(cmbPeriodo);

   cmbTipoFiltro.Enabled  := True;
   cmbStatus.Enabled      := True;


   frmConsLocacao.Caption := 'Consulta e manutenção de Locações ';
   pnlmensagem.Caption    := 'Consulta de Locação ';
   pnlmensagem.color      := $00D5FBD6;
   cmbStatus.Visible      := False;
   lblsituacao.Visible    := False;
   cmbStatus.ItemIndex    := 0;
   btnFinalizar.Visible   := false;
   colum_NomeAnimal.Visible := False;
   IF frmConsLocacao.Tag = 3 Then
   Begin
      pnlmensagem.color     := clInfoBk;
      cmbStatus.Visible     := True;
      cmbStatus.Visible     := True;
      lblsituacao.Visible   := True;
      btnFinalizar.Visible   := True;
      Colum_NomeStatus.Visible := True;
   End;
   //btnImpComprovante.Visible :=  RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimiCopiaComprovante','0',gsOperador ));
   btnSelecionarClick(btnSelecionar);
   if gbMaster then
      MenuDeControle.UseBuiltInPopupMenus := True;
end;

procedure TfrmConsLocacao.GrdVendasCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  IF aviewinfo.GridRecord.Values[Colum_NomeStatus.Index]='Vencido' Then
     acanvas.Font.color := clred
  else IF aviewinfo.GridRecord.Values[Colum_NomeStatus.Index]='Entregue' Then
     acanvas.Font.color := clGreen;
end;

procedure TfrmConsLocacao.MenuItem1Click(Sender: TObject);
var VendaId : Integer;
begin
   if cdsVendas.FieldByName('Entregue').AsBoolean then
   Begin
      CaixaMensagem( 'Pedido já entregue', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   VendaId := StrToInt(cdsVendas.FieldByName('SeqVenda').AsString);
   if CaixaMensagem( 'Confirma a entrega da venda ???', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.Close;
      qryModific.SQL.Text := 'Update T_Vendas set Entregue=1 Where seqvenda=:parSeqvenda ';
      qryModific.ParamByName('parSeqVenda').AsInteger := StrToInt(cdsVendas.FieldByName('SeqVenda').AsString);
      qryModific.ExecSQL;
   End;
   btnSelecionarClick(btnSelecionar);
   cdsVendas.Locate('SeqVenda',VendaId,[]);
end;

procedure TfrmConsLocacao.bsSkinSpeedButton1Click(Sender: TObject);
var liSeqVenda     : Integer;
    liRomaneio     : Integer;
    trdNrTransacao : TTransactionDesc;
    vlr_anterior   : Double;
    vlr_Atual      : Double;
    liNumeroVenda   : Integer;
    loDaoCaixaMovimento : TDaoCaixaMovimento;
    DadosContaCorrente  : TContaCorrente;
    GravaContaCorrente  : TDaoContaCorrente;
begin
   if not gsPerfilacesso.VerificaAcesso('Movimento','Vendas','Cancelamento',gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

{$REGION 'Inicializando Variaveis'}

   liNumeroVenda  := cdsVendas.Fieldbyname('seqvenda').asInteger;
   liSeqVenda     := cdsVendas.FieldByName('SeqVenda').AsInteger;
   liRomaneio     := cdsVendas.FieldByName('RomaneioId').AsInteger;

   {$ENDREGION}

{$REGION 'Fazendo Criticas do Processo'}

   IF cdsVendas.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if cdsVendas.FieldByName('Status').AsString = '3' Then
   Begin
      CaixaMensagem( 'A locação ja Esta Cancelada ', ctAviso, [ cbOk ],0 );
      Exit
   End;

{$ENDREGION}

   if CaixaMensagem( 'Deseja Efetuar o Cancelamento da Locação nº '+cdsVendas.FieldByName('SeqVenda').AsString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      if not frmPrincipal.dbxPrincipal.InTransaction then
      begin
         trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
         frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
      end;

{$REGION 'Desfazendo o Financeiro'}

      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.Sql.text := 'Select * from T_MovCaixa Where SeqVenda=:parseqvenda ';
      QryVariavel.paramByname('parSeqvenda').AsInteger  := cdsVendas.FieldByName('Seqvenda').AsInteger;

      CdsVerifica.Close;
      CdsVerifica.ProviderName := dspvariavel.Name;
      CdsVerifica.Open;

      while not CdsVerifica.Eof do
      Begin
         loDaoCaixaMovimento := TDaoCaixaMovimento.Create(gConexao);

         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento ) Values '+
                                '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento ) ';

         qryModific.ParamByName('parCod_Caixa').AsInteger            := loDaoCaixaMovimento.RetornarCaixaDoLancamento(CdsVerifica.FieldByname('SeqVenda').AsInteger);
         qryModific.ParamByName('parValor').asFloat                  := CdsVerifica.FieldByname('Valor').AsFloat;
         qryModific.ParamByName('parHistorico').asString             := 'Cancelamento da Venda nº '+ IncZero(CdsVerifica.FieldByname('SeqVenda').AsString,8);
         qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(gsData_Mov);
         qryModific.ParamByName('parD_C').AsString                   := 'D';
         qryModific.ParamByName('parSeqVenda').asInteger             := liNumeroVenda;
         qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
         qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
         qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := 1; // Sempre Dinheiro
         qryModific.ExecSQL;
         CdsVerifica.Next;
      End;
 {$ENDREGION}

{$REGION 'Devolucao de estoque (Cancelando os Itens)'}

      If cdsItensVendas.locate('Seqvenda',cdsVendas.FieldByName('SeqVenda').Asinteger, []) Then
      Begin
         while ( cdsItensVendas.fieldbyname('SeqVenda').AsInteger = liNumeroVenda )  and ( Not cdsItensVendas.Eof )  do
         Begin
           Try
               qrymodific.Close;
               qrymodific.Params.Clear;
               qrymodific.SQL.Text :='Update T_Itensvendas set Qtde_Devolvida = ( Qtde_Devolvida + :parQtde_Devolvida ), '+
                                '                          Qtde_Venda = :parQtde_Devolvida_02, Operador=:parOperador, '+
                                '                          Vlr_total=:parVlr_Total '+
                                'Where SeqVenda=:parSeqvenda and Cod_Produto=:parCod_Produto ';
               qrymodific.ParamByName('ParSeqVenda').AsInteger          := liNumeroVenda;
               qrymodific.ParamByName('ParCod_Produto').AsInteger       := cdsItensVendas.FieldByName('Cod_Produto').asInteger;
               qrymodific.ParamByName('ParQtde_Devolvida').AsInteger    := cdsItensVendas.FieldByName('Qtde_Venda').AsInteger;
               qrymodific.ParamByName('ParQtde_Devolvida_02').AsInteger := 0;
               qrymodific.ParamByName('ParVlr_Total').AsFloat           := 0;
               qrymodific.ParamByName('parOperador').AsString              := gsOperador;
               qrymodific.ExecSQL;
            except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;

            qryItensDevolucoes.Close;
            qryItensDevolucoes.SQL.Text :='Select * from T_ItensDevolucoes where 1=2';

            cdsItensDevolucoes.Close;
            cdsItensDevolucoes.ProviderName := dspItensDevolucoes.Name;
            cdsItensDevolucoes.Open;

            Try
               cdsItensDevolucoes.Append;
               cdsItensDevolucoes.FieldByName('Cod_Produto').asInteger      := cdsItensVendas.FieldByName('Cod_Produto').asInteger;
               cdsItensDevolucoes.FieldByName('SeqVenda').asInteger         := liNumeroVenda;
               cdsItensDevolucoes.FieldByName('Qtde_Devolvida').asFloat     := cdsItensVendas.FieldByName('Qtde_Venda').asInteger;
               cdsItensDevolucoes.FieldByName('Pco_Venda').asFloat          := cdsItensVendas.FieldByName('Pco_Venda').asFloat;
               cdsItensDevolucoes.FieldByName('Pco_Custo').asFloat          := cdsItensVendas.FieldByName('Pco_Custo').Asfloat;
               cdsItensDevolucoes.FieldByName('Data_Cad').asDateTime        := now;
               cdsItensDevolucoes.FieldByName('SetorId').asFloat            := cdsItensVendas.FieldByName('SetorId').Asfloat;
               cdsItensDevolucoes.FieldByName('Data_Devolucao').asDateTime  := gsData_mov;
               cdsItensDevolucoes.FieldByname('Operador').AsString          := gsOperador;
               cdsItensDevolucoes.FieldByname('Cod_Emp').AsString           := gsCod_Emp;
               cdsItensDevolucoes.FieldByName('Data_Mov').asDateTime        := gsdata_Mov;
               cdsItensDevolucoes.Post;
               cdsItensDevolucoes.ApplyUpdates(-1);
            except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;
         cdsItensVendas.Next;
         End;
 {$ENDREGION}

{$REGION 'Cancelando a venda '}

         Try

            qryModific.Close;
            qryModific.SQL.Text := 'update T_Vendas set Status=:parStatus, Controle=:parControle, '+
                                   'Operador=:parOperador, Data_Atu=:parData_Atu, PagouSinal=:parPagouSinal '+
                                   'where Seqvenda=:parseqvenda ';
            qryModific.ParamByName('parSeqVenda').AsInteger      := liNumeroVenda;
            qryModific.ParamByName('parStatus').AsString         := '5';
            qryModific.ParamByName('parPagouSinal').AsInteger        := 1;
            qryModific.ParamByName('parControle').AsString       := '';
            qryModific.ParamByName('parOperador').AsString       := gsOperador;
            qryModific.ParamByName('parData_Atu').AsSQLTimeStamp := StrToSqlTimeStamp(formatdateTime('dd/mm/yyyy', GsData_mov)+' 00:00:00');
            qryModific.ExecSQL;

         except
            frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
            Exit;
         End;

 {$ENDREGION}

{$REGION 'Lançando Ocorrencia da O S'}
         if not cdsVendas.fieldByname('SeqOs').isNull then
         Begin

            qryVariavel.Close;
            qryVariavel.Params.Clear;
            qryVariavel.Sql.Text := 'Select * from T_HistoricoOS where 1=2 ';

            frmMotivoStatus := TfrmMotivoStatus.Create(Self);
            frmMotivoStatus.pnlMensagem.Caption := 'Informe o motivo do cancelamento ';
            frmMotivoStatus.Caption := 'Motivo do Cancelamento ';
            frmMotivoStatus.ShowModal;

            IF frmMotivoStatus.tag <> 1 Then
            Begin
               freeandnil(frmMotivoStatus);
               Exit;
            End;

            Try
               cdsHistoricoOs.Close;
               cdsHistoricoOs.ProviderName := dspVariavel.Name;
               cdsHistoricoOs.open;

               cdsHistoricoOs.Append;
               cdsHistoricoOs.FieldByName('Cod_Emp').asString    := gsCod_Emp;
               cdsHistoricoOs.FieldByName('Operador').asString   := GsOperador;
               cdsHistoricoOs.FieldByName('SeqOS').asInteger     := cdsVendas.fieldByname('SeqOs').AsInteger;
               cdsHistoricoOs.FieldByName('Data_cad').asDateTime := now;
               cdsHistoricoOs.FieldByName('Data_Mov').asDateTime := GsData_mov;
               cdsHistoricoOs.FieldByName('Ocorrencia').asString := 'A venda ' + cdsVendas.fieldByname('SeqVenda').AsString +' referente a O.S. '+
                                                                     cdsVendas.fieldByname('SeqOs').AsString+' foi CANCELADA ';
               cdsHistoricoOs.FieldByName('Historico').asString  := 'O motivo do Cancelamento foi : '+ frmMotivoStatus.MemoMotivoStatus.Text;
               cdsHistoricoOs.Post;
               cdsHistoricoOs.ApplyUpdates(-1);
            except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;
            freeandnil(frmMotivoStatus);

            qryModific.Close;
            qryModific.Params.Clear;
            qryModific.Sql.text  := 'Update T_OrdemServico Set Vlr_Os = vlr_Os - :parVlr_Os '+
                                    'where SeqOs=:parSeqOs ';
            qryModific.ParamByName('parVlr_Os').asFloat  := cdsVendas.fieldByname('Vlr_Total').AsFloat;
            qryModific.ParamByName('parSeqOs').AsInteger := cdsVendas.fieldByname('SeqOs').AsInteger;
            qryModific.ExecSQL;

         End;
{$ENDREGION}


         frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );

         cdsVendas.Close;
         cdsVendas.Open;

         cdsVendas.Locate('SeqVenda',liSeqVenda, [] );
      End;
   End;
end;

procedure TfrmConsLocacao.btnEntregueClick(Sender: TObject);
var Parametros : TStringList;
    DaoVenda   : TDaoVenda;
    Venda      : Tvenda;
begin
   if not cdsVendas.FieldByName('ServicoPago').AsBoolean then
   begin
      CaixaMensagem( 'O serviço não foi pago Totalmente', ctAviso, [ cbOk ], 0 );
      Exit;
   end;
   if cdsVendas.FieldByName('Status').AsString='4' then
   Begin
      CaixaMensagem( 'O serviço ja foi entregue', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if cdsVendas.FieldByName('Status').AsString<>'3' then
   Begin
      CaixaMensagem( 'O serviço não esta finalizado', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if CaixaMensagem( 'Confirma a entrega do serviço ???', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.SQL.Text := 'Update T_Vendas set Status=:parStatus Where seqvenda=:parSeqvenda ';
      qryModific.ParamByName('parSeqVenda').AsInteger := StrToInt(cdsVendas.FieldByName('SeqVenda').AsString);
      qryModific.ParamByName('parStatus').AsString    := '4';
      qryModific.ExecSQL;
   End;
   btnselecionarclick(btnselecionar);
end;



procedure TfrmConsLocacao.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
  begin
     if checkUsarleitor.Checked then
     begin
        btnSelecionarClick(btnSelecionar);
        if cdsVendas.RecordCount = 1 then
           btnFinalizarClick(btnFinalizar);
        edtPesquisa.Text := '';
     end
     else

  end;
end;

procedure TfrmConsLocacao.Etiquetas1Click(Sender: TObject);
var
   liNumeroVenda   : Integer;
   liromaneio : Integer;
begin
{   if not gsPerfilacesso.VerificaAcesso('Movimento','Vendas','Devolucao Parcial',gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   liNumeroVenda  := cdsVendas.Fieldbyname('seqvenda').asInteger;
   liRomaneio     := cdsVendas.FieldByName('RomaneioId').AsInteger;

   {IF liRomaneio>0 Then
   Begin
      CaixaMensagem( 'Impossivel Cacelar venda com romaneio Emitido ', ctAviso, [ cbOk ], 0 );
      Exit
   End;}

 {  frmDevolucaoVenda := TfrmDevolucaoVenda.create(Self);
   frmDevolucaoVenda.piSeqVenda := cdsVendas.FieldByName('Seqvenda').AsInteger;
   frmDevolucaoVenda.piRomaneioId := cdsVendas.FieldByName('RomaneioId').AsInteger;
   if not cdsVendas.FieldByName('SeqOS').IsNull then
      frmDevolucaoVenda.piSeqOS    := cdsVendas.FieldByName('SeqOS').AsInteger;
   frmDevolucaoVenda.grpDevolveItem.Caption := cdsVendas.FieldByName('Seqvenda').AsString+'-'+cdsVendas.FieldByName('Nome_Cliente').AsString;
   frmDevolucaoVenda.ShowModal;

   cdsVendas.Close;
   cdsVendas.Open;

   cdsVendas.Locate('SeqVenda',liNumeroVenda, [] );
   }
end;

procedure TfrmConsLocacao.CarregaPropriedade;
begin


end;

end.
