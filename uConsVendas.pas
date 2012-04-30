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
  uClassDaoContaCorrente;

type
  TfrmConsVendas = class(TForm)
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
    cxPropertiesStore1: TcxPropertiesStore;
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
    btnCupomFiscal: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    btnImpComprovante: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    btnCancelar: TbsSkinMenuSpeedButton;
    Column_Status_Pagamento: TcxGridDBColumn;
    Print: TPrintDialog;
    checkUsarleitor: TbsSkinCheckRadioBox;
    SkinForm: TbsBusinessSkinForm;
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
    procedure btnCupomFiscalClick(Sender: TObject);
    procedure btnImpComprovanteClick(Sender: TObject);
    procedure BorderodeEntrega1Click(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure VisualizarDevolvidos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure checkUsarleitorClick(Sender: TObject);
  private
    pvilinha  : integer;
    procedure CarregaPropriedade;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsVendas: TfrmConsVendas;

implementation

uses Uprincipal,Ufuncoes, uVendas, UnitDeclaracoes, uSelMotivoStatus, uDaoCaixaMovimento,
  udevolucaoVenda, uConsItensDevolvidos, uDaoVenda, uClassVenda, uDaoItemVenda,
  uclassContaCorrente;

{$R *.dfm}

procedure TfrmConsVendas.btnSelecionarClick(Sender: TObject);
begin
   qryVendas.Close;
   qryVendas.Params.Clear;
   qryVendas.SQL.Text :='Select Cli.Descricao, cli.cnpjcpf, fun.Descricao as Vendedor, Ven.*  From  T_Vendas Ven '+
                        'Left Join T_Clientes Cli On  '+
                        '     Cli.Codigo=Ven.Cod_Cliente '+
                        'Left Join T_Funcionarios Fun On '+
                        '     Fun.Codigo=Ven.Cod_funcionario '+
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

   //-------------------------------------itens vendas ----------------------------------------------

   qryItensVendas.Close;
   qryItensVendas.SQL.Text := 'Select Prod.Unid as Unidade, Prod.Codigo, Prod.Aliquota_ECF, Prod.Descricao, Prod.Pco_Venda as Pco_Venda_Atual, '+
                              'Prod.Pco_Custo, Itens.* '+
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

   if frmconsvendas.tag=3 then
      qryItensVendas.ParamByName('parTipo_Venda').AsString :='S'
   Else
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


procedure TfrmConsVendas.btnCupomFiscalClick(Sender: TObject);
var liRetorno : Integer;
    lsNumeroCupom : String;
    liNumeroVenda : Integer;
begin

   if Trim(cdsVendas.FieldByName('NumeroCupom').AsString)<>'' then
   Begin
      CaixaMensagem( 'Esta venda ja teve cupom Emitido ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

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
     Bematech_FI_FechaCupomResumido( 'Dinheiro','Obrigado e volte sempre');
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
End;

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
   DaoVenda := TDaoVenda.Create(gConexao);
   loVenda  := DaoVenda.CarregarVenda(cdsVendas);
   loVenda.VendaID := cdsVendas.FieldByName('SeqVenda').Asinteger;
   lovenda.Empresa.Descricao := GsNomeEmp;
   DaoItemVenda := TDaoItemVenda.Create(gConexao);
   loVenda.Imprimir(cdsVendas,DaoItemVenda.Buscar(loVenda.VendaID),
                    gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),0,
                    StrToint(gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador)));
   FreeAndNil(DaoVenda);
   FreeAndNil(lovenda);
   FreeAndNil(DaoItemVenda);
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

procedure TfrmConsVendas.cdsVendasBeforeOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   CriarCalculado (DataSet,'Nome_Status',ftString,15);
   CriarCalculado (DataSet,'Status_Pagamento',ftString,20);
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

   btnCupomFiscal.Visible := True;
   btnEmproducao.Visible  := True;
   btnEntregue.Visible    := True;
   cmbTipoFiltro.Enabled  := True;
   cmbStatus.Enabled      := True;

   If gsParametros.ReadString('ACESSODADOS','TipoSistema','0') ='0' Then
   Begin
      btnCupomFiscal.Visible := False;
      btnEmproducao.Visible  := False;
      btnEntregue.Visible    := False;
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
   grdvendas.Columns[0].Visible := False;
   grdvendas.Columns[9].Visible := True;
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
      grdvendas.Columns[9].Visible := False;
      grdvendas.Columns[0].Visible := True;
   End;
   btnImpComprovante.Visible :=  RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimiCopiaComprovante','0',gsOperador ));
   btnSelecionarClick(btnSelecionar);
end;

procedure TfrmConsVendas.BorderodeEntrega1Click(Sender: TObject);
var liSeqVenda     : Integer;
    trdNrTransacao : TTransactionDesc;
    vlr_anterior   : Double;
    vlr_Atual      : Double;
    liNumeroVenda   : Integer;
    loDaoCaixaMovimento : TDaoCaixaMovimento;
    DadosContaCorrente  : TContaCorrente;
    GravaContaCorrente  : TDaoContaCorrente;
begin

{$REGION 'Inicializando Variaveis'}

   liNumeroVenda  := cdsVendas.Fieldbyname('seqvenda').asInteger;
   liSeqVenda     := cdsVendas.FieldByName('SeqVenda').AsInteger;

   {$ENDREGION}

{$REGION 'Fazendo Criticas do Processo'}

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
   if cdsVendas.FieldByName('Status').AsString = '3' Then
   Begin
      CaixaMensagem( 'Venda ja finalizada ', ctAviso, [ cbOk ],0 );
      Exit
   End;

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

procedure TfrmConsVendas.btnEmproducaoClick(Sender: TObject);
begin
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
   btnselecionarclick(btnselecionar);
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
      {
      Parametros := TStringList.Create;
      Parametros.Add(cdsVendas.FieldByName('SeqVenda').AsString);
      cdsVendas := gConexao.BuscarDadosSQL('Select * From T_vendas Where SeqVenda=:parSeqVenda', Parametros );
      DaoVenda := TDaoVenda.Create(gConexao);
      Venda := DaoVenda.CarregarVenda(cdsVendas);
      venda.Numerovias := StrtoInt(gParametros.ler( '', '[IMPRESSAO]', 'NumeroVias','1',gsOperador ));
       }
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
begin

   liNumeroVenda  := cdsVendas.Fieldbyname('seqvenda').asInteger;

   frmDevolucaoVenda := TfrmDevolucaoVenda.create(Self);
   frmDevolucaoVenda.piSeqVenda := cdsVendas.FieldByName('Seqvenda').AsInteger;
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

end.
