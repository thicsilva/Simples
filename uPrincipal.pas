unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, cxStyles, cxGridTableView, BusinessSkinForm,
  ufuncoes,cl_TPerfil,
  bsSkinShellCtrls, bsSkinCtrls, bsSkinData, ActnList, XPStyleActnCtrls,
  ActnMan, ImgList, bsCategoryButtons,IniFiles, DBXpress, DB, SqlExpr,
  StdCtrls, verslab, dxBar, dxRibbon, dxStatusBar, dxRibbonStatusBar,
  cxControls, dxBarExtItems, cxGraphics,MIDASLIB, WideStrings, cxPropertiesStore,
  DBClient, SimpleDS, dxRibbonGallery, FMTBcd, Provider, RDprint, ExtCtrls,
  SqlTimSt, bsSkinExCtrls, dxGDIPlusClasses, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, dxSkinsdxBarPainter, DBXMsSQL ;

type
  TfrmPrincipal = class(TForm)
    actManeger: TActionManager;
    actCadClientes: TAction;
    actCadFornecedores: TAction;
    actVendas: TAction;
    actEntradas: TAction;
    ActConsultaVenda: TAction;
    actCtasPagar: TAction;
    actCaixaDespesas: TAction;
    actCtasReceber: TAction;
    actSair: TAction;
    actCadUsuarios: TAction;
    actParametros: TAction;
    actSkins: TAction;
    SkinPrincipal: TbsSkinData;
    SkinEstorage1: TbsCompressedStoredSkin;
    OD: TbsOpenSkinDialog;
    SkinForm: TbsBusinessSkinForm;
    GrupoEstilos: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    actCadAtividades: TAction;
    actCadFuncionarios: TAction;
    cxLargeImages: TcxImageList;
    cxSmallImages: TcxImageList;
    MenuManeger: TdxBarManager;
    BarAtalhosCustomizados: TdxBar;
    dxBarCadPrincipal: TdxBar;
    dxBarCadFinanceiro: TdxBar;
    dxBarCadSecubdarios: TdxBar;
    BtnClientes: TdxBarLargeButton;
    btnFornecedores: TdxBarLargeButton;
    btnAtividades: TdxBarButton;
    btnPlanoContas: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxRibCadastro: TdxRibbonTab;
    MenuPrincipal: TdxRibbon;
    StatusBar: TdxRibbonStatusBar;
    dxBarButton1: TdxBarButton;
    actCadRotas: TAction;
    actCadFormasPagamento: TAction;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    actSequencias: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    MenuPrincipalTab1: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    actServicos: TAction;
    GridTableViewStyleSheetWindowsStandard: TcxGridTableViewStyleSheet;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    actconsServicos: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    Imagebutoes: TcxImageList;
    dxBarButton6: TdxBarButton;
    actCadGrupos: TAction;
    sdtsSequencia: TSimpleDataSet;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    GridTableViewStyleSheetWindowsClassic: TcxGridTableViewStyleSheet;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    imageMenu24x24: TcxImageList;
    ImageMenu32x32: TcxImageList;
    actFiscalReducaoZ: TAction;
    actFiscalLeituraX: TAction;
    actFiscalMemoriaFiscal: TAction;
    actFiscalCancelaCupom: TAction;
    actFiscalCancelaCupomAberto: TAction;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    comboDataIni: TdxBarDateCombo;
    combodatafim: TdxBarDateCombo;
    dxBarLargeButton5: TdxBarLargeButton;
    SkinEntradaDados: TbsSkinData;
    skinStorage2: TbsCompressedStoredSkin;
    MenuPrincipalTab2: TdxRibbonTab;
    MenuManegerBar2: TdxBar;
    dxBarButton12: TdxBarButton;
    actSelRelSaldos: TAction;
    actSelRelVendaRepresentante: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    MenuManegerBar4: TdxBar;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actSelRelVendas: TAction;
    dxBarButton14: TdxBarButton;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    MenuManegerBar5: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    MenuPrincipalTab3: TdxRibbonTab;
    dxBarGroup1: TdxBarGroup;
    MenuManegerBar6: TdxBar;
    RibonFiscal: TdxBar;
    MenuManegerBar8: TdxBar;
    MenuManegerBar1: TdxBar;
    dxBarLargeButton12: TdxBarLargeButton;
    actSelRelExtratoEstoque: TAction;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton13: TdxBarLargeButton;
    actCadPerfil: TAction;
    actfechadia: TAction;
    dxBarLargeButton14: TdxBarLargeButton;
    actControleRepasse: TAction;
    dxBarButton17: TdxBarButton;
    actSelRelDevolucoes: TAction;
    RibonAtendimentoCliente: TdxRibbonTab;
    actAbreOs: TAction;
    MenuManegerBar7: TdxBar;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton16: TdxBarLargeButton;
    actManutencaoOS: TAction;
    bsSkinLinkImage1: TbsSkinLinkImage;
    cdsProcedimento: TClientDataSet;
    dspvariavel: TDataSetProvider;
    qryVariavel: TSQLQuery;
    qryModific: TSQLQuery;
    MenuManegerBar9: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    actCadProposta: TAction;
    Action1: TAction;
    MenuManegerBar10: TdxBar;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton20: TdxBarLargeButton;
    actAcessoDados: TAction;
    actConifgMenu: TAction;
    MenuManegerBar11: TdxBar;
    actSelRelEntradas: TAction;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    actCadFabricantes: TAction;
    dxBarButton20: TdxBarButton;
    Action2: TAction;
    ImpMatricial: TRDprint;
    lblVersao: TVersionLabel;
    actCadTipoVenda: TAction;
    dxBarButton21: TdxBarButton;
    actPlanilhaRecebimento: TAction;
    dxBarLargeButton21: TdxBarLargeButton;
    dbxPrincipal: TSQLConnection;
    procedure actSkinsExecute(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCadClientesExecute(Sender: TObject);
    procedure actCadAtividadesExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCadFuncionariosExecute(Sender: TObject);
    procedure actCadOperacoesExecute(Sender: TObject);
    procedure actCadProdutosExecute(Sender: TObject);
    procedure actCadRotasExecute(Sender: TObject);
    procedure actCadFormasPagamentoExecute(Sender: TObject);
    procedure actParametrosExecute(Sender: TObject);
    procedure actSequenciasExecute(Sender: TObject);
    procedure actVendasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCtasReceberExecute(Sender: TObject);
    procedure actServicosExecute(Sender: TObject);
    procedure ActConsultaVendaExecute(Sender: TObject);
    procedure actconsServicosExecute(Sender: TObject);
    procedure actCaixaDespesasExecute(Sender: TObject);
    procedure actCadGruposExecute(Sender: TObject);
    procedure actFiscalReducaoZExecute(Sender: TObject);
    procedure actFiscalLeituraXExecute(Sender: TObject);
    procedure actFiscalMemoriaFiscalExecute(Sender: TObject);
    procedure actFiscalCancelaCupomExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actFiscalCancelaCupomAbertoExecute(Sender: TObject);
    procedure actCadFornecedoresExecute(Sender: TObject);
    procedure actEntradasExecute(Sender: TObject);
    procedure actSelRelVendasExecute(Sender: TObject);
    procedure actSelRelSaldosExecute(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure actSelRelVendaRepresentanteExecute(Sender: TObject);
    procedure actCadUsuariosExecute(Sender: TObject);
    procedure actSelRelExtratoEstoqueExecute(Sender: TObject);
    procedure actfechadiaExecute(Sender: TObject);
    procedure actCtasPagarExecute(Sender: TObject);
    procedure actControleRepasseExecute(Sender: TObject);
    procedure actSelRelDevolucoesExecute(Sender: TObject);
    procedure actAbreOsExecute(Sender: TObject);
    procedure actManutencaoOSExecute(Sender: TObject);
    procedure actCadPerfilExecute(Sender: TObject);
    procedure actCadPropostaExecute(Sender: TObject);
    procedure actSelRelEntradasExecute(Sender: TObject);
    procedure actCadFabricantesExecute(Sender: TObject);
    procedure actCadTipoVendaExecute(Sender: TObject);
    procedure actPlanilhaRecebimentoExecute(Sender: TObject);
  private
    pviLinha : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

  gsOperador     : String;
  gsCod_Operador : String;
  Gsversis       : String;
  GsNomeEmp      : String;
  GstituloRel    : String;
  gsPeriodoRel   : String;
  gsCod_Emp      : String;
  gsData_Mov     : TDateTime;
  gsPath         : String;
  gsParametros   : TIniFile;
  gbMaster       : Boolean;

  gsModeloECF    : String;
  gbECFArredonda : boolean;
  gbAcesso       : boolean;
  gsSerieECF     : String;
  gsHoraECF      : String;
  gsUFEmp        : String;
  gbSenhaMaster  : boolean;
  gsPerfilAcesso : Tperfil;

  gxLinha         : array[ 1..5 ]  of string;

implementation

uses uCadClientes, uCadAtividades, uCadFuncionarios, uCadOperacoes,
  uCadProdutos, uCadRotas, uCadFormaPagamento, uParametros, usequencias,
  uVendas, uCtasreceber , uConsVendas, uMovCaixa, uCadGrupos,UnitDeclaracoes,
  uCadFornecedores, uEntradas, uselrelvendasVendedor,
  ucadUsuarios, uselrelContaCorrenteEstoque, uFechaDia, uCtaspagar,
  uControleRepasse, uSelRelDevolucoes, uAbreOS, uConsultaOrdemServico,
  uCadPerfil, uProposta, uSelRelEntradas, uselrelvendas, uCadFabricantes,
  ucadTipoVenda;

{$R *.dfm}

procedure TfrmPrincipal.actSkinsExecute(Sender: TObject);
var
  Ext: String;
begin
   OD.SkinData := SkinPrincipal;
   if OD.Execute then
   begin
     Ext := ExtractFileExt(OD.FileName);
     if LowerCase(Ext) = '.ini'
     then
       SkinPrincipal.LoadFromFile(OD.FileName)
     else
     if LowerCase(Ext) = '.skn'
     then
       SkinPrincipal.LoadFromCompressedFile(OD.FileName);
       gsParametros.WriteString('ADM','SkinPadrao',OD.FileName);
   end;
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TfrmPrincipal.actCadClientesExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadClientes := TfrmCadClientes.create(Self);
   frmCadClientes.show;
end;

procedure TfrmPrincipal.actAbreOsExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmabreos := tfrmabreos.create(Self);
   frmabreos.showmodal;
end;

procedure TfrmPrincipal.actCadAtividadesExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadAtividades := TfrmCadAtividades.create(Self);
   frmCadAtividades.showModal;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
   gParametros              := TParametros.Create;

   // -> Buscando a data do movimento
   sdtsSequencia.Close;
   sdtsSequencia.DataSet.CommandText := 'SELECT * FROM T_Sequencias where Tipo_sequencia=:parTipo_Sequencia';
   sdtsSequencia.DataSet.ParamByName('parTipo_Sequencia').AsString := 'Data_Mov';
   sdtsSequencia.Open;
   gsData_Mov := StrToDate(sdtsSequencia.FieldByName('sequencia').AsString);
   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'Data_Automatica', 'NAO' )) = 'NAO' Then
      gsData_Mov := StrToDate(FormatDatetime('dd/mm/yyyy',now));
   StatusBar.Panels[0].Text := 'Data do Movimento .: '+FormatDatetime('dd/mm/yyyy',gsData_Mov);
   // <- Buscando a data do movimento

   // -> Buscando versao de sistema
   MenuPrincipal.ActiveTab := dxRibCadastro ;
   lblVersao.Filename:= gspath+'simples.exe';
   lblVersao.Enabled := True;
   frmPrincipal.Caption := frmPrincipal.Caption + ' '+lblVersao.InfoString;
   // <- Buscando versao de sistema

   // -> Buscando Operador e empresa
  // gsOperador := '--- A Definir ---';
   gsCod_Emp  := '001';
   StatusBar.Panels[1].Text := 'Operador .: '+gsOperador;
   // -> Buscando Operador e empresa
   StatusBar.Update;

   GsNomeEmp  := gsParametros.ReadString('CONFIG_SISTEMA','NomeEmpresa','Informe a empresa nos parametros');


   StatusBar.Panels[2].Text := 'Turno.: ';

   actServicos.Visible      := False;
   actconsServicos.Visible  := False;
   actCaixaDespesas.Visible := False;
   //MenuPrincipal.Tabs[0].Visible :=False
   RibonFiscal.Visible              := False;
   RibonAtendimentoCliente.Visible  := False;

   if not DirectoryExists( gsPath + 'Config' ) then
      CreateDir( gsPath + 'Config' );

   If gsParametros.ReadString('ACESSODADOS','TipoSistema','0') ='1' Then
   Begin
       actServicos.Visible      := True;
       actconsServicos.Visible  := True;
       actCaixaDespesas.Visible := True;
       RibonFiscal.Visible      := True;
       RibonAtendimentoCliente.Visible  := True
   End;

   MenuPrincipal.BarManager.loadFromIniFile(gspath+'ConfigMenu.ini');

   {$REGION 'Incluir titulos no repasse '}

   if formatDateTime('dd/mm/yyyy', now) <> gsParametros.ReadString('AMBIENTE','data_repasse', '01/01/2008' ) Then
   Begin
      If Uppercase(Formatdatetime('ddd',Now))='QUA' Then
      Begin
         QryVariavel.Close;
         QryVariavel.Params.Clear;
         QryVariavel.SQL.Text := 'SELECT Documento, Sequencia FROM T_Ctasreceber '+
                                 'WHERE Status=:parStatus and '+
                                 '      ( Data_Vencimento>=:parData_VencimentoIni and Data_Vencimento<=:parData_VencimentoFim )';

         QryVariavel.ParamByName('parData_VencimentoIni').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-7);
         QryVariavel.ParamByName('parData_VencimentoFim').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov-2);
         QryVariavel.ParamByName('parStatus').AsString                    := '0';

         cdsProcedimento.Close;
         cdsProcedimento.ProviderName := dspVariavel.name;
         cdsProcedimento.Open;

         while not  cdsProcedimento.Eof do
         Begin
            qryModific.Close;
            qryModific.Params.Clear;
            qryModific.SQL.Text := 'Update T_Ctasreceber set Repasse=:parRepasse, data_Repasse=:parData_Repasse '+
                                    'Where Documento=:parDocumento and Sequencia=:parSequencia';
            qryModific.ParamByName('parDocumento').asString           := cdsProcedimento.FieldByName('Documento').AsString;
            qryModific.ParamByName('parRepasse').asString             := 'S';
            qryModific.ParamByName('parData_Repasse').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(now);
            qryModific.ParamByName('parSequencia').asInteger          := cdsProcedimento.FieldByName('Sequencia').AsInteger;
            qryModific.ExecSQL;
            cdsProcedimento.Next;
         End;
         gsParametros.WriteString('AMBIENTE','data_repasse',formatDateTime('dd/mm/yyyy', now));
      End;
   End;
   {$ENDREGION}

   
   {$REGION 'Ajustes no Banco de Dados'}

   if not ExisteCampo( 'T_Vendas', 'Cod_TipoVenda', FrmPrincipal.dbxPrincipal ) then
   begin
      qryModific.Close;
      qryModific.SQL.Text := 'ALTER TABLE T_Vendas ADD Cod_TipoVenda Integer ';
      qryModific.ExecSQL;
   end;

   if not ExisteCampo( 'T_ItensVendas', 'Perc_Comis', FrmPrincipal.dbxPrincipal ) then
   begin
      qryModific.Close;
      qryModific.SQL.Text := 'ALTER TABLE T_ItensVendas ADD Perc_Comis Float ';
      qryModific.ExecSQL;
   end;

   if not ExisteCampo( 'T_Ctasreceber', 'Fechado', FrmPrincipal.dbxPrincipal ) then
   begin
      qryModific.Close;
      qryModific.SQL.Text := 'ALTER TABLE T_Ctasreceber ADD Fechado integer ';
      qryModific.ExecSQL;
   end;

   if not ExisteCampo( 'T_Ctasreceber', 'Lote', FrmPrincipal.dbxPrincipal ) then
   begin
      qryModific.Close;
      qryModific.SQL.Text := 'ALTER TABLE T_Ctasreceber ADD Lote integer ';
      qryModific.ExecSQL;
   end;

   if not ExisteCampo( 'T_Clientes', 'Contrato', FrmPrincipal.dbxPrincipal ) then
   begin
      qryModific.Close;
      qryModific.SQL.Text := 'ALTER TABLE T_Clientes ADD Contrato Varchar(10) ';
      qryModific.ExecSQL;
   end;


   {$ENDREGION}


end;

procedure TfrmPrincipal.impMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                                Unid.  Saldo  pco.Venda     Total');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmPrincipal.actCadFuncionariosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadFuncionarios := TfrmCadFuncionarios.create(Self);
   frmCadFuncionarios.showModal;
end;

procedure TfrmPrincipal.actCadGruposExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmcadgrupos := tfrmCadGrupos.create(Self);
   frmcadgrupos.showmodal;
end;

procedure TfrmPrincipal.actCadOperacoesExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadOperacoes := TfrmCadOperacoes.create(Self);
   frmCadOperacoes.showModal;
end;

procedure TfrmPrincipal.actCadPerfilExecute(Sender: TObject);
begin
  if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
  Begin
     CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
     Exit;
  End;
  frmcadperfil := TfrmCadPerfil.create(Self);
  frmcadperfil.showmodal;
end;

procedure TfrmPrincipal.actCadProdutosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadProdutos := TfrmCadProdutos.create(Self);
   frmCadProdutos.showModal;
end;

procedure TfrmPrincipal.actCadPropostaExecute(Sender: TObject);
begin
   frmProposta := TfrmProposta.Create(Self);
   frmProposta.showmodal;
   freeandNil(frmProposta);
end;

procedure TfrmPrincipal.actCadRotasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadRotas := TfrmCadRotas.create(Self);
   frmCadRotas.showModal;
end;

procedure TfrmPrincipal.actCadTipoVendaExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmcadTipoVenda := TfrmcadTipoVenda.create(Self);
   frmcadTipoVenda.showmodal;
end;

procedure TfrmPrincipal.actCadUsuariosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmcadUsuarios := TfrmcadUsuarios.create(Self);
   frmcadUsuarios.showmodal;
end;

procedure TfrmPrincipal.actCaixaDespesasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmMovCaixa := TfrmMovCaixa.create(self);
   frmmovcaixa.showmodal;
end;

procedure TfrmPrincipal.actconsServicosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmConsVendas := TfrmConsVendas.Create(Nil);
   frmconsvendas.tag := 3;
   frmConsVendas.showmodal;
end;

procedure TfrmPrincipal.ActConsultaVendaExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmConsVendas := TfrmConsVendas.Create(Nil);
   frmConsVendas.showmodal;
end;

procedure TfrmPrincipal.actCadFabricantesExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadFabricantes := TfrmCadFabricantes.create(Self);
   frmCadFabricantes.showModal;
end;

procedure TfrmPrincipal.actCadFormasPagamentoExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCadFormaPagamento := TfrmCadFormaPagamento.create(Self);
   frmCadFormaPagamento.showModal;
end;

procedure TfrmPrincipal.actCadFornecedoresExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmcadFornecedores := TFrmCadFornecedores.Create(self);
   frmcadfornecedores.showmodal
end;

procedure TfrmPrincipal.actParametrosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmParametros := TfrmParametros.Create(Self);
   frmParametros.showmodal;
end;

procedure TfrmPrincipal.actPlanilhaRecebimentoExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmControleRepasse := TfrmControleRepasse.create(Self);
   frmControleRepasse.Tag := 1;
   frmControleRepasse.showmodal;
end;

procedure TfrmPrincipal.actSelRelEntradasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSelRelEntradas := TfrmSelRelEntradas.Create(Self);
   frmSelRelEntradas.showmodal;
end;

procedure TfrmPrincipal.actSelRelExtratoEstoqueExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSelRelContaCorrenteEstoque := TfrmSelRelContaCorrenteEstoque.Create(Self);
   frmSelRelContaCorrenteEstoque.showmodal;
end;

procedure TfrmPrincipal.actSelRelSaldosExecute(Sender: TObject);
var lsNome_Grupo : String;
    ldTotalGeral : Double;
begin

   GstituloRel  :='Relatorio Saldo de Prtodutos';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Prod.Cod_Grupo, Gru.Descricao as Grupo,Prod.Codigo, Prod.Descricao, Prod.Unid, '+
                            '       Prod.Saldo,Prod.Pco_Venda '+
                            'From T_Produtos Prod '+
                            'Left Join T_Grupos Gru On ' +
                            '     Gru.Codigo=Prod.Cod_Grupo '+
                            'where Tipo_Produto=:parTipo_Produto ' +
                            'Order by Prod.Cod_grupo,Prod.Descricao ';
   qryRelatorio.ParamByName('parTipo_Produto').AsString := '0';

   {
   If cmbTipoRel.ItemIndex = 0 Then
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'P'
   Else
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'S';
   }
   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   cdsRelatorio.First;
   ldTotalGeral := 0;
   while not cdsRelatorio.Eof do
   Begin
      if lsNome_Grupo<>cdsRelatorio.FieldByName('Grupo').AsString then
      Begin
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,inczero(cdsRelatorio.FieldByName('Cod_Grupo').AsString,4)+'-'+cdsRelatorio.FieldByName('Grupo').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Grupo:=cdsRelatorio.FieldByName('Grupo').AsString;
      End;
      impmatricial.Imp(pvilinha,001,IncZero(cdsRelatorio.FieldByName('Codigo').AsString,5)+' '+cdsRelatorio.FieldByName('Descricao').AsString );
      impmatricial.Imp(pvilinha,050,cdsRelatorio.FieldByName('unid').AsString );
      impmatricial.Impd(pvilinha,060,FormatFloat('0',cdsRelatorio.FieldByName('saldo').AsFloat),[] );
      impmatricial.Impd(pvilinha,070,FormatFloat(',0.00',cdsRelatorio.FieldByName('Pco_Venda').AsFloat),[] );
      if cdsRelatorio.FieldByName('saldo').AsFloat > 0 then
         impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',(cdsRelatorio.FieldByName('saldo').AsFloat*cdsRelatorio.FieldByName('Pco_Venda').AsFloat)),[] )
      Else
         impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',0 ),[] );

      pviLinha:=Pvilinha+1;
      if pvilinha>60 then
         impmatricial.Novapagina;
      if cdsRelatorio.FieldByName('saldo').AsFloat > 0 then
         ldTotalGeral := ldTotalGeral + (cdsRelatorio.FieldByName('saldo').AsFloat*cdsRelatorio.FieldByName('Pco_Venda').AsFloat);
      cdsRelatorio.next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,'Total do Estoque....');
   impmatricial.Impd(pvilinha,080,FormatFloat(',0.00',ldTotalGeral),[] );
   impmatricial.Fechar;
end;

procedure TfrmPrincipal.actSelRelVendaRepresentanteExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSelRelVendasVendedor := TfrmSelRelVendasVendedor.create(Self);
   frmSelRelVendasVendedor.showmodal;
end;

procedure TfrmPrincipal.actSelRelVendasExecute(Sender: TObject);
begin

   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSelRelVendas := TfrmSelRelVendas.create(Self);
   frmSelRelVendas.showmodal;
  
end;

procedure TfrmPrincipal.actSequenciasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSequencias := TfrmSequencias.create(Self);
   frmSequencias.showmodal;
end;

procedure TfrmPrincipal.actVendasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   FrmVendas := TfrmVendas.create(Self);
   frmVendas.Showmodal;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   MenuPrincipal.BarManager.SaveToIniFile(gsPath+'configMenu.ini');
   Application.Terminate;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

   gsPath := ExtractFilePath( ParamStr( 0 ) );
   If Copy( gsPath, Length(gsPath), 1) <> '\' Then
     gsPath := gsPath+'\';
   gsParametros := TIniFile.Create(gsPath+'Config.ini');

   dbxPrincipal.Close;
   dbxPrincipal.Params.Values[ 'HostName' ]  := gsParametros.ReadString('ACESSODADOS','HostName','(Local)');
   dbxPrincipal.Params.Values[ 'DataBase' ]  := gsParametros.ReadString('ACESSODADOS','DataBaseName','Controler');
   dbxPrincipal.Params.Values[ 'User_Name' ] := gsParametros.ReadString('ACESSODADOS','Usuario','Controler');
   dbxPrincipal.Params.Values[ 'Password' ]  := gsParametros.ReadString('ACESSODADOS','Senha','remoto');
   dbxPrincipal.LoginPrompt := False;
   dbxPrincipal.Open;

end;

procedure TfrmPrincipal.actControleRepasseExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmControleRepasse := TfrmControleRepasse.create(Self);
   frmControleRepasse.Tag := 0;
   frmControleRepasse.showmodal;
end;

procedure TfrmPrincipal.actCtasPagarExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCtasPagar := TfrmCtasPagar.create(Self);
   frmCtasPagar.showmodal;
end;

procedure TfrmPrincipal.actCtasReceberExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmCtasReceber := TfrmCtasReceber.create(Self);
   frmCtasReceber.show;
end;

procedure TfrmPrincipal.actEntradasExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmentradas := Tfrmentradas.create(Self);
   frmentradas.showModal;
end;

procedure TfrmPrincipal.actfechadiaExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmfechadia := tfrmfechadia.create(self);
   frmfechadia.showmodal;
end;

procedure TfrmPrincipal.actFiscalCancelaCupomAbertoExecute(Sender: TObject);
var liretorno : integer;
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   liRetorno := Bematech_FI_CancelaCupomMFD('','','');
   If liRetorno <> 1 Then
   Begin
      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Emitir a leitura X "' + '" no ECF!!!', ctErro, [ cbOK ], 0 );
      Exit;
   End;
end;

procedure TfrmPrincipal.actFiscalCancelaCupomExecute(Sender: TObject);
var liretorno : integer;
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   liRetorno := Bematech_FI_CancelaCupomMFD('','','');
   If liRetorno <> 1 Then
   Begin
      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Emitir a leitura X "' + '" no ECF!!!', ctErro, [ cbOK ], 0 );
      Exit;
   End;
end;

procedure TfrmPrincipal.actFiscalLeituraXExecute(Sender: TObject);
var liretorno : integer;
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   liretorno := Bematech_FI_LeituraX();
   If liRetorno <> 1 Then
   Begin
      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Emitir a leitura X "' + '" no ECF!!!', ctErro, [ cbOK ], 0 );
      Exit;
   End;
end;

procedure TfrmPrincipal.actFiscalMemoriaFiscalExecute(Sender: TObject);
var liretorno : integer;
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   liretorno := Bematech_FI_LeituraMemoriaFiscalData( FormatDateTime('dd/mm/yyyy',ComboDataIni.Date), FormatDateTime('dd/mm/yyyy',ComboDataFim.Date) );
   If liRetorno <> 1 Then
   Begin
      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Emitir a leitura X "' + '" no ECF!!!', ctErro, [ cbOK ], 0 );
      Exit;
   End;
end;

procedure TfrmPrincipal.actFiscalReducaoZExecute(Sender: TObject);
var liretorno : integer;
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   liretorno := Bematech_FI_ReducaoZ(FormatDateTime('dd/mm/yyyy',now),formatDateTime('HH:MM:SS',now));
   If liRetorno <> 1 Then
   Begin
      CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar Emitir a leitura X "' + '" no ECF!!!', ctErro, [ cbOK ], 0 );
      Exit;
   End;
End;

procedure TfrmPrincipal.actManutencaoOSExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmConsultaOrdemServico := TfrmConsultaOrdemServico.Create(Self);
   frmConsultaOrdemServico.show;
end;

procedure TfrmPrincipal.actSelRelDevolucoesExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   frmSelRelDevolucoes := TfrmSelRelDevolucoes.create(Self);
   frmSelRelDevolucoes.Showmodal;
end;

procedure TfrmPrincipal.actServicosExecute(Sender: TObject);
begin
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   FrmVendas := TfrmVendas.create(Self);
   frmvendas.Tag := 3; // venda de servi�os
   frmVendas.Showmodal;
end;

end.
