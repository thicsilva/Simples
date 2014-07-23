{

 Status
        1 - Contratado
        2 - Em producao
        3 - Finalizado
        4 - Entregue
        5 - Cancelada

 Tag da venda

    Tag = 4 : Finalizaçao de OS
    Tag = 3 : Serviço
    Tag = 0 : Vendas normais

}

unit uConsVendas;

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
  dxSkinscxPCPainter, ACBrNFe, frxClass, frxDBSet;

type
  TfrmConsVendas = class(TFormBase)
    bsSkinPanel3: TbsSkinPanel;
    srcItensVendas: TDataSource;
    srcVendas: TDataSource;
    panelconsulta: TbsSkinPanel;
    cmbStatus: TbsSkinComboBox;
    lblsituacao: TbsSkinStdLabel;
    bsSkinPopupMenu1: TbsSkinPopupMenu;
    BorderodeEntrega1: TMenuItem;
    ImpMatricial: TRDprint;
    Etiquetas1: TMenuItem;
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
    Colum_Vlr_Total: TcxGridDBColumn;
    colum_Vlr_Desconto: TcxGridDBColumn;
    Colum_Operador: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Desconto: TcxGridDBColumn;
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
    N1: TMenuItem;
    VisualizarDevolvidos1: TMenuItem;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    separador: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    btnFinalizar: TbsSkinSpeedButton;
    btnEmproducao: TbsSkinSpeedButton;
    btnEntregue: TbsSkinSpeedButton;
    btnNFE: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    btnImpComprovante: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnCancelar: TbsSkinMenuSpeedButton;
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
    btnEntregaVenda: TbsSkinSpeedButton;
    MenuDeControle: TcxGridPopupMenu;
    btnCupomFiscal: TbsSkinSpeedButton;
    ACBrNFe1: TACBrNFe;
    frxDbItens: TfrxDBDataset;
    frxDBCliente: TfrxDBDataset;
    frxDbEmpresa: TfrxDBDataset;
    frxVendaPersonalizada01: TfrxReport;
    cdsItensVendasCP: TClientDataSet;
    qryItensVendasCp: TSQLQuery;
    dspItensVendasCp: TDataSetProvider;
    frxVendaPersonalizada02: TfrxReport;
    frmDbItensGrade: TfrxDBDataset;
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
    procedure btnEmproducaoClick(Sender: TObject);
    procedure btnEntregueClick(Sender: TObject);
    procedure btnImpComprovanteClick(Sender: TObject);
    procedure BorderodeEntrega1Click(Sender: TObject);
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
    procedure btnEntregaVendaClick(Sender: TObject);
    procedure btnCupomFiscalClick(Sender: TObject);
    procedure btnNFEClick(Sender: TObject);
    procedure cdsVendasAfterScroll(DataSet: TDataSet);
  private
    pvilinha  : integer;
    procedure CarregaPropriedade;
    procedure PedidoPersonalizado(NumeroVenda: String);
    procedure RecuperarItensVendas(seqVenda: String);
    procedure CarregarItemParaImpressao(SeqVenda : String);
    procedure PedidoPersonalizado02(NumeroVenda: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsVendas: TfrmConsVendas;

implementation

uses Uprincipal,Ufuncoes, uVendas, UnitDeclaracoes, uSelMotivoStatus, uDaoCaixaMovimento,
  udevolucaoVenda, uConsItensDevolvidos, uDaoVenda, uClassVenda, uDaoItemVenda,
  uclassContaCorrente, uDtmCadastro, ufrmFinalizaServico, uDaoItensVendaGrade,
  UdtmVendas;

{$R *.dfm}

procedure TfrmConsVendas.btnSelecionarClick(Sender: TObject);
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

   if frmconsvendas.tag=3 then
      qryVendas.ParamByName('parTipo_Venda').AsString :='S'
   Else
      qryVendas.ParamByName('parTipo_Venda').AsString :='P';

   If cmbPeriodo.ItemIndex<>0 Then
   Begin
     qryVendas.ParamByName('parData_PagamentoIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
     qryVendas.ParamByName('parData_PagamentoFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   End;

   cdsVendas.Close;
   cdsVendas.ProviderName := dspvendas.name;
   cdsVendas.Open;


   qryItensVendas.Close;
   qryItensVendas.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                              'Prod.Pco_Custo, Itens.* '+
                              'from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                              'where Prod.Codigo=Itens.Cod_Produto  ';

   qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' And Itens.Seqvenda=Ven.SeqVenda Order by Ven.seqvenda ';
   cdsItensVendas.close;
   cdsItensVendas.ProviderName := dspItensVendas.name;
   cdsItensVendas.open;

   //-------------------------------------itens Devolucoes ----------------------------------------------

  { qryItensDevolucoes.Close;
   qryItensDevolucoes.Params.Clear;
   qryItensDevolucoes.SQL.Text := 'Select * from T_ItensDevolucoes ';

   cdsItensDevolucoes.close;
   cdsItensDevolucoes.ProviderName := dspItensVendas.name;
   cdsItensDevolucoes.open;}

end;


procedure TfrmConsVendas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmConsVendas.btnFinalizarClick(Sender: TObject);
var liSeqvenda : Integer;
    arqImpressora: TextFile;
    lilinha : Integer;
begin
   if ( cdsVendas.FieldByName('Status').AsString <> '1') And ( cdsVendas.FieldByName('Status').AsString <> '2') Then
   Begin
      CaixaMensagem( 'Pedido ja finalizado', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   FrmVendas     := TfrmVendas.create(Self);
   frmvendas.Tag := 4; // venda de serviços
   FrmVendas.btnincluirClick(FrmVendas.btnincluir);
   FrmVendas.edtcod_Cliente.Text        := cdsVendas.FieldByName('Cod_Cliente').AsString;
   FrmVendas.edtcod_ClienteExit(FrmVendas.edtcod_Cliente);
   FrmVendas.edtNome_Cliente.Text := cdsVendas.FieldByName('Nome_Cliente').AsString;
   frmvendas.edtCod_FormaPagamento.Text := cdsVendas.FieldByName('Cod_FormaPagamento').AsString;
   FrmVendas.edtcod_FormaPagamentoExit(FrmVendas.edtcod_FormaPagamento);
   frmVendas.edtCod_Funcionario.Text    := cdsVendas.FieldByName('Cod_Funcionario').AsString;
   FrmVendas.edtcod_FuncionarioExit(FrmVendas.edtcod_Funcionario);
   FrmVendas.edtControle.text   := cdsVendas.FieldByName('Controle').AsString;
   liSeqvenda := cdsvendas.fieldbyname('SeqVenda').ASInteger;
   frmvendas.edtTotalVenda.Text    :=  formatfloat('0.00',cdsVendas.FieldByName('Vlr_Total').AsFloat+cdsVendas.FieldByName('Vlr_Desconto').AsFloat);
   frmvendas.edtTotDesconto.Text   :=  formatfloat('0.00',cdsVendas.FieldByName('Vlr_Desconto').AsFloat);
   frmvendas.edtTotalLiquido.Text  :=  formatfloat('0.00',StrtoFloat(frmvendas.edtTotalVenda.Text)-StrToFloat(frmvendas.edtTotDesconto.Text));
   frmvendas.liSeqVendaAtu         :=  cdsVendas.FieldByName('SeqVenda').AsInteger;
   If cdsItensVendas.locate('Seqvenda',cdsVendas.FieldByName('SeqVenda').Asinteger, []) Then
   Begin
      while ( cdsItensVendas.fieldbyname('SeqVenda').AsInteger = liSeqvenda ) and ( Not cdsItensVendas.Eof )  do
      Begin
         FrmVendas.cdsItensVendasTmp.Append;
         FrmVendas.cdsItensVendasTmp.FieldByName('Codigo').asInteger      := cdsItensVendas.fieldbyname('Cod_Produto').AsInteger;
         FrmVendas.cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat    := cdsItensVendas.fieldbyname('Qtde_Venda').AsFloat;
         FrmVendas.cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat     := cdsItensVendas.fieldbyname('Pco_Venda').AsFloat;
         FrmVendas.cdsItensVendasTmp.FieldByName('vlr_Total').asFloat     := cdsItensVendas.fieldbyname('vlr_Total').AsFloat;
         FrmVendas.cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat  := cdsItensVendas.fieldbyname('vlr_Desconto').AsFloat;
         FrmVendas.cdsItensVendasTmp.FieldByName('Descricao').asString    := cdsItensVendas.fieldbyname('Descricao').AsString;
         FrmVendas.cdsItensVendasTmp.Post;
         cdsItensvendas.Next;
      End;
   End;
   if checkUsarleitor.Checked then
   begin
      frmVendas.AtualizaTabelas;
      frmVendas.PrepararFinalizacaoOS;
      frmVendas.edtCod_TipoVenda.Visible := False;
      frmVendas.btnokclick(frmVendas.btnOk);
      frmVendas.Close;
   end
   else
      frmVendas.Showmodal;
   btnSelecionarClick(btnSelecionar);

   {$REGION 'Imprime Etiquetas das O.S'}
   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'EmiteEtiqueta', 'NAO' )) = 'SIM' Then
   Begin
       sdtsPesqEtiqueta.Close;
       sdtsPesqEtiqueta.dataSet.CommandText := 'Select SeqVenda From T_Vendas Where Etiqueta=:parEtiqueta';
       sdtsPesqEtiqueta.dataSet.ParamByName('ParEtiqueta').AsInteger := 1;
       sdtsPesqEtiqueta.open;
       if sdtsPesqEtiqueta.RecordCount>=2 then
       Begin
          while not sdtsPesqEtiqueta.Eof do
          Begin
             lilinha := 10;
             AssignFile( arqImpressora, 'LPT1' );
             Rewrite(arqImpressora);
             WriteLn(arqImpressora,'N');
             WriteLn(arqImpressora,'D11');
             WriteLn(arqImpressora,'S1');
             WriteLn(arqImpressora,'R000,000');
             WriteLn(arqImpressora,'Q120,23');

             WriteLn(arqImpressora,'A60,'+IntToStr(liLinha)+',0,2,1,2,N,"'+'Artlab - O.S. No'+'"');
             WriteLn(arqImpressora,'B60,'+IntToStr(liLinha+42)+',0,1,2,6,60,B,"'+sdtsPesqEtiqueta.FieldByName('SeqVenda').AsString+'"');

             sdtsPesqEtiqueta.next;

             WriteLn(arqImpressora,'A500,'+IntToStr(liLinha)+',0,2,1,2,N,"'+'Artlab - O.S. No'+'"');
             WriteLn(arqImpressora,'B500,'+IntToStr(liLinha+42)+',0,1,2,6,60,B,"'+sdtsPesqEtiqueta.FieldByName('SeqVenda').AsString+'"');

             WriteLn(arqImpressora,'P1');
             WriteLn(arqImpressora,'N');
             System.Close(arqImpressora );
             sdtsPesqEtiqueta.next;
          End;
          qrymodific.Close;
          qrymodific.SQL.text := 'update T_Vendas set Etiqueta=:parEtiqueta where Etiqueta=:parEtiqueta2 ';
          qrymodific.ParamByName('ParEtiqueta').AsInteger := 0;
          qrymodific.ParamByName('ParEtiqueta2').AsInteger := 1;
          qrymodific.ExecSQL;
       End;
   End;
   {$ENDREGION}


end;

procedure TfrmConsVendas.btnImpComprovanteClick(Sender: TObject);
var
    loVenda : TVenda;
    DaoVenda: TDaoVenda;
    DaoItemVenda : TDaoItemVenda;
begin
   if StrToint(gsParametros.ReadString('IMPRESSAO', 'TipoImpressora', '0'))=5 then
   begin
      RecuperarItensVendas(cdsVendas.FieldByName('SeqVenda').AsString);
      PedidoPersonalizado(cdsVendas.FieldByName('SeqVenda').AsString);
   end
   else if StrToint(gsParametros.ReadString('IMPRESSAO', 'TipoImpressora', '0'))=6 then
   begin
      CarregarItemParaImpressao(cdsVendas.FieldByName('SeqVenda').AsString);
      PedidoPersonalizado02(cdsVendas.FieldByName('SeqVenda').AsString);
   end
   else
   begin
     DaoVenda := TDaoVenda.Create(gConexao);
     loVenda  := DaoVenda.CarregarVenda(cdsVendas);
     loVenda.VendaID := cdsVendas.FieldByName('SeqVenda').Asinteger;
     lovenda.Empresa := gEmpresa;
     DaoItemVenda    := TDaoItemVenda.Create(gConexao);
     loVenda.Imprimir(cdsVendas,DaoItemVenda.Buscar(loVenda.VendaID),
                      gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),0,
                      StrToint(gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador)));
     FreeAndNil(DaoVenda);
     FreeAndNil(lovenda);
     FreeAndNil(DaoItemVenda);
   end;
end;

procedure  TfrmConsVendas.PedidoPersonalizado(NumeroVenda : String);
begin
   dtmCadastro := TdtmCadastro.create(Nil);
   dtmCadastro.cdsEmpresa.Data := gconexao.BuscarDadosSQL('Select * from Empresa',Nil).Data;
   frxDbEmpresa.DataSet := dtmCadastro.cdsEmpresa;

   dtmCadastro.cdsClientes.Data := gconexao.BuscarDadosSQL('Select * from T_Clientes where Codigo='+QuotedStr(cdsVendas.FieldByName('Cod_Cliente').AsString),Nil).Data;
   frxDBCliente.DataSet := dtmCadastro.cdsClientes;

   frxVendaPersonalizada01.Variables['CNPJEmpresa']    := QuotedStr( FormatarCNPJ_CPF( dtmCadastro.cdsEmpresa.fieldByname('cnpjcpf').AsString ) );
   frxVendaPersonalizada01.Variables['cnpjCliente']    := QuotedStr( FormatarCNPJ_CPF( dtmCadastro.cdsClientes.fieldByname('cnpjcpf').AsString ));
   frxVendaPersonalizada01.Variables['TotalLocacao']   := QuotedStr( Formatfloat('0.00',cdsVendas.FieldByName('vlr_Total').AsFloat ));
   frxVendaPersonalizada01.Variables['NumeroVenda']    := QuotedStr( cdsVendas.FieldByName('SeqVenda').AsString );
   frxVendaPersonalizada01.Variables['FormaPagamento'] := QuotedStr( 'Dinheiro' );
   frxVendaPersonalizada01.ShowReport(true);

end;
procedure  TfrmConsVendas.PedidoPersonalizado02(NumeroVenda : String);
begin
   dtmCadastro := TdtmCadastro.create(Nil);
   dtmCadastro.cdsEmpresa.Data := gconexao.BuscarDadosSQL('Select * from Empresa',Nil).Data;
   frxDbEmpresa.DataSet := dtmCadastro.cdsEmpresa;

   dtmCadastro.cdsClientes.Data := gconexao.BuscarDadosSQL('Select * from T_Clientes where Codigo='+QuotedStr(cdsVendas.FieldByName('Cod_Cliente').AsString),Nil).Data;
   frxDBCliente.DataSet := dtmCadastro.cdsClientes;

   frxVendaPersonalizada02.Variables['CNPJEmpresa']    := QuotedStr( FormatarCNPJ_CPF( dtmCadastro.cdsEmpresa.fieldByname('cnpjcpf').AsString ) );
   frxVendaPersonalizada02.Variables['cnpjCliente']    := QuotedStr( FormatarCNPJ_CPF( dtmCadastro.cdsClientes.fieldByname('cnpjcpf').AsString ));
   frxVendaPersonalizada02.Variables['TotalLocacao']   := QuotedStr( Formatfloat('0.00',cdsVendas.FieldByName('vlr_Total').AsFloat ));
   frxVendaPersonalizada02.Variables['NumeroVenda']    := QuotedStr( cdsVendas.FieldByName('SeqVenda').AsString );
   frxVendaPersonalizada02.Variables['FormaPagamento'] := QuotedStr( 'Dinheiro' );
   frxVendaPersonalizada02.ShowReport(true);

end;


procedure TfrmConsVendas.btnNFEClick(Sender: TObject);
var
 vAux, vNumLote : String;
begin
  {
  ACBrNFe1.NotasFiscais.Clear;

  ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
  GerarNFe(vAux);

  ACBrNFe1.Enviar(vNumLote,True);

  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
  LoadXML(MemoResp, WBResposta);

 MemoDados.Lines.Add('');
 MemoDados.Lines.Add('Envio NFe');
 MemoDados.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
 MemoDados.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
 MemoDados.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
 MemoDados.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
 MemoDados.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
 MemoDados.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
 MemoDados.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
 MemoDados.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
 MemoDados.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
// MemoDados.Lines.Add('cStat: '+ ACBrNFe1.WebServices.Retorno.NFeRetorno;

{ ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].tpAmb
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].verAplic
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].digVal
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].cStat
 ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].xMotivo }

 // ACBrNFe1.NotasFiscais.Clear;
end;

procedure TfrmConsVendas.cdsItensVendasAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;


procedure TfrmConsVendas.cdsItensVendasBeforeOpen(DataSet: TDataSet);
var licont : integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsVendas.cdsVendasAfterScroll(DataSet: TDataSet);
begin
{  qryItensVendas.Close;
   qryItensVendas.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                              'Prod.Pco_Custo, Itens.* '+
                              'from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                              'where Prod.Codigo=Itens.Cod_Produto  ';

   qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' AND Ven.SeqVenda=:parSeqVenda ';
   qryItensVendas.SQL.Text := qryItensVendas.SQL.Text + ' And Itens.Seqvenda=Ven.SeqVenda Order by Ven.seqvenda ';

   qryItensVendas.ParamByName('parSeqVenda').AsString := cdsVendas.FieldByName('SeqVenda').AsString;

   cdsItensVendas.close;
   cdsItensVendas.ProviderName := dspItensVendas.name;
   cdsItensVendas.open; }

end;

procedure TfrmConsVendas.RecuperarItensVendas(seqVenda : String);
begin
   qryItensVendasCp.Close;
   qryItensVendasCp.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                              'Prod.Pco_Custo, Itens.* '+
                              'from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                              'where Prod.Codigo=Itens.Cod_Produto  ';

   qryItensVendasCp.SQL.Text := qryItensVendasCp.SQL.Text + ' AND Ven.SeqVenda=:parSeqVenda ';
   qryItensVendasCp.SQL.Text := qryItensVendasCp.SQL.Text + ' And Itens.Seqvenda=Ven.SeqVenda Order by Ven.seqvenda ';

   qryItensVendasCp.ParamByName('parSeqVenda').AsString := seqVenda;

   cdsItensVendasCp.close;
   cdsItensVendasCp.ProviderName := dspItensVendasCp.name;
   cdsItensVendasCp.open;
end;
procedure TfrmConsVendas.CarregarItemParaImpressao(SeqVenda : String);
begin
   qryItensVendasCp.Close;
   qryItensVendasCp.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                                'Prod.Pco_Custo, Itens.* '+
                                'from T_itensvendas Itens, T_produtos Prod, T_Vendas Ven '+
                                'where Prod.Codigo=Itens.Cod_Produto  ';

   qryItensVendasCp.SQL.Text := qryItensVendasCp.SQL.Text + ' AND Ven.SeqVenda=:parSeqVenda ';
   qryItensVendasCp.SQL.Text := qryItensVendasCp.SQL.Text + ' And Itens.Seqvenda=Ven.SeqVenda Order by Ven.seqvenda ';

   qryItensVendasCp.ParamByName('parSeqVenda').AsString := seqVenda;

   cdsItensVendasCp.close;
   cdsItensVendasCp.ProviderName := dspItensVendasCp.name;
   cdsItensVendasCp.open;

   dtmVendas := TdtmVendas.create(Nil);
   dtmVendas.cdsItensVendasTamhos.Data := gconexao.BuscarDadosSQL('select ProdutoID,ItenGradeID, Grade.Tamanho,QtdeProduzida '+
                                                                  'from ItensVendaGrade ItemGrade '+
                                                                  'left join ItensGrade grade on Grade.id=Itemgrade.ItenGradeId where VendaId='+seqVenda,Nil).Data;
   frmDbItensGrade.DataSet := dtmVendas.cdsItensVendasTamhos
end;

procedure TfrmConsVendas.cdsVendasBeforeOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   CriarCalculado (DataSet,'Status_Pagamento',ftString,20);
   CriarCalculado (DataSet,'Status_Entrega',ftString,20);
   CriarCalculado (DataSet,'LucroBrutoReais',ftFloat,0);
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsVendas.cdsVendasCalcFields(DataSet: TDataSet);
begin
   If cdsVendas.FieldByName('Status').AsString = '1' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Contratado'
   Else If cdsVendas.FieldByName('Status').AsString = '2' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Em Producao'
   Else If cdsVendas.FieldByName('Status').AsString = '3' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Finalizado'
   Else If cdsVendas.FieldByName('Status').AsString = '4' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Entregue'
   Else If cdsVendas.FieldByName('Status').AsString = '5' Then
      cdsVendas.FieldByName('Nome_Status').AsString := 'Cancelada'
   Else
      cdsVendas.FieldByName('Nome_Status').AsString := 'Venda Normal';

   if cdsVendas.FieldByName('ServicoPago').AsBoolean then
      cdsVendas.FieldByName('Status_Pagamento').AsString := 'Pagamento Total'
   else
      cdsVendas.FieldByName('Status_Pagamento').AsString := 'Pendente de Pagamento';

  if cdsVendas.FieldByName('Entregue').AsBoolean then
      cdsVendas.FieldByName('Status_Entrega').AsString := 'Pedido Entrege'
   else
      cdsVendas.FieldByName('Status_Entrega').AsString := 'Pendente de Entrega';

   cdsVendas.FieldByName('LucroBrutoReais').AsFloat :=   ( cdsVendas.FieldByName('vlr_total').AsFloat-cdsVendas.FieldByName('CustoTotal').AsFloat );


end;

procedure TfrmConsVendas.checkUsarleitorClick(Sender: TObject);
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

procedure TfrmConsVendas.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmConsVendas.QryVendaAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmConsVendas.QryVendaAfterScroll(DataSet: TDataSet);
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

procedure TfrmConsVendas.VisualizarDevolvidos1Click(Sender: TObject);
begin
   frmConsItensDevolvidos := tfrmConsItensDevolvidos.Create(Self);
   frmConsItensDevolvidos.piSeqVenda :=  cdsVendas.FieldByName('SeqVenda').AsInteger;
   frmConsItensDevolvidos.ShowModal;
end;

procedure TfrmConsVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited
  //
end;

procedure TfrmConsVendas.FormShow(Sender: TObject);
begin
 inherited;

   cmbPeriodoChange(cmbPeriodo);

   btnEmproducao.Visible  := True;
   btnEntregue.Visible    := True;
   cmbTipoFiltro.Enabled  := True;
   cmbStatus.Enabled      := True;
   btnEntregaVenda.Visible := False;
   If gsParametros.ReadString('ACESSODADOS','TipoSistema','0') ='0' Then
   Begin
      btnCupomFiscal.Visible := False;
      btnEmproducao.Visible  := False;
      btnEntregue.Visible    := False;
      btnEntregaVenda.Visible := True;
      separador.Width        := separador.Width+( btnEntregue.Width * 4 );
   End;


   frmConsVendas.Caption  := 'Consulta e manutenção de Vendas  ';
   pnlmensagem.Caption    := 'Consulta de vendas ';
   pnlmensagem.color      := $00D5FBD6;
   cmbStatus.Visible      := False;
   lblsituacao.Visible    := False;
   cmbStatus.ItemIndex    := 0;
   btnFinalizar.Visible   := false;
   btnCupomFiscal.Enabled := True;
   //grdvendas.Columns[0].Visible := False;
   IF frmconsvendas.Tag = 3 Then
   Begin
      frmConsVendas.Caption := 'Consulta e manutenção de Serviços  ';
      pnlmensagem.Caption   := 'Consulta de Serviços ';
      pnlmensagem.color     := clInfoBk;
      //cmbStatus.ItemIndex   := 1;
      cmbStatus.Visible     := True;
      cmbStatus.Visible     := True;
      lblsituacao.Visible   := True;
      btnFinalizar.Visible   := True;
      btnCupomFiscal.Enabled := false;
      colum_NomeAnimal.Visible := False;
      //grdvendas.Columns[0].Visible := True;
   End;
   btnImpComprovante.Visible :=  RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimiCopiaComprovante','0',gsOperador ));
   btnSelecionarClick(btnSelecionar);
   if gbMaster then
      MenuDeControle.UseBuiltInPopupMenus := True;
end;

procedure TfrmConsVendas.GrdVendasCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  IF aviewinfo.GridRecord.Values[Colum_NomeStatus.Index]='Cancelada' Then
     acanvas.Font.color := clred
  else IF aviewinfo.GridRecord.Values[Colum_NomeStatus.Index]='Finalizado' Then
     acanvas.Font.color := clGreen;
end;

procedure TfrmConsVendas.MenuItem1Click(Sender: TObject);
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

procedure TfrmConsVendas.BorderodeEntrega1Click(Sender: TObject);
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

   {IF liRomaneio>0 Then
   Begin
      CaixaMensagem( 'Impossivel Cancelar venda com romaneio Emitido ', ctAviso, [ cbOk ], 0 );
      Exit
   End;}

   IF cdsVendas.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if cdsVendas.FieldByName('Status').AsString = '5' Then
   Begin
      CaixaMensagem( 'A Venda ja Esta Cancelada ', ctAviso, [ cbOk ],0 );
      Exit
   End;
   {
   if cdsVendas.FieldByName('Status').AsString  '3' Then
   Begin
      CaixaMensagem( 'Venda ja finalizada ', ctAviso, [ cbOk ],0 );
      Exit
   End;
    }
   {$ENDREGION}

   if CaixaMensagem( 'Deseja Efetuar o Cancelamento da Venda nº '+cdsVendas.FieldByName('SeqVenda').AsString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      if not frmPrincipal.dbxPrincipal.InTransaction then
      begin
         trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
         frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
      end;

{$REGION 'Desfazendo o Financeiro'}

      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.Sql.text := 'Select * from T_Ctasreceber Where SeqVenda=:parseqvenda ';
      QryVariavel.paramByname('parSeqvenda').AsInteger  := cdsVendas.FieldByName('Seqvenda').AsInteger;

      CdsVerifica.Close;
      CdsVerifica.ProviderName := dspvariavel.Name;
      CdsVerifica.Open;

      while not CdsVerifica.Eof do
      Begin
          Try
            qryModific.Close;
            qryModific.SQL.Text := 'update T_Ctasreceber set Status=:parStatus,Operador=:parOperador, Tipo_Baixa=:parTipo_Baixa, '+
                                   'Data_Atu=:parData_Atu '+
                                   'where Documento=:parDocumento ';
            qryModific.ParamByName('parDocumento').AsString            := CdsVerifica.FieldByname('Documento').AsString;
            qryModific.ParamByName('parData_Atu').asSqlTimeStamp       := DateTimeToSQLTimeStamp(now);
            qryModific.ParamByName('parOperador').AsString             := gsOperador;
            qryModific.ParamByName('parStatus').AsInteger              := 2;
            qryModific.ParamByName('parTipo_Baixa').AsString           := 'CA';
            qryModific.ExecSQL;
         Except
            //frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
            Exit;
         End;
         CdsVerifica.Next;
      End;

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

      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.Sql.text := 'Select * from T_ContaCorrente Where Documento=:parseqvenda ';
      QryVariavel.paramByname('parSeqvenda').AsInteger  := cdsVendas.FieldByName('Seqvenda').AsInteger;

      CdsVerifica.Close;
      CdsVerifica.ProviderName := dspvariavel.Name;
      CdsVerifica.Open;

      while not CdsVerifica.Eof do
      Begin
         DadosContaCorrente := TContaCorrente.Create;
         GravaContaCorrente := TDaoContaCorrente.Create;
         DadosContaCorrente.D_C         := 'C';
         DadosContaCorrente.Valor       := CdsVerifica.FieldByname('Valor').AsFloat;
         DadosContaCorrente.Cod_Cliente :=  CdsVerifica.FieldByname('Cod_cliente').AsInteger;
         DadosContaCorrente.Historico   := 'Estorno do cancelamento da Venda nº '+IntToStr(liSeqvenda);
         DadosContaCorrente.Documento   :=  99+cdsVendas.FieldByName('Seqvenda').AsInteger;
         IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
         Begin
            CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
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

            if cdsItensVendas.FieldByName('Pco_Venda').asFloat > cdsItensVendas.FieldByName('Pco_Venda_Atual').Asfloat then
            Begin
               vlr_anterior := (cdsItensVendas.FieldByName('Pco_Venda').asFloat * cdsItensVendas.FieldByName('Qtde_Venda').asInteger ) ;
               vlr_Atual    := (cdsItensVendas.FieldByName('Pco_Venda_Atual').Asfloat * cdsItensVendas.FieldByName('Qtde_Venda').asInteger ) ;

               Try
                  qrySaldos.Close;
                  qrySaldos.Params.Clear;
                  qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

                  cdsSaldos.Close;
                  cdsSaldos.ProviderName := dspSaldos.Name;
                  cdsSaldos.Open;

                  cdsSaldos.Append;
                  cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                  cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                  cdsSaldos.FieldByName('E_S').AsString          := 'S';
                  cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                  cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsItensVendas.FieldByName('Cod_Produto').asInteger;
                  cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Anterior-vlr_Atual);
                  cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                  cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                  cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                  cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                  cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsItensVendas.FieldByName('Pco_Venda').asFloat)+
                                                                    ' Recebido '+FormatFloat('0.00',cdsItensVendas.FieldByName('Pco_Venda_Atual').asFloat);
                  cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'DEBITO DE DEVOLUCAO';
                  cdsSaldos.Post;
                  cdsSaldos.ApplyUpdates(-1);
               except
                  frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                  Exit;
               End;
            End;

            if cdsItensVendas.FieldByName('Pco_Venda').asFloat < cdsItensVendas.FieldByName('Pco_Venda_Atual').Asfloat then
            Begin

               vlr_anterior := (cdsItensVendas.FieldByName('Pco_Venda').asFloat * cdsItensVendas.FieldByName('Qtde_Devolvida').asInteger ) ;
               vlr_Atual    := (cdsItensVendas.FieldByName('Pco_Venda_Atual').Asfloat * cdsItensVendas.FieldByName('Qtde_Devolvida').asInteger ) ;

               Try
                  qrySaldos.Close;
                  qrySaldos.Params.Clear;
                  qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

                  cdsSaldos.Close;
                  cdsSaldos.ProviderName := dspSaldos.Name;
                  cdsSaldos.Open;

                  cdsSaldos.Append;
                  cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                  cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                  cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                  cdsSaldos.FieldByName('E_S').AsString          := 'E';
                  cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsItensVendas.FieldByName('Cod_Produto').asInteger;
                  cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Atual-vlr_Anterior);
                  cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                  cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                  cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                  cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                  cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsItensVendas.FieldByName('Pco_Venda').asFloat)+
                                                                    ' Recebido '+FormatFloat('0.00',cdsItensVendas.FieldByName('Pco_Venda_Atual').asFloat);
                  cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'CREDITO DE DEVOLUCAO';
                  cdsSaldos.Post;
                  cdsSaldos.ApplyUpdates(-1);
                  except
                  frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                  Exit;
               End;

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

procedure TfrmConsVendas.btnCupomFiscalClick(Sender: TObject);
var liRetorno : Integer;
    lsNumeroCupom : String;
    liNumeroVenda : Integer;
    lsNomeCliente : String;
    lsCNPJCPF : String;
    lsMensagem : String;
begin
   if Trim(cdsVendas.FieldByName('NumeroCupom').AsString)<>'' then
   Begin
      CaixaMensagem( 'Esta venda ja teve cupom Emitido ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   lsMensagem := 'Obrigado e volte sempre';
   {
   if CaixaMensagem( 'Deseja informar o nome do Cliente ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      if not inputQuery('Nome do Cliente','Nome do Cliente',lsNomeCliente) Then
         Exit;
      if not inputQuery('CNPJ/CPF','CNPJ ou CPF',lsCNPJCPF) Then
         Exit;
      lsMensagem := 'Cliente:'+lsNomeCliente+#13+#10;
      lsMensagem := lsMensagem +' CNPJ/CPF: '+lsCNPJCPF;
   End;
    }
   If cdsItensVendas.locate('Seqvenda',cdsVendas.FieldByName('SeqVenda').Asinteger, []) Then
   Begin
      liRetorno := Bematech_FI_AbreCupom( '');
      If liRetorno <> 1 Then
      Begin
         CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar abrir o cupom "' +  '" no ECF!!!', ctErro, [ cbOK ], 0 );
         Exit;
      End;
      lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
      liRetorno := Bematech_FI_NumeroCupom( lsNumeroCupom );

      If liRetorno <> 1 Then
      Begin
         CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar abrir o cupom "' +  '" no ECF!!!', ctErro, [ cbOK ], 0 );
         Exit;
      End;

      liNumeroVenda  := cdsVendas.Fieldbyname('seqvenda').asInteger;
      while ( cdsItensVendas.fieldbyname('SeqVenda').AsInteger = liNumeroVenda )  and ( Not cdsItensVendas.Eof )  do
      Begin

          liRetorno := Bematech_FI_VendeItem( cdsItensVendas.fieldbyname('Cod_Produto').AsString,
                                             Copy(cdsItensVendas.fieldbyname('Descricao').AsString, 1, 29 ),
                                             'FF',
                                             'F',
                                             FormatFloat( '0000000', ( cdsItensVendas.fieldbyname('Qtde_Venda').AsFloat * 1000 ) ),
                                             2,
                                             FormatFloat( '000', ( cdsItensVendas.fieldbyname('Pco_Venda').AsFloat * 100 ) ),
                                             '$',
                                             FormatFloat( '00000000', cdsItensVendas.fieldbyname('vlr_Desconto').AsFloat * 100 ) );
        If liRetorno <> 1 Then
        Begin
           CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + cdsItensVendas.fieldbyname('Cod_Produto').AsString+ '" no ECF!!!', ctErro, [ cbOK ], 0 );
           Exit;
        End;
        cdsItensvendas.Next;
      End;
     Bematech_FI_FechaCupomResumido( 'Dinheiro',lsMensagem);
   End
   Else
   Begin
      CaixaMensagem( 'Item da Venda não Localizado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if lsNumeroCupom<>'000000' then
   Begin
      QryModific.Close;
      QryModific.sql.Text := 'Update T_vendas set NumeroCupom=:parNumeroCupom where seqvenda=:parSeqVenda ';
      QryModific.ParamByName('parNumeroCupom').asString := lsNumeroCupom;
      QryModific.ParamByName('parSeqVenda').asInteger   := liNumeroVenda;
      QryModific.ExecSQL;
   End;
   btnselecionarClick(btnSelecionar);
   cdsvendas.locate('seqvenda',liNumeroVenda,[]);
end;

procedure TfrmConsVendas.btnEmproducaoClick(Sender: TObject);
var loDaoItensGrade : TDaoItensVendaGrade;
begin
   if cdsVendas.FieldByName('Status').AsString='3' then
   begin
      CaixaMensagem( 'O Serviço já foi finalizado, Impossivel Colocar em Produção !', ctAviso, [ cbOK ], 0 );
      exit;
   end;

   if cdsVendas.FieldByName('Status').AsString='5' then
   begin
      CaixaMensagem( 'O Serviço esta cancelado, Impossivel Colocar em Produção !', ctAviso, [ cbOK ], 0 );
      exit;
   end;

   if cdsVendas.FieldByName('Status').AsString='2' then
   Begin
      if CaixaMensagem( 'O Serviço ja esta em produção. Deseja Retirar ???', ctConfirma, [ cbSimNao ], 0 )  Then
      Begin
         qryModific.SQL.Text := 'Update T_Vendas set Status=:parStatus Where seqvenda=:parSeqvenda ';
         qryModific.ParamByName('parSeqVenda').AsInteger := StrToInt(cdsVendas.FieldByName('SeqVenda').AsString);
         qryModific.ParamByName('parStatus').AsString    := '1';
         qryModific.ExecSQL;
      End;
   End
   Else
   Begin
      if CaixaMensagem( 'O Serviço não esta em produção. Deseja colocar ???', ctConfirma, [ cbSimNao ], 0 )  Then
      Begin
         qryModific.SQL.Text := 'Update T_Vendas set Status=:parStatus Where seqvenda=:parSeqvenda ';
         qryModific.ParamByName('parSeqVenda').AsInteger := StrToInt(cdsVendas.FieldByName('SeqVenda').AsString);
         qryModific.ParamByName('parStatus').AsString    := '2';
         qryModific.ExecSQL;
      End;
   end;
   frmFinalizaServico := TfrmFinalizaServico.Create(Nil);
   frmFinalizaServico.pIdSeqVenda := cdsVendas.FieldByName('SeqVenda').AsString;
   frmFinalizaServico.ShowModal;

   loDaoItensGrade := TDaoItensVendaGrade.Create(gConexao);
   loDaoItensGrade.AtualizaQtdeProduto(StrToInt(cdsVendas.FieldByName('SeqVenda').AsString));
   freeAndNil(loDaoItensGrade);

   //btnselecionarclick(btnselecionar);
end;

procedure TfrmConsVendas.btnEntregaVendaClick(Sender: TObject);
begin
  inherited;
  MenuItem1Click(MenuItem1);
end;

procedure TfrmConsVendas.btnEntregueClick(Sender: TObject);
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



procedure TfrmConsVendas.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmConsVendas.Etiquetas1Click(Sender: TObject);
var
   liNumeroVenda   : Integer;
   liromaneio : Integer;
begin
   if not gsPerfilacesso.VerificaAcesso('Movimento','Vendas','Devolucao Parcial',gbMaster) Then
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

   frmDevolucaoVenda := TfrmDevolucaoVenda.create(Self);
   frmDevolucaoVenda.piSeqVenda := cdsVendas.FieldByName('Seqvenda').AsInteger;
   frmDevolucaoVenda.piRomaneioId := cdsVendas.FieldByName('RomaneioId').AsInteger;
   if not cdsVendas.FieldByName('SeqOS').IsNull then
      frmDevolucaoVenda.piSeqOS    := cdsVendas.FieldByName('SeqOS').AsInteger;
   frmDevolucaoVenda.grpDevolveItem.Caption := cdsVendas.FieldByName('Seqvenda').AsString+'-'+cdsVendas.FieldByName('Nome_Cliente').AsString;
   frmDevolucaoVenda.ShowModal;

   cdsVendas.Close;
   cdsVendas.Open;

   cdsVendas.Locate('SeqVenda',liNumeroVenda, [] );

end;

procedure TfrmConsVendas.CarregaPropriedade;
begin
end;
 {
procedure TfrmConsVendas.GerarNFe(NumNFe : String);
begin
  with ACBrNFe1.NotasFiscais.Add.NFe do
   begin
     Ide.cNF       := StrToInt(NumNFe); //Caso não seja preenchido será gerado um número aleatório pelo componente
     Ide.natOp     := 'VENDA PRODUCAO DO ESTAB.';
     Ide.indPag    := ipVista;
     Ide.modelo    := 55;
     Ide.serie     := 1;
     Ide.nNF       := StrToInt(NumNFe);
     Ide.dEmi      := Date;
     Ide.dSaiEnt   := Date;
     Ide.hSaiEnt   := Now;
     Ide.tpNF      := tnSaida;
     Ide.tpEmis    := teNormal;
     Ide.tpAmb     := taHomologacao;  //Lembre-se de trocar esta variável quando for para ambiente de produção
     Ide.verProc   := '1.0.0.0'; //Versão do seu sistema
     Ide.cUF       := NotaUtil.UFtoCUF(edtEmitUF.Text);
     Ide.cMunFG    := StrToInt(edtEmitCodCidade.Text);
     Ide.finNFe    := fnNormal;
     if  Assigned( ACBrNFe1.DANFE ) then
        Ide.tpImp     := ACBrNFe1.DANFE.TipoDANFE;

//     Ide.dhCont := date;
//     Ide.xJust  := 'Justificativa Contingencia';

//Para NFe referenciada use os campos abaixo
{     with Ide.NFref.Add do
      begin
        refNFe       := ''; //NFe Eletronica

        RefNF.cUF    := 0;  // |
        RefNF.AAMM   := ''; // |
        RefNF.CNPJ   := ''; // |
        RefNF.modelo := 1;  // |- NFe Modelo 1/1A
        RefNF.serie  := 1;  // |
        RefNF.nNF    := 0;  // |

        RefNFP.cUF     := 0;  // |
        RefNFP.AAMM    := ''; // |
        RefNFP.CNPJCPF := ''; // |
        RefNFP.IE      := ''; // |- NF produtor Rural
        RefNFP.modelo  := ''; // |
        RefNFP.serie   := 1;  // |
        RefNFP.nNF     := 0;  // |

        RefECF.modelo  := ECFModRef2B; // |
        RefECF.nECF    := '';          // |- Cupom Fiscal
        RefECF.nCOO    := '';          // |
      end;
}{
      Emit.CNPJCPF           := edtEmitCNPJ.Text;
      Emit.IE                := edtEmitIE.Text;
      Emit.xNome             := edtEmitRazao.Text;
      Emit.xFant             := edtEmitFantasia.Text;

      Emit.EnderEmit.fone    := edtEmitFone.Text;
      Emit.EnderEmit.CEP     := StrToInt(edtEmitCEP.Text);
      Emit.EnderEmit.xLgr    := edtEmitLogradouro.Text;
      Emit.EnderEmit.nro     := edtEmitNumero.Text;
      Emit.EnderEmit.xCpl    := edtEmitComp.Text;
      Emit.EnderEmit.xBairro := edtEmitBairro.Text;
      Emit.EnderEmit.cMun    := StrToInt(edtEmitCodCidade.Text);
      Emit.EnderEmit.xMun    := edtEmitCidade.Text;
      Emit.EnderEmit.UF      := edtEmitUF.Text;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Emit.IEST              := '';
      Emit.IM                := '2648800'; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := '6201500'; // Verifique na cidade do emissor da NFe se é permitido
                                    // a inclusão de serviços na NFe
      Emit.CRT               := crtRegimeNormal;// (1-crtSimplesNacional, 2-crtSimplesExcessoReceita, 3-crtRegimeNormal)

//Para NFe Avulsa preencha os campos abaixo
{      Avulsa.CNPJ    := '';
      Avulsa.xOrgao  := '';
      Avulsa.matr    := '';
      Avulsa.xAgente := '';
      Avulsa.fone    := '';
      Avulsa.UF      := '';
      Avulsa.nDAR    := '';
      Avulsa.dEmi    := now;
      Avulsa.vDAR    := 0;
      Avulsa.repEmi  := '';
      Avulsa.dPag    := now;             }

  {    Dest.CNPJCPF           := '05481336000137';
      Dest.IE                := '687138770110';
      Dest.ISUF              := '';
      Dest.xNome             := 'D.J. COM. E LOCAÇÃO DE SOFTWARES LTDA - ME';

      Dest.EnderDest.Fone    := '1532599600';
      Dest.EnderDest.CEP     := 18270170;
      Dest.EnderDest.xLgr    := 'Rua Coronel Aureliano de Camargo';
      Dest.EnderDest.nro     := '973';
      Dest.EnderDest.xCpl    := '';
      Dest.EnderDest.xBairro := 'Centro';
      Dest.EnderDest.cMun    := 3554003;
      Dest.EnderDest.xMun    := 'Tatuí';
      Dest.EnderDest.UF      := 'SP';
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

//Use os campos abaixo para informar o endereço de retirada quando for diferente do Remetente/Destinatário
{      Retirada.CNPJCPF := '';
      Retirada.xLgr    := '';
      Retirada.nro     := '';
      Retirada.xCpl    := '';
      Retirada.xBairro := '';
      Retirada.cMun    := 0;
      Retirada.xMun    := '';
      Retirada.UF      := '';}

//Use os campos abaixo para informar o endereço de entrega quando for diferente do Remetente/Destinatário
{      Entrega.CNPJCPF := '';
      Entrega.xLgr    := '';
      Entrega.nro     := '';
      Entrega.xCpl    := '';
      Entrega.xBairro := '';
      Entrega.cMun    := 0;
      Entrega.xMun    := '';
      Entrega.UF      := '';}
 {
//Adicionando Produtos
      with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123456';
         Prod.cEAN     := '7896523206646';
         Prod.xProd    := 'Descrição do Produto';
         Prod.NCM      := '94051010'; // Tabela NCM disponível em  http://www.receita.fazenda.gov.br/Aliquotas/DownloadArqTIPI.htm
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5101';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '7896523206646';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vOutro    := 0;
         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Produto';

//Declaração de Importação. Pode ser adicionada várias através do comando Prod.DI.Add
{         with Prod.DI.Add do
          begin
            nDi         := '';
            dDi         := now;
            xLocDesemb  := '';
            UFDesemb    := '';
            dDesemb     := now;
            cExportador := '';

            with adi.Add do
             begin
               nAdicao     := 1;
               nSeqAdi     := 1;
               cFabricante := '';
               vDescDI     := 0;
             end;
          end;
}
//Campos para venda de veículos novos
{         with Prod.veicProd do
          begin
            tpOP    := toVendaConcessionaria;
            chassi  := '';
            cCor    := '';
            xCor    := '';
            pot     := '';
            Cilin   := '';
            pesoL   := '';
            pesoB   := '';
            nSerie  := '';
            tpComb  := '';
            nMotor  := '';
            CMT     := '';
            dist    := '';
            RENAVAM := '';
            anoMod  := 0;
            anoFab  := 0;
            tpPint  := '';
            tpVeic  := 0;
            espVeic := 0;
            VIN     := '';
            condVeic := cvAcabado;
            cMod    := '';
          end;
}
//Campos específicos para venda de medicamentos
{         with Prod.med.Add do
          begin
            nLote := '';
            qLote := 0 ;
            dFab  := now ;
            dVal  := now ;
            vPMC  := 0 ;
          end;  }
//Campos específicos para venda de armamento
{         with Prod.arma.Add do
          begin
            nSerie := 0;
            tpArma := taUsoPermitido ;
            nCano  := 0 ;
            descr  := '' ;
          end;      }
//Campos específicos para venda de combustível(distribuidoras)
{         with Prod.comb do
          begin
            cProdANP := 0;
            CODIF    := '';
            qTemp    := 0;
            UFcons   := '';

            CIDE.qBCprod   := 0 ;
            CIDE.vAliqProd := 0 ;
            CIDE.vCIDE     := 0 ;

            ICMS.vBCICMS   := 0 ;
            ICMS.vICMS     := 0 ;
            ICMS.vBCICMSST := 0 ;
            ICMS.vICMSST   := 0 ;

            ICMSInter.vBCICMSSTDest := 0 ;
            ICMSInter.vICMSSTDest   := 0 ;

            ICMSCons.vBCICMSSTCons := 0 ;
            ICMSCons.vICMSSTCons   := 0 ;
            ICMSCons.UFcons        := '' ;
          end;}

 {        with Imposto do
          begin
            // lei da transparencia nos impostos
            vTotTrib := 0;

            with ICMS do
             begin
               CST          := cst00;
               ICMS.orig    := oeNacional;
               ICMS.modBC   := dbiValorOperacao;
               ICMS.vBC     := 100;
               ICMS.pICMS   := 18;
               ICMS.vICMS   := 18;
               ICMS.modBCST := dbisMargemValorAgregado;
               ICMS.pMVAST  := 0;
               ICMS.pRedBCST:= 0;
               ICMS.vBCST   := 0;
               ICMS.pICMSST := 0;
               ICMS.vICMSST := 0;
               ICMS.pRedBC  := 0;
             end;

            with IPI do
             begin
               CST      := ipi99 ;
               clEnq    := '999';
               CNPJProd := '';
               cSelo    := '';
               qSelo    := 0;
               cEnq     := '';

               vBC    := 100;
               qUnid  := 0;
               vUnid  := 0;
               pIPI   := 5;
               vIPI   := 5;
             end;         }
{
            with II do
             begin
               vBc      := 0;
               vDespAdu := 0;
               vII      := 0;
               vIOF     := 0;
             end;

            with PIS do
             begin
               CST      := pis99;
               PIS.vBC  := 0;
               PIS.pPIS := 0;
               PIS.vPIS := 0;

               PIS.qBCProd   := 0;
               PIS.vAliqProd := 0;
               PIS.vPIS      := 0;
             end;

            with PISST do
             begin
               vBc       := 0;
               pPis      := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vPIS      := 0;
             end;

            with COFINS do
             begin
               CST            := cof99;
               COFINS.vBC     := 0;
               COFINS.pCOFINS := 0;
               COFINS.vCOFINS := 0;

               COFINS.qBCProd   := 0;
               COFINS.vAliqProd := 0;
             end;

            with COFINSST do
             begin
               vBC       := 0;
               pCOFINS   := 0;
               qBCProd   := 0;
               vAliqProd := 0;
               vCOFINS   := 0;
             end;
}
//Grupo para serviços
{            with ISSQN do
             begin
               vBC       := 0;
               vAliq     := 0;
               vISSQN    := 0;
               cMunFG    := 0;
               cListServ := 1402; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;}
      {    end;
       end ;         }

//Adicionando Serviços
    {  with Det.Add do
       begin
         Prod.nItem    := 1; // Número sequencial, para cada item deve ser incrementado
         Prod.cProd    := '123457';
         Prod.cEAN     := '';
         Prod.xProd    := 'Descrição do Serviço';
         Prod.NCM      := '99';
         Prod.EXTIPI   := '';
         Prod.CFOP     := '5933';
         Prod.uCom     := 'UN';
         Prod.qCom     := 1 ;
         Prod.vUnCom   := 100;
         Prod.vProd    := 100 ;

         Prod.cEANTrib  := '';
         Prod.uTrib     := 'UN';
         Prod.qTrib     := 1;
         Prod.vUnTrib   := 100;

         Prod.vFrete    := 0;
         Prod.vSeg      := 0;
         Prod.vDesc     := 0;

         infAdProd      := 'Informação Adicional do Serviço';

//Grupo para serviços
            with Imposto.ISSQN do
             begin
               cSitTrib  := ISSQNcSitTribNORMAL;
               vBC       := 100;
               vAliq     := 2;
               vISSQN    := 2;
               cMunFG    := 3554003;
               cListServ := '1402'; // Preencha este campo usando a tabela disponível
                               // em http://www.planalto.gov.br/Ccivil_03/LEIS/LCP/Lcp116.htm
             end;
       end ;

      Total.ICMSTot.vBC     := 0;
      Total.ICMSTot.vICMS   := 0;
      Total.ICMSTot.vBCST   := 0;
      Total.ICMSTot.vST     := 0;
      Total.ICMSTot.vProd   := 0;
      Total.ICMSTot.vFrete  := 0;
      Total.ICMSTot.vSeg    := 0;
      Total.ICMSTot.vDesc   := 0;
      Total.ICMSTot.vII     := 0;
      Total.ICMSTot.vIPI    := 0;
      Total.ICMSTot.vPIS    := 0;
      Total.ICMSTot.vCOFINS := 0;
      Total.ICMSTot.vOutro  := 0;
      Total.ICMSTot.vNF     := 100;

      // lei da transparencia de impostos
      Total.ICMSTot.vTotTrib := 0;

      Total.ISSQNtot.vServ   := 100;
      Total.ISSQNTot.vBC     := 100;
      Total.ISSQNTot.vISS    := 2;
      Total.ISSQNTot.vPIS    := 0;
      Total.ISSQNTot.vCOFINS := 0;

{      Total.retTrib.vRetPIS    := 0;
      Total.retTrib.vRetCOFINS := 0;
      Total.retTrib.vRetCSLL   := 0;
      Total.retTrib.vBCIRRF    := 0;
      Total.retTrib.vIRRF      := 0;
      Total.retTrib.vBCRetPrev := 0;
      Total.retTrib.vRetPrev   := 0;}

   {   Transp.modFrete := mfContaEmitente;
      Transp.Transporta.CNPJCPF  := '';
      Transp.Transporta.xNome    := '';
      Transp.Transporta.IE       := '';
      Transp.Transporta.xEnder   := '';
      Transp.Transporta.xMun     := '';
      Transp.Transporta.UF       := '';

{      Transp.retTransp.vServ    := 0;
      Transp.retTransp.vBCRet   := 0;
      Transp.retTransp.pICMSRet := 0;
      Transp.retTransp.vICMSRet := 0;
      Transp.retTransp.CFOP     := '';
      Transp.retTransp.cMunFG   := 0;         }

    {  Transp.veicTransp.placa := '';
      Transp.veicTransp.UF    := '';
      Transp.veicTransp.RNTC  := '';
//Dados do Reboque
{      with Transp.Reboque.Add do
       begin
         placa := '';
         UF    := '';
         RNTC  := '';
       end;}

     { with Transp.Vol.Add do
       begin
         qVol  := 1;
         esp   := 'Especie';
         marca := 'Marca';
         nVol  := 'Numero';
         pesoL := 100;
         pesoB := 110;

         //Lacres do volume. Pode ser adicionado vários
         //Lacres.Add.nLacre := '';
       end;

      Cobr.Fat.nFat  := 'Numero da Fatura';
      Cobr.Fat.vOrig := 100 ;
      Cobr.Fat.vDesc := 0 ;
      Cobr.Fat.vLiq  := 100 ;

      with Cobr.Dup.Add do
       begin
         nDup  := '1234';
         dVenc := now+10;
         vDup  := 50;
       end;

      with Cobr.Dup.Add do
       begin
         nDup  := '1235';
         dVenc := now+10;
         vDup  := 50;
       end;


      InfAdic.infCpl     :=  '';
      InfAdic.infAdFisco :=  '';

      with InfAdic.obsCont.Add do
       begin
         xCampo := 'ObsCont';
         xTexto := 'Texto';
       end;

      with InfAdic.obsFisco.Add do
       begin
         xCampo := 'ObsFisco';
         xTexto := 'Texto';
       end;
//Processo referenciado
{     with InfAdic.procRef.Add do
       begin
         nProc := '';
         indProc := ipSEFAZ;
       end;                 }

      {exporta.UFembarq   := '';;
      exporta.xLocEmbarq := '';

      compra.xNEmp := '';
      compra.xPed  := '';
      compra.xCont := '';
   end;
end;

       }
end.
