unit uMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, bsSkinCtrls, bsdbctrls, bsSkinBoxCtrls, StdCtrls, Mask,
  EditNew, cxGridLevel, cxGridCustomTableView, cxGridTableView,SqlTimst,UformBase,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin, FMTBcd, SqlExpr, BusinessSkinForm, DBClient,
  Provider, RDprint, SimpleDS, cxContainer, cxCheckBox, cxDBEdit,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

const FECHAMENTO = 0;
      RELATORIO = 1;
type
  TfrmMovCaixa = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnPrePagamento: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    GridMovCaixa: TcxGrid;
    GrdDespesas: TcxGridDBTableView;
    Colum_Data: TcxGridDBColumn;
    Colum_Historico: TcxGridDBColumn;
    Colum_Vlr_Credito: TcxGridDBColumn;
    GridMovCaixaLevel1: TcxGridLevel;
    bsSkinTabSheet2: TbsSkinTabSheet;
    PanelConsulta: TbsSkinPanel;
    AtualizaRec: TbsSkinSpeedButton;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    dtpData_Ini: TbsSkinDateEdit;
    qryPesquisa: TSQLQuery;
    dspPesquisa: TDataSetProvider;
    cdsPesquisa: TClientDataSet;
    srcPesquisa: TDataSource;
    colum_NomeD_C: TcxGridDBColumn;
    Colum_Descricao: TcxGridDBColumn;
    colum_Seqvenda: TcxGridDBColumn;
    bsSkinBevel3: TbsSkinBevel;
    btnEstornar: TbsSkinSpeedButton;
    btnFecharcaixa: TbsSkinSpeedButton;
    qryMovCaixa: TSQLQuery;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    srcMovCaixa: TDataSource;
    srcCadOperacoes: TDataSource;
    cdsCadOperacoes: TClientDataSet;
    qryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    impMatricial: TRDprint;
    cdsRelatorio: TClientDataSet;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    btnImprimir: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    cdsCadFormasPagamento: TClientDataSet;
    srcCadFormasPagamento: TDataSource;
    qryModific: TSQLQuery;
    Column_Esrtornado: TcxGridDBColumn;
    cmbPeriodo: TbsSkinComboBox;
    Column_Vlr_Debito: TcxGridDBColumn;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    bsSkinStdLabel13: TbsSkinStdLabel;
    edtDataMov: TbsSkinDateEdit;
    cmbD_C: TbsSkinComboBox;
    EdtValor: TbsSkinEdit;
    Edthistorico: TbsSkinEdit;
    cmbNome_TipoDespesa: TbsSkinDBLookupComboBox;
    cmbCod_TipoDespesa: TbsSkinDBLookupComboBox;
    cmbNome_formaPagamento: TbsSkinDBLookupComboBox;
    lblCliente: TbsSkinStdLabel;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    edtcod_Cliente: TbsSkinEdit;
    cdsCadClientes: TClientDataSet;
    srcCadClientes: TDataSource;
    cmbCaixa: TbsSkinDBLookupComboBox;
    srcCaixa: TDataSource;
    cdsCaixas: TClientDataSet;
    btnRecebimentos: TbsSkinSpeedButton;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbCod_Caixa: TbsSkinDBLookupComboBox;
    cmbNome_Caixa: TbsSkinDBLookupComboBox;
    GrdDespesasColumn1: TcxGridDBColumn;
    chkMostraCaixaFechado: TCheckBox;
    pnlDataovimento: TPanel;
    procedure AtualizaRecClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure cdsPesquisaBeforeOpen(DataSet: TDataSet);
    procedure cdsPesquisaCalcFields(DataSet: TDataSet);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure cmbD_CChange(Sender: TObject);
    procedure cmbCod_TipoDespesaChange(Sender: TObject);
    procedure cmbNome_TipoDespesaChange(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnImprimirClick(Sender: TObject);
    Procedure Limpacampos();
    procedure btnFecharcaixaClick(Sender: TObject);
    procedure btnPrePagamentoClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure edtcod_ClienteExit(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure btnRecebimentosClick(Sender: TObject);
    procedure cmbNome_CaixaChange(Sender: TObject);
    procedure cmbCod_CaixaChange(Sender: TObject);
    procedure GrdDespesasCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    pviLinha : Integer;
    procedure RelatorioDeCaixaModelo01;
    procedure RelatorioDeCaixaModelo02(prTipo : Integer);
    procedure RelatorioDeCaixaModelo04(prTipo : Integer);
    procedure RelatorioDeCaixaModelo03;
    function RetornaSelectDasVendas(Tipo, Turno : integer) : String;
    { Private declarations }
  public
     pvsQualBotao : String;
    { Public declarations }
  end;

var
  frmMovCaixa: TfrmMovCaixa;

implementation

uses uprincipal,ufuncoes, uFechaCaixa, uPrePagamento, uClassContaCorrente,uClassDaoContaCorrente,
     uselDatas, ActnList, uCtasReceber, uDaoCaixaMovimento;
  {$R *.dfm}

procedure TfrmMovCaixa.Limpacampos();
begin
    edtDataMov.Text                 := '';
    cmbD_C.ItemIndex                := 1;
    cmbCod_TipoDespesa.KeyValue     := null;
    cmbNome_TipoDespesa.KeyValue    := null;
    Edthistorico.Text               := '';
    EdtValor.Text                   := '0,00';
    cmbNome_formaPagamento.KeyValue := null;
end;

procedure TfrmMovCaixa.AtualizaRecClick(Sender: TObject);
var lsWhere : String;
begin
   lswhere := '';
   if not chkMostraCaixaFechado.Checked then
      lsWhere :=' and Turno is null ';

  if RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[ADMINISTRATIVO]', 'NaoMostrarExtorno', 'NAO' ))) then
     lsWhere := lsWhere + ' and Estornado<>'+QuotedStr('S');

   qryPesquisa.Close;
   qryPesquisa.Params.Clear;
   qryPesquisa.Sql.Text:= 'Select Desp.Sequencia,Desp.Data_Lancamento,Desp.Cod_TipoDespesa,Desp.SeqVenda,desp.Estornado, '+
                          'Desp.D_C, Desp.Valor, Desp.Historico,Pag.Descricao,desp.Cod_FormaPagamento,Ven.Nome_Cliente '+
                          'From t_movcaixa Desp '+
                          '     inner join t_FormasPagamento pag on Pag.Codigo = Desp.Cod_FormaPagamento '+
                          '     left Join T_vendas Ven on Ven.Seqvenda=Desp.Seqvenda '+
                          'Where Desp.Data_lancamento>=:parData_ini and Desp.Data_lancamento<=:parData_Fim  and  '+
                          'desp.Cod_Caixa=:parCod_Caixa '+lsWhere;
   qryPesquisa.Sql.Add('Order by Data_Lancamento ');
   qryPesquisa.Parambyname('parData_Ini').AsSqltimestamp := StrToSQLTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryPesquisa.Parambyname('parData_Fim').AsSqlTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   qryPesquisa.Parambyname('parCod_Caixa').AsInteger     := cmbCaixa.KeyValue;

   cdsPesquisa.Close;
   cdsPesquisa.ProviderName := dspPesquisa.Name;
   cdsPesquisa.Open;
end;

procedure TfrmMovCaixa.BtnCancelaClick(Sender: TObject);
begin
   PagCadastro.ActivePageIndex  := 0;

   BtnIncluir.Enabled           := True;
   BtnEstornar.Enabled          := True;
   PanelConsulta.Enabled        := True;
   BtnOk.Enabled                := False;
   BtnCancela.Enabled           := False;
   GridMovCaixa.Enabled         := True;
   btnPrePagamento.Enabled      := True;
   btnImprimir.Enabled          := True;
   btnFecharcaixa.Enabled       := True;
   Limpacampos();
end;

procedure TfrmMovCaixa.btnEstornarClick(Sender: TObject);
var trdNrTransacao: TTransactionDesc;
begin
   if cdspesquisa.IsEmpty then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Estornar lançamento', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      if not frmPrincipal.dbxPrincipal.InTransaction then
      begin
         trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
         frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
      end;

      Try
         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_MovCaixa SET Estornado=:parEstornado '+
                                'WHERE Sequencia=:parSequencia ';
         qryModific.ParamByName('parEstornado').AsString  := 'S';
         qryModific.ParamByName('parSequencia').AsInteger :=cdsPesquisa.FieldByName('Sequencia').AsInteger;
         qryModific.ExecSQL;

         QryMovCaixa.Close;
         QryMovCaixa.Params.Clear;
         QryMovCaixa.Sql.Text := 'Select * from t_MovCaixa where 1=2 ';

         cdsMovCaixa.Close;
         cdsMovCaixa.ProviderName := dspMovCaixa.name;
         cdsMovCaixa.Open;
          {
         cdsMovCaixa.Append;
         cdsMovCaixa.FieldByName('Sequencia').asInteger         := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
         cdsMovCaixa.FieldByName('Cod_TipoDespesa').asString    := cdsPesquisa.FieldByName('Cod_TipoDespesa').AsString;
         cdsMovCaixa.FieldByName('Operador').asString           := gsOperador;
         cdsMovCaixa.FieldByName('Valor').asFloat               := cdsPesquisa.FieldByName('Valor').AsFloat;
         cdsMovCaixa.FieldByName('Cod_Caixa').asInteger         := cmbCaixa.KeyValue;
         cdsMovCaixa.FieldByName('Cod_FormaPagamento').asString := cdsPesquisa.FieldByName('Cod_FormaPagamento').AsString;
         cdsMovCaixa.FieldByName('D_C').asString                := 'C';
         if cdsPesquisa.FieldByName('D_C').asString = 'C' then
            cdsMovCaixa.FieldByName('D_C').asString            := 'D';
         cdsMovCaixa.FieldByName('Historico').asString         := 'Estorno do Lancamento Sequencia'+cdsPesquisa.FieldByName('Sequencia').AsString;
         cdsMovCaixa.FieldByName('Data_lancamento').asDatetime := GsData_Mov;
         cdsMovCaixa.FieldByName('SeqVenda').asString          := cdsPesquisa.FieldByName('SeqVenda').AsString;

         cdsMovCaixa.Post;
         cdsMovCaixa.ApplyUpdates(-1);
         }
      Except
         frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      End;
      frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );
   End;
end;

procedure TfrmMovCaixa.btnFecharcaixaClick(Sender: TObject);
var DaoCaixaMovimento : TdaoCaixaMovimento;
begin
   if CaixaMensagem( 'Deseja Fazer o fehamento do Caixa '+cmbCaixa.Text, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      frmFechaCaixa := TfrmFechaCaixa.create(self);
      frmFechaCaixa.piCaixaID := cmbCaixa.KeyValue;
      frmFechaCaixa.showModal;
      if frmfechacaixa.Tag=1 then
      Begin

         RelatorioDeCaixaModelo04(FECHAMENTO);

         DaoCaixaMovimento := TdaoCaixaMovimento.Create(gConexao);

         qryModific.Close;
         qryModific.SQL.Text := 'UPDATE T_MovCaixa SET turno=:parTurno '+
                                'where Data_Lancamento=:parData_Lancamento and Cod_Caixa=:parCod_Caixa and turno is null ';
         qryModific.ParamByName( 'parData_Lancamento' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',gsData_mov));
         qryModific.ParamByName( 'parCod_Caixa' ).AsInteger            := cmbCaixa.KeyValue;
         qryModific.ParamByName( 'parTurno' ).AsInteger                := (DaoCaixaMovimento.RetornarUltimoTurno(gsData_mov,cmbCaixa.KeyValue)+1);
         qryModific.ExecSQL;

         if HeDistribuidora then
         begin
            qryModific.Close;
            qryModific.SQL.Text := 'UPDATE Caixas SET DataMovimento=:parDataMovimento where Codigo=:parCodigo ';
            qryModific.ParamByName( 'parDataMovimento' ).AsSQLTimeStamp := DateTimeToSQLTimeStamp(cdsCaixas.fieldByname('DataMovimento').AsDateTime+1);
            qryModific.ParamByName( 'parCodigo' ).AsString              := '001';
            qryModific.ExecSQL;
            dtpData_Ini.Date := cdsCaixas.fieldByname('DataMovimento').AsDateTime+1;
            dtpData_Fim.date := cdsCaixas.fieldByname('DataMovimento').AsDateTime+1;
            pnlDataovimento.Caption := 'Data do Movimento '+FormatDateTime('dd/mm/yyyy', cdsCaixas.fieldByname('DataMovimento').AsDateTime+1);
         end
         else
         begin
            if ((DaoCaixaMovimento.RetornarUltimoTurno(gsData_mov,cmbCaixa.KeyValue)) = strToint(gParametros.Ler( '', '[CONTASRECEBER]', 'NumeroDeTurnos', '0' ,gsOperador ))) and
               (not DaoCaixaMovimento.TemCaixaAberto(gsData_mov) ) then
            begin
               qryModific.Close;
               qryModific.SQL.Text := 'UPDATE T_Sequencias SET Sequencia=:parSequencia, '+
                                      'Data_Atu=:parData_Atu, Cod_emp=:parCod_emp where Tipo_sequencia=:parTipo_sequencia And Cod_Emp=:parCod_Emp ';
               qryModific.ParamByName( 'parData_Atu' ).AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy hh:mm:ss',now));
               qryModific.ParamByName( 'parSequencia' ).AsString         := FormatDateTime('dd/mm/yyyy',gsData_Mov+1);
               gsData_mov := gsData_mov+1;
               if FormatDateTime('DDD',gsData_Mov)='dom' then
               begin
                  qryModific.ParamByName( 'parSequencia' ).AsString      := FormatDateTime('dd/mm/yyyy',gsData_Mov+1);
                  gsData_mov := gsData_mov+1;
               end;
               qryModific.ParamByName( 'parCod_Emp' ).AsString           := gsCod_Emp;
               qryModific.ParamByName( 'parTipo_Sequencia' ).AsString    := 'Data_Mov';
               frmPrincipal.StatusBar.Panels[0].Text := 'Data do Movimento .: '+qryModific.ParamByName( 'parSequencia' ).AsString;
               qryModific.ExecSQL;
            end;
         end;
      end;
   end;
end;

procedure TfrmMovCaixa.btnFecharClick(Sender: TObject);
begin
   close;
end;

Procedure TfrmMovCaixa.RelatorioDeCaixaModelo02(prTipo : Integer);
var lrTotal_Venda    : Real;
    lrTotal_recebido : Real;
    lrTotal_Baixa    : Real;
    lrTotal_Saidas   : Real;
    lrDiferenca      : Real;
    lrVlr_Saida      : Real;
    lrVlr_Entrada    : Real;
    vlr_Prepagamento : Real;
    lsCod_FormaPagamento : String;
    lbImprimiuCredito : Boolean;
    lbImprimiuDebito  : Boolean;
    sdtsTempPagInformado : TSimpleDataSet;
    lrTotal_Extras: double;
    dataInicial : TDateTime;
    dataFinal : TDateTime;
    lsFiltro : String;
    Turno : Integer;
    lsSelect : String;
    Tipo : Integer;
    NomeTurno: String;
    lrEstrono_Credito : Real;
    lrEstrono_Debito : Real;
    liCod_TipoPagamento : Integer;
    lrTotal : Real;
    lsNomePagamento: String;
    DaoCaixaMovimento : TDaoCaixaMovimento;
begin

   gsTituloRel := 'Movimento dia '+FormatDateTime('dd/mm/yyyy', dtpData_Fim.Date);

   lrTotal_Venda    := 0;
   lrTotal_recebido := 0;
   lrTotal_Extras   := 0;
   lrTotal_Saidas   := 0;
   lrDiferenca      := 0;
   lrTotal_Baixa    := 0;
   lrVlr_Saida      := 0;
   lrVlr_Entrada    := 0;

   if prTipo=RELATORIO then
   begin

      frmSelDatas := TFrmSelDatas.Create(Self);
      frmSelDatas.dtpData_Ini.date := dtpData_Ini.Date;
      frmSelDatas.idCaixa := cmbCaixa.KeyValue;
      frmSelDatas.ShowModal;

      if frmSelDatas.Tag = 1 then
      begin
         dataInicial := frmSelDatas.dtpData_Ini.Date;
         dataFinal   := frmSelDatas.dtpData_Ini.Date;
         Turno       := frmSelDatas.cmbturno.ItemIndex+1;
         NomeTurno   := frmSelDatas.cmbturno.Text;
         Tipo        := frmSelDatas.cmbTipoResumoVenda.ItemIndex;
      end
      else
        exit;
   end
   else
   begin
      dataInicial := gsData_Mov;
      dataFinal   := gsData_Mov;
      Turno       := 0;
      NomeTurno   := 'Fechamento Caixa';
      Tipo        := 1;
   end;

  if Turno = 0  then
      lsFiltro := 'And Turno Is Null'
   else if Turno = -1 then
      lsFiltro := ''
   else
      lsFiltro := 'And Turno=:parturno';


   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 1;
   ImpMatricial.TamanhoQteColunas         := 40;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryVariavel.Close;
   qryVariavel.Sql.Text := RetornaSelectDasVendas(Tipo,Turno);
   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno > 0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;
   impmatricial.Imp(pvilinha,001,cmbCaixa.Text+' - '+NomeTurno);
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;
   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Vendas Efetuadas ');
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      if tipo = 0 then
      begin
         ImpMatricial.imp(pvilinha,001,'Codigo Descricao Grupo ');
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pvilinha,001,'Quant.    Vlr.Medio     Total');
      end
      else
      begin
         ImpMatricial.imp(pvilinha,001,'Codigo Descricao Produto ');
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pvilinha,001,'Quant.    Vlr.Unit      Total');
      end;
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      while not cdsrelatorio.Eof do
      Begin
         impmatricial.Imp(pvilinha,001,Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,20) );
         pviLinha:=Pvilinha+1;
         impmatricial.ImpD(pvilinha,010,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);
         impmatricial.ImpD(pvilinha,020,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),[]);
         impmatricial.ImpD(pvilinha,030,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
         lrTotal_Venda   := lrTotal_Venda+cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Das Vendas...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Venda),[]);
      pviLinha:=Pvilinha+2;
   end;
   // <-- imprimindo resumo das vendas


   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Historico, Valor '+
                           'From t_movcaixa Mov '+
                           'Where data_Lancamento>=:parDataIni and '+
                           '      data_Lancamento<=:parDataFim and '+
                           '      mov.Cod_Caixa=:parCod_Caixa and '+
                           '      Estornado<>:parEstornado and D_C=:parD_C '+lsFiltro+' ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   qryVariavel.Parambyname('parEstornado').AsString     := 'S';
   qryVariavel.Parambyname('parD_C').AsString           := 'D';
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Resumo das Despesas/Saidas ' );
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,' Historico                        Valor');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      lrTotal_Saidas := 0;
      while not cdsrelatorio.Eof do
      Begin
         impmatricial.Imp(pvilinha,001, cdsrelatorio.fieldByname('Historico').asString );
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Valor').asfloat),[]);
         lrTotal_Saidas := lrTotal_Saidas + cdsrelatorio.fieldByname('Valor').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Das Saidas...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Saidas),[]);
      pviLinha:=Pvilinha+2;
   End;


   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Ctas.SeqVenda, Ven.Controle, Ctas.Cod_Cliente, Cli.Descricao, '+
                           '       Ctas.Data_Emissao, Ctas.Data_Vencimento, Ctas.Vlr_Recebido '+
                           'From t_Ctasreceber Ctas, T_Clientes Cli, T_Vendas Ven '+
                           'where Ctas.Status=:parStatus and Ctas.data_Pagamento=:parDataIni and '+
                           '      Ctas.data_emissao<>:parDataIni and Cli.Codigo=Ctas.Cod_Cliente and'+
                           '      Ven.Seqvenda=Ctas.Seqvenda and  ctas.Cod_Caixa=:parCod_Caixa';
   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   qryVariavel.ParamByName('parStatus').AsString        := '1';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Resumo das baixas do Contas a Receber' );
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Codigo Controle Nome do Cliente ');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Emissao    Vencimento         vlr. Pago');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;

      while not cdsrelatorio.Eof do
      Begin
         impmatricial.Imp(pvilinha,001,Inczero(cdsrelatorio.FieldByName('Seqvenda').AsString,8)+' '+Trim(cdsrelatorio.FieldByName('Controle').AsString) );
         impmatricial.Imp(pvilinha,017,Copy(Inczero(cdsrelatorio.FieldByName('Cod_Cliente').AsString,5)+' '+Trim(cdsrelatorio.FieldByName('Descricao').AsString),1,30) );
         pvilinha := pviLinha + 1;
         impmatricial.Imp(pvilinha,001,FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Emissao').asDateTime)+' '+FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Vencimento').asDateTime));
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Recebido').asfloat),[]);
         lrTotal_Baixa := lrTotal_Baixa + cdsrelatorio.fieldByname('Vlr_Recebido').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Das Baixas...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Baixa),[]);
      pviLinha:=Pvilinha+2;
   End;

   // <-- Recebimentos do dia

   // --> recebimentos do caixa
   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Mov.Estornado, Mov.D_C, sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov '+
                           'Where data_Lancamento>=:parDataIni and '+
                           '      data_Lancamento<=:parDataFim and '+
                           '      mov.Cod_Caixa=:parCod_Caixa '+lsFiltro+' '+
                           'Group by mov.D_C, Mov.Estornado ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Resumo de recebimentos do Caixa' );
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      lrEstrono_Debito := 0;
      lrEstrono_Credito := 0;
      lrTotal_Saidas := 0;
      while not cdsrelatorio.Eof do
      Begin
         if (cdsrelatorio.FieldByName('D_C').AsString = 'C') and (cdsrelatorio.FieldByName('Estornado').AsString = 'N')Then
            lrTotal_recebido := lrTotal_recebido + cdsrelatorio.fieldByname('Vlr_Total').asfloat
         Else if (cdsrelatorio.FieldByName('D_C').AsString = 'D') and (cdsrelatorio.FieldByName('Estornado').AsString = 'N')Then
            lrTotal_Saidas   := lrTotal_Saidas + cdsrelatorio.fieldByname('Vlr_Total').asfloat
         Else if (cdsrelatorio.FieldByName('D_C').AsString = 'C') and (cdsrelatorio.FieldByName('Estornado').AsString = 'S')Then
            lrEstrono_Credito   := lrEstrono_Credito + cdsrelatorio.fieldByname('Vlr_Total').asfloat
         Else if (cdsrelatorio.FieldByName('D_C').AsString = 'D') and (cdsrelatorio.FieldByName('Estornado').AsString = 'S')Then
            lrEstrono_Debito   := lrEstrono_Debito + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Recebido.......:');
      impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',(lrTotal_recebido+lrEstrono_Credito)),[]);
      pviLinha:=Pvilinha+1;
      if lrEstrono_Credito>0 then
      begin
         ImpMatricial.imp(pvilinha,001,'Estornos de Credito..:');
         impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',lrEstrono_Credito ),[]);
         pviLinha:=Pvilinha+1;
      end;
      if lrEstrono_Debito>0 then
      begin
         ImpMatricial.imp(pvilinha,001,'Estornos de Debito...:');
         impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',lrEstrono_Debito ),[]);
         pviLinha:=Pvilinha+1;
      end;
      ImpMatricial.imp(pvilinha,001,'Total das Saidas.....:');
      impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',lrTotal_Saidas+lrEstrono_Debito ),[]);
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Saldo..:');
      impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',((lrTotal_recebido-lrTotal_Saidas) ) ),[]);
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;

   End;

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Mov.D_C, Pag.Codigo, '+
                           'Pag.Descricao, sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov '+
                           ' left join  T_FormasPagamento Pag on pag.Codigo=Mov.cod_FormaPagamento '+
                           'Where (data_Lancamento>=:parDataIni and '+
                           '      data_Lancamento<=:parDataFim ) and '+
                           '      mov.Cod_Caixa=:parCod_Caixa  and Estornado=:parEstornado '+lsFiltro+' '+
                           'Group by pag.codigo,pag.descricao,mov.D_C '+
                           'Order by Pag.Codigo,Mov.D_C ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parEstornado').AsString     := 'N';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;


   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   if prTipo<>RELATORIO then
   Begin
      DaoCaixaMovimento := TDaoCaixaMovimento.Create(gConexao);
      sdtsTempPagInformado := TsimpleDataSet.Create(self);
      sdtsTempPagInformado.Connection := frmprincipal.dbxPrincipal;
      sdtsTempPagInformado.dataSet.CommandText := 'Select Pag.*, forma.Descricao from t_PagamentosInformados Pag '+
                                                  'left join t_formaspagamento forma on forma.Codigo=pag.Cod_formapagamento '+
                                                  'where data_mov=:parData_Mov and Cod_Caixa=:parCod_Caixa and Turno=:parTurno ' ;
      sdtsTempPagInformado.dataSet.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
      sdtsTempPagInformado.dataSet.ParamByName('parCod_Caixa').AsInteger := cmbCaixa.KeyValue;
      sdtsTempPagInformado.dataSet.ParamByName('parTurno').AsInteger     := (DaoCaixaMovimento.RetornarUltimoTurno(gsData_mov,cmbCaixa.KeyValue)+1);
      sdtsTempPagInformado.open;
   End;


   impmatricial.Imp(pvilinha,001,'Resumo por Tipo de Pagamento' );
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;      //123456789.123456789.123456789.123456789.
   ImpMatricial.imp(pvilinha,001,'                 Total   Infor.   Difere.');
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;
   liCod_TipoPagamento := cdsrelatorio.FieldByName('Codigo').AsInteger;
   lsNomePagamento := cdsrelatorio.FieldByName('Descricao').AsString;
   lrTotal := 0;

   while not cdsrelatorio.Eof do
   Begin
      if liCod_TipoPagamento <> cdsrelatorio.FieldByName('Codigo').AsInteger then
      begin
         ImpMatricial.imp(pvilinha,001,lsNomePagamento);
         impmatricial.ImpD(pvilinha,021,FormatFloat(',0.00',lrTotal ),[]);
         sdtsTempPagInformado.Locate('Descricao',lsNomePagamento,[]);
         impmatricial.ImpD(pvilinha,032,FormatFloat(',0.00', sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat ),[]);
         impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00', lrTotal - sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat ),[]);
         pvilinha := pviLinha + 1;
         liCod_TipoPagamento := cdsrelatorio.FieldByName('Codigo').AsInteger;
         lsNomePagamento := cdsrelatorio.FieldByName('Descricao').AsString;
         lrTotal := 0;
      end;
      if (cdsrelatorio.FieldByName('D_C').AsString = 'C') Then
         lrTotal := lrTotal + cdsrelatorio.fieldByname('Vlr_Total').asfloat
      Else
         lrTotal := lrTotal - cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      cdsrelatorio.Next;
   End;
   if lrTotal>0 then
   begin
      ImpMatricial.imp(pvilinha,001,lsNomePagamento);
      impmatricial.ImpD(pvilinha,021,FormatFloat(',0.00',lrTotal ),[]);
      sdtsTempPagInformado.Locate('Descricao',lsNomePagamento,[]);
      impmatricial.ImpD(pvilinha,032,FormatFloat(',0.00', sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat ),[]);
      impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00', lrTotal - sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat ),[]);
   end;
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;

  { if prTipo<>RELATORIO then
   Begin
      DaoCaixaMovimento := TDaoCaixaMovimento.Create(gConexao);
      sdtsTempPagInformado := TsimpleDataSet.Create(self);
      sdtsTempPagInformado.Connection := frmprincipal.dbxPrincipal;
      sdtsTempPagInformado.dataSet.CommandText := 'Select Pag.*, forma.Descricao from t_PagamentosInformados Pag '+
                                                  'left join t_formaspagamento forma on forma.Codigo=pag.Cod_formapagamento '+
                                                  'where data_mov=:parData_Mov and Cod_Caixa=:parCod_Caixa and Turno=:parTurno ' ;
      sdtsTempPagInformado.dataSet.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
      sdtsTempPagInformado.dataSet.ParamByName('parCod_Caixa').AsInteger := cmbCaixa.KeyValue;
      sdtsTempPagInformado.dataSet.ParamByName('parTurno').AsInteger     := (DaoCaixaMovimento.RetornarUltimoTurno(gsData_mov,cmbCaixa.KeyValue)+1);
      sdtsTempPagInformado.open;
      impmatricial.Imp(pvilinha,001,'Valores Informados no Fechamento' );
      pvilinha := pviLinha + 1;
      while not sdtsTempPagInformado.Eof do
      Begin
         impmatricial.Imp(pvilinha,001, sdtsTempPagInformado.FieldByName('Descricao').AsString );
         impmatricial.ImpD(pvilinha,039,FormatFloat(',0.00',sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat ),[]);
         sdtsTempPagInformado.Next;
          pvilinha := pviLinha + 1;

      End;
      FreeAndNil(DaoCaixaMovimento);
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pvilinha := pviLinha + 1;
   End;   }
   pviLinha:=Pvilinha+3;
   ImpMatricial.imp (pvilinha,001,'.');
   ImpMatricial.TamanhoQteLinhas := pviLinha;
   ImpMatricial.fechar
end;

function TfrmMovCaixa.RetornaSelectDasVendas(Tipo, Turno : integer) : String;
var lsFiltro : String;
begin

   if Turno = 0  then
      lsFiltro := 'And Turno Is Null'
   else  if Turno = -1 then
      lsFiltro := ''
   else
      lsFiltro := 'And Turno=:parturno';

   if tipo = 0 then
   Begin
      Result :='Select Grupo.Codigo,Grupo.Descricao,Itens.pco_Venda as Pco_UnitMedio, '+
               '         Sum(Itens.Vlr_total) as Vlr_Total, '+
               '         Sum(Itens.Qtde_Venda) as Qtde_Total '+
               'from  T_itensvendas itens '+
               '     Inner Join T_Produtos Prod on Prod.codigo=Itens.Cod_Produto '+
               '     Left join T_Grupos grupo on Grupo.Codigo=Prod.Cod_Grupo '+
               '     inner join T_MovCaixa Mov on mov.Seqvenda=Itens.SeqVenda  '+
               'where Mov.Cod_Caixa=:parCod_Caixa and Mov.Data_Lancamento=Itens.Data_Mov and '+
               '    ( Mov.data_Lancamento>=:parDataIni and Mov.data_Lancamento<=:parDataFim )'+lsFiltro+' '+
               'Group by Grupo.Codigo,Itens.Pco_Venda,Grupo.Descricao';
   End
   Else if tipo=2 then
   begin
      Result :='Select pag.Codigo as PagId, Pag.Descricao as FormaPagamento, Prod.Codigo,Prod.Descricao,avg(Itens.pco_Venda)as Pco_UnitMedio, '+
               '         Sum(Itens.Vlr_total) as Vlr_Total, '+
               '         Sum(Itens.Qtde_Venda) as Qtde_Total '+
               'from  T_itensvendas itens '+
			         '       left join T_Vendas Ven on Ven.SeqVenda = itens.SeqVenda '+
               '       left Join T_Produtos Prod on Prod.codigo=Itens.Cod_Produto '+
					     '       Left join T_Grupos grupo on Grupo.Codigo=Prod.Cod_Grupo '+
               '       left join T_MovCaixa Mov on mov.Seqvenda=Itens.SeqVenda '+
				       '       left join T_FormasPagamento Pag on Pag.Codigo = Ven.Cod_FormaPagamento '+
               'where Mov.Cod_Caixa=:parCod_Caixa and Mov.Data_Lancamento=Itens.Data_Mov and '+
               '    ( Mov.data_Lancamento>=:parDataIni and Mov.data_Lancamento<=:parDataFim )'+lsFiltro+' '+
               '      Group by Pag.codigo, Pag.Descricao,Prod.Codigo,Itens.Pco_Venda,prod.Descricao order by 1 '
   end
   else
   Begin
      Result :='Select Prod.Codigo,Prod.Descricao,avg(Itens.pco_Venda)as Pco_UnitMedio, '+
               '         Sum(Itens.Vlr_total) as Vlr_Total, '+
               '         Sum(Itens.Qtde_Venda) as Qtde_Total '+
               'from  T_itensvendas itens '+
               '     Inner Join T_Produtos Prod on Prod.codigo=Itens.Cod_Produto '+
               '     Left join T_Grupos grupo on Grupo.Codigo=Prod.Cod_Grupo '+
               '     inner join T_MovCaixa Mov on mov.Seqvenda=Itens.SeqVenda and Mov.Data_Lancamento=Itens.Data_Mov '+//+ tem que comparar so a data
               'where mov.Cod_Caixa=:parCod_Caixa And '+
               '    ( Mov.data_Lancamento>=:parDataIni and Mov.data_Lancamento<=:parDataFim )'+lsFiltro+' '+
               'Group by Prod.Codigo,Itens.Pco_Venda,prod.Descricao';

   End;



end;

Procedure TfrmMovCaixa.RelatorioDeCaixaModelo03;
var lrTotal_Venda    : Real;
    lrtotal_Servico  : Real;
    lrTotal_recebido : Real;
    lrTotal_Baixa    : Real;
    lrTotal_Saidas   : Real;
    lrDiferenca      : Real;
    lrVlr_Saida      : Real;
    lrVlr_Entrada    : Real;
    vlr_Prepagamento : Real;
    lsCod_FormaPagamento : String;
    lbImprimiuCredito : Boolean;
    lbImprimiuDebito  : Boolean;
    sdtsTempPagInformado : TSimpleDataSet;
    lrTotal_Extras: double;
    dataInicial : TDateTime;
    dataFinal : TDateTime;
    lsFiltro : String;
    Turno : Integer;
begin
    {
   gsTituloRel := 'Relatorio de movimentação do dia '+FormatDateTime('dd/mm/yyyy',gsdata_Mov);

   lrTotal_Venda    := 0;
   lrtotal_Servico  := 0;
   lrTotal_recebido := 0;
   lrTotal_Extras   := 0;
   lrTotal_Saidas   := 0;
   lrDiferenca      := 0;
   lrTotal_Baixa    := 0;
   lrVlr_Saida      := 0;
   lrVlr_Entrada    := 0;

   frmSelDatas := TFrmSelDatas.Create(Self);
   frmSelDatas.idCaixa := cmbCaixa.KeyValue;
   frmSelDatas.ShowModal;

   if frmSelDatas.Tag = 1 then
   begin
      dataInicial := frmSelDatas.dtpData_Ini.Date;
      dataFinal   := frmSelDatas.dtpData_Fim.Date;
      Turno       := frmSelDatas.cmbturno.ItemIndex;
   end
   else
     exit;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 1;
   ImpMatricial.TamanhoQteColunas         := 48;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;
   if Turno = 0 then
      lsFiltro := 'And Turno Is Null'
   else
      lsFiltro := 'And Turno=:parturno';

   qryVariavel.Close;
   qryVariavel.Sql.Text := 'Select Grupo.Codigo,Grupo.Descricao,avg(Itens.pco_Venda)as Pco_UnitMedio, '+
                           '         Sum(Itens.Vlr_total) as Vlr_Total, '+
                           '         Sum(Itens.Qtde_Venda) as Qtde_Total '+
                           'from  T_itensvendas itens '+
                           '     Inner Join T_Produtos Prod on Prod.codigo=Itens.Cod_Produto '+
                           '     Left join T_Grupos grupo on Grupo.Codigo=Prod.Cod_Grupo '+
                           'where Seqvenda In ( Select Seqvenda from T_movCaixa '+
                           '                    where ( data_Lancamento>=:parDataIni and '+
                           '                            data_Lancamento<=:parDataFim ) and '+
                           '                               Cod_Caixa=:parCod_Caixa '+lsFiltro+'  ) '+
                           'Group by Grupo.Codigo,Grupo.Descricao';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno > 0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      WriteLn(F, '','Vendas Efetuadas ');
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Codigo Grupo            Quant. Vlr.Medio Total');
      pviLinha:=Pvilinha+1;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
      while not cdsrelatorio.Eof do
      Begin
          WriteLn(F, '',Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,20) );
         impmatricial.ImpD(pvilinha,030,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);
         impmatricial.ImpD(pvilinha,038,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),[]);
         impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
         lrTotal_Venda   := lrTotal_Venda+cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Total Das Vendas...');
      impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',lrTotal_Venda),[]);
      pviLinha:=Pvilinha+2;
   end;
   // <-- imprimindo resumo das vendas


   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Ctas.SeqVenda, Ven.Controle, Ctas.Cod_Cliente, Cli.Descricao, '+
                           '       Ctas.Data_Emissao, Ctas.Data_Vencimento, Ctas.Vlr_Recebido '+
                           'From t_Ctasreceber Ctas, T_Clientes Cli, T_Vendas Ven '+
                           'where Ctas.Status=:parStatus and Ctas.data_Pagamento=:parDataIni and '+
                           '      Ctas.data_emissao<>:parDataIni and Cli.Codigo=Ctas.Cod_Cliente and'+
                           '      Ven.Seqvenda=Ctas.Seqvenda and  Cod_Caixa=:parCod_Caixa';
   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   qryVariavel.ParamByName('parStatus').AsString        := '1';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
       WriteLn(F, '','Resumo das baixas do Contas a Receber' );
      pvilinha := pviLinha + 1;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Codigo Controle Nome do Cliente ');
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Emissao    Vencimento              vlr. Pago');
      pviLinha:=Pvilinha+1;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;

      while not cdsrelatorio.Eof do
      Begin
          WriteLn(F, '',Inczero(cdsrelatorio.FieldByName('Seqvenda').AsString,8)+' '+Trim(cdsrelatorio.FieldByName('Controle').AsString) );
         impmatricial.Imp(pvilinha,017,Copy(Inczero(cdsrelatorio.FieldByName('Cod_Cliente').AsString,5)+' '+Trim(cdsrelatorio.FieldByName('Descricao').AsString),1,30) );
         pvilinha := pviLinha + 1;
          WriteLn(F, '',FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Emissao').asDateTime)+' '+FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Vencimento').asDateTime));
         impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Recebido').asfloat),[]);
         lrTotal_Baixa := lrTotal_Baixa + cdsrelatorio.fieldByname('Vlr_Recebido').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Total Das Baixas...');
      impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',lrTotal_Baixa),[]);
      pviLinha:=Pvilinha+2;
   End;
    WriteLn(F, '','Total Geral...');
   impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',(lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa)),[]);
   pviLinha:=Pvilinha+2;

   // <-- Recebimentos do dia

   // --> recebimentos do caixa
   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Mov.D_C, Pag.Codigo, Pag.Descricao, sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov, T_FormasPagamento Pag '+
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      Pag.Codigo=Mov.cod_FormaPagamento and Cod_Caixa=:parCod_Caixa '+lsFiltro+' '+
                           'Group by pag.codigo,pag.descricao,mov.D_C '+
                           'Order by Pag.Codigo,Mov.D_C ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;


   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   sdtsTempPagInformado := TsimpleDataSet.Create(self);
   sdtsTempPagInformado.Connection := frmprincipal.dbxPrincipal;
   sdtsTempPagInformado.dataSet.CommandText := 'Select * from t_PagamentosInformados '+
                                               'where data_mov=:parData_Mov' ;
   sdtsTempPagInformado.dataSet.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   sdtsTempPagInformado.open;

   if not cdsRelatorio.IsEmpty then
   begin
       WriteLn(F, '','Resumo de recebimentos do Caixa' );
      pvilinha := pviLinha + 1;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Codigo Descrica ');
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Entradas   Saidas  Saldo  Informado   Diferença');
      pviLinha:=Pvilinha+1;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
      lsCod_FormaPagamento := '';
      lbImprimiuCredito := false;
      lbImprimiuDebito  := false;
      while not cdsrelatorio.Eof do
      Begin
         If (lsCod_FormaPagamento <> cdsrelatorio.FieldByName('Codigo').AsString) or cdsRelatorio.eof Then
         Begin
             WriteLn(F, '',Inczero(cdsrelatorio.FieldByName('Codigo').AsString,3)+'   '+cdsrelatorio.FieldByName('Descricao').AsString );
            pviLinha:=Pvilinha+1;
            lsCod_FormaPagamento := cdsrelatorio.FieldByName('Codigo').AsString;
         End;
         if cdsrelatorio.FieldByName('D_C').AsString = 'C' Then
         Begin
            impmatricial.ImpD(pvilinha,08,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
            lbImprimiuCredito := True;
            lrVlr_Entrada    := cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrTotal_recebido := lrTotal_recebido + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         End
         Else
         Begin
            impmatricial.ImpD(pvilinha,017,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
            if not lbImprimiuCredito then
               impmatricial.ImpD(pvilinha,17,FormatFloat(',0.00',0),[]);
            lbImprimiuDebito := True;
            lrVlr_Saida      := cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrTotal_Saidas   := lrTotal_Saidas + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         End;
         cdsrelatorio.Next;
         If (lsCod_FormaPagamento <> cdsrelatorio.FieldByName('Codigo').AsString) or cdsRelatorio.eof Then
         Begin
            impmatricial.ImpD(pvilinha,025,FormatFloat(',0.00',(lrVlr_Entrada-lrVlr_saida)),[]);
            if sdtsTempPagInformado.Locate('cod_FormaPagamento',lsCod_FormaPagamento,[]) then
            Begin
               impmatricial.ImpD(pvilinha,035,FormatFloat(',0.00',(sdtsTempPagInformado.FieldByName('vlr_Informado').AsFloat)),[]);
               impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',((lrVlr_Entrada-lrVlr_saida)-sdtsTempPagInformado.FieldByName('vlr_Informado').AsFloat)),[]);
            End
            Else
            Begin
               impmatricial.ImpD(pvilinha,035,FormatFloat(',0.00',(0)),[]);
               impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',(0)),[]);
            End;

            if not lbImprimiudebito then
               impmatricial.ImpD(pvilinha,015,FormatFloat(',0.00',0),[]);

            pvilinha := pviLinha + 1;

            lbImprimiuCredito    := False;
            lbImprimiuDebito     := False;
            lrVlr_Saida          := 0;
            lrVlr_Entrada        := 0;
         End;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
      pviLinha:=Pvilinha+1;
       WriteLn(F, '','Total Dos Recebimentos...');
      pviLinha:=Pvilinha+1;
      impmatricial.ImpD(pvilinha,008,FormatFloat(',0.00',lrTotal_recebido),[]);
      impmatricial.ImpD(pvilinha,018,FormatFloat(',0.00',lrTotal_Saidas ),[]);
      impmatricial.ImpD(pvilinha,025,FormatFloat(',0.00',(lrTotal_recebido-lrTotal_Saidas) ),[]);
      pviLinha:=Pvilinha+2;
   End;
   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov '+
                           '     inner join t_vendas ven on ven.seqvenda=mov.seqvenda '+
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      PrePagamento=:parPrePagamento and ven.status=:parstatus and Cod_Caixa=:parCod_Caixa '+lsfiltro;

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parPrePagamento').AsString  := 'S';
   qryVariavel.ParamByName('parStatus').AsString        :=  '1';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;


   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   vlr_Prepagamento := cdsRelatorio.FieldByname('Vlr_Total').AsFloat;

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov ' +
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      SeqVenda is null and D_C=:parD_C and Cod_Caixa=:parCod_Caixa '+lsfiltro;

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parD_C').AsString           := 'C';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   lrTotal_Extras := cdsrelatorio.fieldByname('Vlr_Total').asfloat;


                                  //23456789.123456789.123456789.123456789.12345678
   ImpMatricial.imp (pvilinha,001,'------------------------------------------------');
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp (pvilinha,001,'         Resumo da movimentação do dia');
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp (pvilinha,001,'------------------------------------------------');
   pviLinha:=Pvilinha+1;
   lrDiferenca := (lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa+lrTotal_Extras);
   ImpMatricial.imp (pvilinha,001,'Total Movimentado do dia.......:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',(lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa+lrTotal_Extras)),[]);
   pviLinha:=Pvilinha+2;
   ImpMatricial.imp (pvilinha,001,'Total Extras...................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrTotal_Extras),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp (pvilinha,001,'Total Recebido.................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrTotal_recebido-lrTotal_Extras),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp (pvilinha,001,'Total a Receber................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',(lrDiferenca-lrTotal_recebido)),[]);
   pviLinha:=Pvilinha+1;
   lrDiferenca:=0;
   ImpMatricial.imp (pvilinha,001,'-------------------------------------------------');
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp (pvilinha,001,'Diferença.....................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrDiferenca),[]);
   pviLinha:=Pvilinha+1;
    WriteLn(F, '',incdigito( '-','-',48,0));
   pviLinha:=Pvilinha+3;
   ImpMatricial.imp (pvilinha,001,'.');
   ImpMatricial.TamanhoQteLinhas := pviLinha;
   ImpMatricial.fechar
   }
end;

procedure TfrmMovCaixa.RelatorioDeCaixaModelo04(prTipo: Integer);
var lrTotal_Venda    : Real;
    lrTotal_recebido : Real;
    lrTotal_Baixa    : Real;
    lrTotal_Saidas   : Real;
    lrDiferenca      : Real;
    lrVlr_Saida      : Real;
    lrVlr_Entrada    : Real;
    vlr_Prepagamento : Real;
    lsCod_FormaPagamento : String;
    lbImprimiuCredito : Boolean;
    lbImprimiuDebito  : Boolean;
    sdtsTempPagInformado : TSimpleDataSet;
    lrTotal_Extras: double;
    dataInicial : TDateTime;
    dataFinal : TDateTime;
    lsFiltro : String;
    Turno : Integer;
    lsSelect : String;
    Tipo : Integer;
    NomeTurno: String;
    lrEstrono_Credito : Real;
    lrEstrono_Debito : Real;
    liCod_TipoPagamento : Integer;
    lrTotal : Real;
    lsNomePagamento: String;
    DaoCaixaMovimento : TDaoCaixaMovimento;
    lrTotalDinheiro : Real;
    lsPagId : String;
begin

   gsTituloRel := 'Movimento dia '+FormatDateTime('dd/mm/yyyy', dtpData_Fim.Date);

   lrTotal_Venda    := 0;
   lrTotal_recebido := 0;
   lrTotal_Extras   := 0;
   lrTotal_Saidas   := 0;
   lrDiferenca      := 0;
   lrTotal_Baixa    := 0;
   lrVlr_Saida      := 0;
   lrVlr_Entrada    := 0;

   if prTipo=RELATORIO then
   begin

      frmSelDatas := TFrmSelDatas.Create(Self);
      frmSelDatas.dtpData_Ini.date := dtpData_Ini.Date;
      frmSelDatas.idCaixa := cmbCaixa.KeyValue;

      if HeDistribuidora then
      begin
         frmSelDatas.dtpData_Fim.Visible := True;
         frmSelDatas.btnincluir.Visible := True;
         frmSelDatas.dtpData_Fim.date := dtpData_Fim.Date;
         frmSelDatas.cmbturno.Visible := False;
      end;
      frmSelDatas.ShowModal;

      if frmSelDatas.Tag = 1 then
      begin
         dataInicial := frmSelDatas.dtpData_Ini.Date;
         dataFinal   := frmSelDatas.dtpData_Ini.Date;
         NomeTurno   := frmSelDatas.cmbturno.Text;
         Tipo        := 2;
         Turno       := 1;
         if HeDistribuidora then
         begin
            dataFinal := frmSelDatas.dtpData_Fim.Date;
            frmSelDatas.dtpData_Fim.Visible := True;
            Turno     := -1;
         end;
      end
      else
        exit;
   end
   else
   begin
      dataInicial := gsData_Mov;
      dataFinal   := gsData_Mov;
      NomeTurno   := 'Fechamento Caixa';
      Tipo        := 2;
   end;

  if Turno = 0  then
      lsFiltro := 'And Turno Is Null'
   else if Turno = -1 then
      lsFiltro := ''
   else
      lsFiltro := 'And Turno=:parturno';

   DaoCaixaMovimento := TDaoCaixaMovimento.Create(gConexao);
   sdtsTempPagInformado := TsimpleDataSet.Create(self);
   sdtsTempPagInformado.Connection := frmprincipal.dbxPrincipal;
   sdtsTempPagInformado.dataSet.CommandText := 'Select Pag.*, forma.Descricao from t_PagamentosInformados Pag '+
                                               'left join t_formaspagamento forma on forma.Codigo=pag.Cod_formapagamento '+
                                               'where data_mov=:parData_Mov and Cod_Caixa=:parCod_Caixa '+lsFiltro ;
   sdtsTempPagInformado.dataSet.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   sdtsTempPagInformado.dataSet.ParamByName('parCod_Caixa').AsInteger     := cmbCaixa.KeyValue;
   if Turno > 0 then
      sdtsTempPagInformado.dataSet.ParamByName('parTurno').AsInteger         := (DaoCaixaMovimento.RetornarUltimoTurno(gsData_mov,cmbCaixa.KeyValue)+1);
   sdtsTempPagInformado.open;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 1;
   ImpMatricial.TamanhoQteColunas         := 40;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryVariavel.Close;
   qryVariavel.Sql.Text := RetornaSelectDasVendas(Tipo,Turno);
   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   if Turno > 0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;
   impmatricial.Imp(pvilinha,001,cmbCaixa.Text+' - '+NomeTurno);
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pvilinha := pviLinha + 1;
   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Vendas Efetuadas ');
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      if tipo = 0 then
      begin
         ImpMatricial.imp(pvilinha,001,'Codigo Descricao Grupo ');
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pvilinha,001,'Quant.    Vlr.Medio     Total');
      end
      else
      begin
         ImpMatricial.imp(pvilinha,001,'Codigo Descricao Produto ');
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pvilinha,001,'                 Quant.  Vlr.Unit  Total');
      end;
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      lrTotalDinheiro := 0;
      while not cdsrelatorio.Eof do
      Begin
         if lsNomePagamento <> cdsrelatorio.FieldByName('FormaPagamento').AsString then
         begin
            if lrTotal_Venda<>0 then
            begin
               sdtsTempPagInformado.Locate('Cod_formapagamento',lsPagId,[]);
               ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
               pviLinha:=Pvilinha+1;
               ImpMatricial.imp(pvilinha,001,'Total...');
               impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Venda),[]);
              if StrtointDef(lsPagId,1 )<>1then
               begin
                  ImpMatricial.imp(pvilinha,001,'Valor Informado');
                  impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat),[]);
                  pviLinha:=Pvilinha+1;
                  ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
                  pviLinha:=Pvilinha+1;
                  ImpMatricial.imp(pvilinha,001,'Diferença');
                  impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00', sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat - (lrTotal_Venda)  ),[]);
                  pviLinha:=Pvilinha+1;
               end;
               pviLinha:=Pvilinha+2;
               lrTotal_Venda:=0;
            end;
            impmatricial.Imp(pvilinha,001,Copy(cdsrelatorio.FieldByName('FormaPagamento').AsString,1,20) );
            pviLinha:=Pvilinha+1;
            ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
            pviLinha:=Pvilinha+1;
            lsNomePagamento := cdsrelatorio.FieldByName('FormaPagamento').AsString;
            lsPagId := cdsrelatorio.FieldByName('PagId').AsString;
         end;
         impmatricial.Imp(pvilinha,001,Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,18) );
         impmatricial.ImpD(pvilinha,025,FormatFloat(',0',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);
         impmatricial.ImpD(pvilinha,032,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),[]);
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
         lrTotal_Venda   := lrTotal_Venda+cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         if cdsrelatorio.FieldByName('PagID').AsInteger=1 then
            lrTotalDinheiro := lrTotalDinheiro + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Venda),[]);
      pviLinha:=Pvilinha+1;
      if StrtointDef(lsPagId,1 )<>1then
      begin
         ImpMatricial.imp(pvilinha,001,'Valor Informado');
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat),[]);
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
         pviLinha:=Pvilinha+1;
         ImpMatricial.imp(pvilinha,001,'Diferença');
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00', sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat - (lrTotal_Venda)  ),[]);
         pviLinha:=Pvilinha+1;
      end;
      pviLinha:=Pvilinha+2;
   end;
   // <-- imprimindo resumo das vendas


   {$REGION 'Resumo das entradas'}


   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Historico, Valor '+
                           'From t_movcaixa Mov '+
                           'Where data_Lancamento>=:parDataIni and '+
                           '      data_Lancamento<=:parDataFim and '+
                           '      mov.Cod_Caixa=:parCod_Caixa and '+
                           '      Estornado<>:parEstornado and D_C=:parD_C and SeqVenda Is Null '+lsFiltro+' ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   qryVariavel.Parambyname('parEstornado').AsString     := 'S';
   qryVariavel.Parambyname('parD_C').AsString           := 'C';
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Resumo das Entradas ' );
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,' Historico                        Valor');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      lrVlr_Entrada := 0;
      while not cdsrelatorio.Eof do
      Begin
         impmatricial.Imp(pvilinha,001, cdsrelatorio.fieldByname('Historico').asString );
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Valor').asfloat),[]);
         lrVlr_Entrada := lrVlr_Entrada + cdsrelatorio.fieldByname('Valor').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      lrVlr_Entrada := lrVlr_Entrada + lrTotalDinheiro;
      ImpMatricial.imp(pvilinha,001,'Vendas em dinheiro...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotalDinheiro),[]);
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Das Entradas...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrVlr_Entrada),[]);
      pviLinha:=Pvilinha+2;
   End;
   {$ENDREGION}


   {$REGION 'Resumo das Saidas'}

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Historico, Valor '+
                           'From t_movcaixa Mov '+
                           'Where data_Lancamento>=:parDataIni and '+
                           '      data_Lancamento<=:parDataFim and '+
                           '      mov.Cod_Caixa=:parCod_Caixa and '+
                           '      Estornado<>:parEstornado and D_C=:parD_C '+lsFiltro+' ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.Parambyname('parCod_Caixa').AsInteger    := cmbCaixa.KeyValue;
   qryVariavel.Parambyname('parEstornado').AsString     := 'S';
   qryVariavel.Parambyname('parD_C').AsString           := 'D';
   if Turno>0 then
      qryVariavel.Parambyname('parturno').AsInteger     := Turno;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      impmatricial.Imp(pvilinha,001,'Resumo das Despesas/Saidas ' );
      pvilinha := pviLinha + 1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,' Historico                        Valor');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      lrTotal_Saidas := 0;
      while not cdsrelatorio.Eof do
      Begin
         impmatricial.Imp(pvilinha,001, cdsrelatorio.fieldByname('Historico').asString );
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Valor').asfloat),[]);
         lrTotal_Saidas := lrTotal_Saidas + cdsrelatorio.fieldByname('Valor').asfloat;
         cdsrelatorio.Next;
         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total Das Saidas...');
      impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Saidas),[]);
      pviLinha:=Pvilinha+2;
   End;
   {$ENDREGION}

   sdtsTempPagInformado.Locate('Cod_formapagamento','001',[]);


   impmatricial.Imp(pvilinha,001,'Resumo Do Caixa (Dinheiro) ' );
   pvilinha := pviLinha + 1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pvilinha,001,'Total das Entradas');
   impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrVlr_Entrada),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pvilinha,001,'Total das Saidas');
   impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrTotal_Saidas),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pvilinha,001,'Saldo do Caixa');
   impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',lrVlr_Entrada-lrTotal_Saidas),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pvilinha,001,'Valor Informado');
   impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pvilinha,001,'Diferença');
   impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00', sdtsTempPagInformado.FieldByName('vlr_Informado').Asfloat - (lrVlr_Entrada-lrTotal_Saidas) ),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.imp(pviLinha,001,incdigito( '-','-',40,0));
   pviLinha:=Pvilinha+1;
   pviLinha:=Pvilinha+3;
   ImpMatricial.imp (pvilinha,001,'.');
   ImpMatricial.TamanhoQteLinhas := pviLinha;
   ImpMatricial.fechar
end;

Procedure TfrmMovCaixa.RelatorioDeCaixaModelo01;
const
    sComando = #27 + #109;
var lrTotal_Venda    : Real;
    lrtotal_Servico  : Real;
    lrTotal_recebido : Real;
    lrTotal_Baixa    : Real;
    lrTotal_Saidas   : Real;
    lrDiferenca      : Real;
    lrVlr_Saida      : Real;
    lrVlr_Entrada    : Real;
    vlr_Prepagamento : Real;
    lsCod_FormaPagamento : String;
    lbImprimiuCredito : Boolean;
    lbImprimiuDebito  : Boolean;
    sdtsTempPagInformado : TSimpleDataSet;
    lrTotal_Extras: double;
    dataInicial : TDateTime;
    dataFinal : TDateTime;
    F : TextFile;
begin
   gsTituloRel := 'Relatorio de movimentação do dia '+FormatDateTime('dd/mm/yyyy',gsdata_Mov);

   lrTotal_Venda    := 0;
   lrtotal_Servico  := 0;
   lrTotal_recebido := 0;
   lrTotal_Extras   := 0;
   lrTotal_Saidas   := 0;
   lrDiferenca      := 0;
   lrTotal_Baixa    := 0;
   lrVlr_Saida      := 0;
   lrVlr_Entrada    := 0;

   frmSelDatas := TFrmSelDatas.Create(Self);
   frmSelDatas.ShowModal;
   if frmSelDatas.Tag = 1 then
   begin
      dataInicial := frmSelDatas.dtpData_Ini.Date;
      dataFinal   := frmSelDatas.dtpData_Ini.Date;
   end
   else
     exit;

   qryVariavel.Close;
   qryVariavel.Sql.Text := 'Select Grupo.Codigo,Grupo.Descricao,avg(Itens.pco_Venda)as Pco_UnitMedio, '+
                           '       Sum(Itens.Vlr_total) as Vlr_Total,Sum(Itens.Qtde_Venda) as Qtde_Total '+
                           'from T_vendas ven, T_itensvendas itens, T_Produtos Prod, T_Grupos grupo '+
                           'Where Ven.Data_Venda>=:parData_VendaIni and Ven.Data_Venda<=:parData_VendaFim And '+
                           '      Ven.Tipo_Venda =:parTipo_Venda and '+
                           '      Itens.seqvenda=Ven.Seqvenda and Prod.codigo=Itens.Cod_Produto and '+
                           '      Grupo.Codigo=Prod.Cod_Grupo '+
                           'Group by Grupo.Codigo,Grupo.Descricao';
   qryVariavel.ParamByName('parData_VendaIni').AsSqlTimeStamp :=StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parData_VendaFim').AsSqlTimeStamp :=StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parTipo_venda').AsString          := 'P';
   qryVariavel.Parambyname('parCod_Caixa').AsInteger          := cmbCaixa.KeyValue;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;


   AssignFile(F, gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador)  );
   Rewrite(F);
   if not cdsRelatorio.IsEmpty then
   begin
      WriteLn(F, '','Vendas Efetuadas ');
      WriteLn(F, '',incdigito( '-','-',48,0));
      WriteLn(F, '','Codigo Grupo            Quant. Vlr.Medio Total');
      WriteLn(F, '',incdigito( '-','-',48,0));
      while not cdsrelatorio.Eof do
      Begin
         WriteLn(F, '',Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,20)+
                        IncDigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),' ',8,0)+
                        IncDigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),' ',8,0)+
                        IncDigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),' ',8,0) );
         lrTotal_Venda   := lrTotal_Venda+cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
       WriteLn(F, '','Total Das Vendas...'+IncDigito(FormatFloat(',0.00',lrTotal_Venda),' ',8,0) );
   end;
   // <-- imprimindo resumo das vendas

   // --> impressao dos serviços efetuados no dia

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Grupo.Codigo,Grupo.Descricao,avg(Itens.pco_Venda)as Pco_UnitMedio, '+
                           '       Sum(Itens.Vlr_total) as Vlr_Total,Sum(Itens.Qtde_Venda) as Qtde_Total '+
                           'from T_vendas ven, T_itensvendas itens, T_Produtos Prod, T_Grupos grupo '+
                           'Where Ven.Data_Venda>=:parData_VendaIni and Ven.Data_Venda<=:parData_VendaFim And '+
                           '      Ven.Tipo_Venda =:parTipo_Venda and '+
                           '      Itens.seqvenda=Ven.Seqvenda and Prod.codigo=Itens.Cod_Produto and '+
                           '      Grupo.Codigo=Prod.Cod_Grupo '+
                           'Group by Grupo.Codigo,Grupo.Descricao';
   qryVariavel.ParamByName('parData_VendaIni').AsSqlTimeStamp :=StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parData_VendaFim').AsSqlTimeStamp :=StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parTipo_venda').AsString          := 'S';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   if not cdsRelatorio.IsEmpty then
   begin
       WriteLn(F, '','Serviços Contratados' );
       WriteLn(F, '',incdigito( '-','-',48,0));
       WriteLn(F, '','Codigo Grupo           Quant. Vlr.Medio  Total');
       WriteLn(F, '',incdigito( '-','-',48,0));
      while not cdsrelatorio.Eof do
      Begin
          WriteLn(F, '',Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,20)+
                        incdigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),' ',8,0)+
                        incdigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),' ',8,0)+
                        incdigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),' ',8,0) );

         lrtotal_Servico := lrtotal_Servico + cdsrelatorio.fieldByname('Vlr_Total').asfloat;

         cdsrelatorio.Next;

      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
       WriteLn(F, '','Total Dos Serviços...'+incdigito(FormatFloat(',0.00',lrtotal_Servico),' ',15,0));
   end;
   // <-- impressao dos serviços efetuados no dia

   // --> impressao dos serviços efetuados no dia

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Ctas.SeqVenda, Ven.Controle, Ctas.Cod_Cliente, Cli.Descricao, '+
                           '       Ctas.Data_Emissao, Ctas.Data_Vencimento, Ctas.Vlr_Recebido '+
                           'From t_Ctasreceber Ctas, T_Clientes Cli, T_Vendas Ven '+
                           'where Ctas.Status=:parStatus and Ctas.data_Pagamento=:parDataIni and '+
                           '      Ctas.data_emissao<>:parDataIni and Cli.Codigo=Ctas.Cod_Cliente and'+
                           '      Ven.Seqvenda=Ctas.Seqvenda ';
   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   qryVariavel.ParamByName('parStatus').AsString        := '1';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   if not cdsRelatorio.IsEmpty then
   begin
      WriteLn(F, '','Resumo das baixas do Contas a Receber' );
      WriteLn(F, '',incdigito( '-','-',48,0));
      WriteLn(F, '','Codigo Controle Nome do Cliente ');
      WriteLn(F, '','Emissao    Vencimento              vlr. Pago');
      WriteLn(F, '',incdigito( '-','-',48,0));
      while not cdsrelatorio.Eof do
      Begin
         WriteLn(F, '',Inczero(cdsrelatorio.FieldByName('Seqvenda').AsString,8)+' '+Trim(cdsrelatorio.FieldByName('Controle').AsString)+' '+
                       Copy(Inczero(cdsrelatorio.FieldByName('Cod_Cliente').AsString,5)+' '+Trim(cdsrelatorio.FieldByName('Descricao').AsString),1,30) );

         WriteLn(F, '',FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Emissao').asDateTime)+' '+FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Vencimento').asDateTime) +
                       incdigito( FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Recebido').asfloat),' ',8,0) );

         lrTotal_Baixa := lrTotal_Baixa + cdsrelatorio.fieldByname('Vlr_Recebido').asfloat;
         cdsrelatorio.Next;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));
       WriteLn(F, '','Total Das Baixas...'+incdigito(  FormatFloat(',0.00',lrTotal_Baixa),' ',15,0) );
   End;
    WriteLn(F, '','Total Geral...'+incdigito(FormatFloat(',0.00',(lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa)),' ',15,0));
   // <-- Recebimentos do dia

   // --> recebimentos do caixa
   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select Mov.D_C, Pag.Codigo, Pag.Descricao, sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov, T_FormasPagamento Pag '+
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      Pag.Codigo=Mov.cod_FormaPagamento  '+
                           'Group by pag.codigo,pag.descricao,mov.D_C '+
                           'Order by Pag.Codigo,Mov.D_C ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   sdtsTempPagInformado := TsimpleDataSet.Create(self);
   sdtsTempPagInformado.Connection := frmprincipal.dbxPrincipal;
   sdtsTempPagInformado.dataSet.CommandText := 'Select * from t_PagamentosInformados '+
                                               'where data_mov=:parData_Mov' ;
   sdtsTempPagInformado.dataSet.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   sdtsTempPagInformado.open;

   if not cdsRelatorio.IsEmpty then
   begin
      WriteLn(F, '','Resumo de recebimentos do Caixa' );
      WriteLn(F, '',incdigito( '-','-',48,0));
      WriteLn(F, '','Codigo Descricao');
      WriteLn(F, '','Entradas   Saidas  Saldo  Informado   Diferença');
      WriteLn(F, '',incdigito( '-','-',48,0));

      lsCod_FormaPagamento := '';
      lbImprimiuCredito := false;
      lbImprimiuDebito  := false;
      while not cdsrelatorio.Eof do
      Begin
         If (lsCod_FormaPagamento <> cdsrelatorio.FieldByName('Codigo').AsString) or cdsRelatorio.eof Then
         Begin
             WriteLn(F, '',Inczero(cdsrelatorio.FieldByName('Codigo').AsString,3)+'   '+cdsrelatorio.FieldByName('Descricao').AsString );

            lsCod_FormaPagamento := cdsrelatorio.FieldByName('Codigo').AsString;
         End;
         if cdsrelatorio.FieldByName('D_C').AsString = 'C' Then
         Begin
            impmatricial.ImpD(pvilinha,08,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
            lbImprimiuCredito := True;
            lrVlr_Entrada    := cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrTotal_recebido := lrTotal_recebido + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         End
         Else
         Begin
            impmatricial.ImpD(pvilinha,018,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
            if not lbImprimiuCredito then
               impmatricial.ImpD(pvilinha,18,FormatFloat(',0.00',0),[]);
            lbImprimiuDebito := True;
            lrVlr_Saida      := cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrTotal_Saidas   := lrTotal_Saidas + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         End;
         cdsrelatorio.Next;
         If (lsCod_FormaPagamento <> cdsrelatorio.FieldByName('Codigo').AsString) or cdsRelatorio.eof Then
         Begin
            impmatricial.ImpD(pvilinha,024,FormatFloat(',0.00',(lrVlr_Entrada-lrVlr_saida)),[]);
            if sdtsTempPagInformado.Locate('cod_FormaPagamento',lsCod_FormaPagamento,[]) then
            Begin
               impmatricial.ImpD(pvilinha,035,FormatFloat(',0.00',(sdtsTempPagInformado.FieldByName('vlr_Informado').AsFloat)),[]);
               impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',((lrVlr_Entrada-lrVlr_saida)-sdtsTempPagInformado.FieldByName('vlr_Informado').AsFloat)),[]);
            End
            Else
            Begin
               impmatricial.ImpD(pvilinha,035,FormatFloat(',0.00',(0)),[]);
               impmatricial.ImpD(pvilinha,048,FormatFloat(',0.00',(0)),[]);
            End;

            if not lbImprimiudebito then
               impmatricial.ImpD(pvilinha,015,FormatFloat(',0.00',0),[]);



            lbImprimiuCredito    := False;
            lbImprimiuDebito     := False;
            lrVlr_Saida          := 0;
            lrVlr_Entrada        := 0;
         End;
      End;
       WriteLn(F, '',incdigito( '-','-',48,0));

       WriteLn(F, '','Total Dos Recebimentos...');

      impmatricial.ImpD(pvilinha,008,FormatFloat(',0.00',lrTotal_recebido),[]);
      impmatricial.ImpD(pvilinha,018,FormatFloat(',0.00',lrTotal_Saidas ),[]);
      impmatricial.ImpD(pvilinha,025,FormatFloat(',0.00',(lrTotal_recebido-lrTotal_Saidas) ),[]);
      pviLinha:=Pvilinha+2;
   End;
   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov '+
                           '     inner join t_vendas ven on ven.seqvenda=mov.seqvenda '+
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      PrePagamento=:parPrePagamento and ven.status=:parstatus ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parPrePagamento').AsString  := 'S';
   qryVariavel.ParamByName('parStatus').AsString        :=  '1';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   vlr_Prepagamento := cdsRelatorio.FieldByname('Vlr_Total').AsFloat;

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'Select sum(Valor) as Vlr_Total '+
                           'From t_movcaixa Mov ' +
                           'Where data_Lancamento>=:parDataIni and data_Lancamento<=:parDataFim and '+
                           '      SeqVenda is null and D_C=:parD_C ';

   qryVariavel.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parD_C').AsString           := 'C';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   lrTotal_Extras := cdsrelatorio.fieldByname('Vlr_Total').asfloat;


                                  //23456789.123456789.123456789.123456789.12345678
   ImpMatricial.imp (pvilinha,001,'------------------------------------------------');

   ImpMatricial.imp (pvilinha,001,'         Resumo da movimentação do dia');

   ImpMatricial.imp (pvilinha,001,'------------------------------------------------');

   lrDiferenca := (lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa+lrTotal_Extras+vlr_Prepagamento);
   ImpMatricial.imp (pvilinha,001,'Total Movimentado do dia.......:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',(lrTotal_Venda+lrtotal_Servico+lrTotal_Baixa+lrTotal_Extras)),[]);
   pviLinha:=Pvilinha+2;
   ImpMatricial.imp (pvilinha,001,'Total Extras...................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrTotal_Extras),[]);

   ImpMatricial.imp (pvilinha,001,'Total Recebido.................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrTotal_recebido-lrTotal_Extras),[]);

   ImpMatricial.imp (pvilinha,001,'Total de Pre-Pag.(Ñ Finalizado):');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',vlr_Prepagamento),[]);

   lrDiferenca:=lrDiferenca-lrTotal_recebido;

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'select sum(vlr_Total) As Total from t_vendas '+
                           'where Data_Venda>=:parData_VendaIni and Data_Venda<=:parData_VendaFim And '+
                           '      Status=:parStatus and tipo_Venda=:parTipo_Venda ';
   qryVariavel.ParamByName('parData_VendaIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryVariavel.ParamByName('parData_VendaFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');
   qryVariavel.ParamByName('parStatus').AsString        := '1';
   qryVariavel.ParamByName('parTipo_Venda').AsString    := 'S';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;
   ImpMatricial.imp (pvilinha,001,'Total de O.S. Nao Finalizadas.:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total').AsFloat),[]);

   lrDiferenca:=lrDiferenca-cdsRelatorio.FieldByName('Total').AsFloat;

   qryVariavel.close;
   qryVariavel.Params.Clear;
   qryVariavel.Sql.Text := 'select sum(vlr_Areceber) As Total from t_Ctasreceber where data_Emissao=:parData_Mov and Status=:parStatus ';
   qryVariavel.ParamByName('parData_Mov').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(gsData_Mov));
   qryVariavel.ParamByName('parStatus').AsString         := '0';

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspVariavel.name;
   cdsRelatorio.Open;

   ImpMatricial.imp (pvilinha,001,'Total de Contas a Rerceber....:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',cdsRelatorio.FieldByName('Total').AsFloat),[]);
   lrDiferenca:=lrDiferenca-cdsRelatorio.FieldByName('Total').AsFloat;
               //23456789.123456789.123456789.123456789.12345678
   ImpMatricial.imp (pvilinha,001,'-------------------------------------------------');

   ImpMatricial.imp (pvilinha,001,'Diferença.....................:');
   impmatricial.ImpD(pvilinha,042,FormatFloat(',0.00',lrDiferenca),[]);

   WriteLn(F, '',incdigito( '-','-',48,0));
   pviLinha:=Pvilinha+3;
   ImpMatricial.imp (pvilinha,001,'.');
   ImpMatricial.TamanhoQteLinhas := pviLinha;
   ImpMatricial.fechar
end;

procedure TfrmMovCaixa.btnImprimirClick(Sender: TObject);
begin
   RelatorioDeCaixaModelo04(RELATORIO);
end;

procedure TfrmMovCaixa.btnincluirClick(Sender: TObject);
begin

   pvsQualBotao:='INCLUIR';

   PagCadastro.ActivePageIndex  := 1;

   BtnIncluir.Enabled           := False;
   BtnEstornar.Enabled          := False;
   BtnOk.Enabled                := True;
   BtnCancela.Enabled           := True;
   PanelConsulta.Enabled        := False;
   edtDataMov.date              := gsData_Mov;
   GridMovCaixa.Enabled         := False;
   btnPrePagamento.Enabled      := False;
   btnImprimir.Enabled          := False;
   btnFecharcaixa.Enabled       := False;
   cmbD_CChange(cmbD_C);

end;

procedure TfrmMovCaixa.btnokClick(Sender: TObject);
var DadosContaCorrente : TContaCorrente;
    GravaContaCorrente : TDaoContaCorrente;
begin
   QryMovCaixa.Close;
   QryMovCaixa.Params.Clear;
   QryMovCaixa.Sql.Text := 'Select * from t_MovCaixa where 1=2 ';

   cdsMovCaixa.Close;
   cdsMovCaixa.ProviderName := dspMovCaixa.name;
   cdsMovCaixa.Open;

   cdsMovCaixa.Append;
   cdsMovCaixa.FieldByName('Sequencia').asInteger         := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
   cdsMovCaixa.FieldByName('Cod_TipoDespesa').asString    := cmbCod_TipoDespesa.Text;
   cdsMovCaixa.FieldByName('Operador').asString           := gsOperador;
   cdsMovCaixa.FieldByName('Valor').asFloat               := strToFloat(EdtValor.Text);
   cdsMovCaixa.FieldByName('Cod_Caixa').asInteger         := cmbCod_Caixa.KeyValue;
   cdsMovCaixa.FieldByName('Cod_FormaPagamento').asString := cmbNome_formaPagamento.KeyValue;
   cdsMovCaixa.FieldByName('D_C').asString                := 'C';
   if cmbD_C.ItemIndex = 1 then
      cdsMovCaixa.FieldByName('D_C').asString            := 'D';
   cdsMovCaixa.FieldByName('Historico').asString         := edthistorico.text;
   cdsMovCaixa.FieldByName('Data_lancamento').asDatetime := edtdatamov.Date;
   cdsMovCaixa.FieldByName('Data_Cad').asDatetime        := Now;
   cdsMovCaixa.Post;
   cdsMovCaixa.ApplyUpdates(-1);
   if cdsCadFormasPagamento.FieldByName('TipoLancamento').Asinteger=2 then
   Begin
      DadosContaCorrente := TContaCorrente.Create;
      GravaContaCorrente := TDaoContaCorrente.Create(gconexao);
      DadosContaCorrente.D_C         := 'C';
      if cmbD_C.ItemIndex = 1 then
         DadosContaCorrente.D_C         := 'D';
      DadosContaCorrente.Valor       := strToFloat(EdtValor.Text);
      DadosContaCorrente.Cod_Cliente := StrtoInt(edtcod_Cliente.Text);
      DadosContaCorrente.Historico   := edthistorico.text;
      DadosContaCorrente.Documento   := cdsMovCaixa.FieldByName('Sequencia').asInteger;
      IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
      Begin
         CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
         Exit;
      End;
   End;
   BtnCancelaClick(BtnCancela);
end;

procedure TfrmMovCaixa.btnPrePagamentoClick(Sender: TObject);
begin
   frmprepagamento := tfrmPrePagamento.create(Self);
   frmprepagamento.showmodal;
end;

procedure TfrmMovCaixa.btnRecebimentosClick(Sender: TObject);
begin
   {
   if not gsPerfilacesso.AcessoForm(TAction(Sender).Category,TAction(Sender).Caption,gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   }
   frmCtasReceber := TfrmCtasReceber.create(Self);
   frmCtasReceber.show;
end;

procedure TfrmMovCaixa.cdsPesquisaBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
 CriarCalculado (DataSet,'NomeD_C',ftString,15);
 CriarCalculado (DataSet,'Vlr_Debito',ftFloat,0);
 CriarCalculado (DataSet,'Vlr_Credito',ftFloat,0);
 for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmMovCaixa.cdsPesquisaCalcFields(DataSet: TDataSet);
begin
   If cdsPesquisa.FieldByName('D_C').asString = 'C' Then
   Begin
      cdsPesquisa.FieldByName('NomeD_C').asString    := 'Entrada';
      cdsPesquisa.FieldByName('Vlr_Credito').asFloat := cdsPesquisa.FieldByName('Valor').asFloat;
      cdsPesquisa.FieldByName('Vlr_Debito').asFloat  := 0;
   End;
   If cdsPesquisa.FieldByName('D_C').asString = 'D' Then
   Begin
      cdsPesquisa.FieldByName('NomeD_C').asString    := 'Saida';
      cdsPesquisa.FieldByName('Vlr_Debito').asFloat  := cdsPesquisa.FieldByName('Valor').asFloat;
      cdsPesquisa.FieldByName('Vlr_Credito').asFloat := 0;
   End;


end;

procedure TfrmMovCaixa.cmbCod_CaixaChange(Sender: TObject);
begin
  cmbCod_Caixa.KeyValue := cmbNome_Caixa.KeyValue;
end;

procedure TfrmMovCaixa.cmbCod_TipoDespesaChange(Sender: TObject);
begin
   cmbNome_TipoDespesa.KeyValue := cmbCod_TipoDespesa.KeyValue;
end;

procedure TfrmMovCaixa.cmbD_CChange(Sender: TObject);
begin
   If cmbD_C.ItemIndex <> 0 Then
   Begin
      qryVariavel.Close;
      qryVariavel.Params.clear;
      qryVariavel.SQL.Text := 'Select * from T_Operacoes where '+
                                     '( Tipo_Conta=:parTipo_Conta Or Tipo_Conta=:parTipo_Conta1 ) '+
                                        'Order by Descricao ';
      qryVariavel.ParamByName('parTipo_Conta').AsInteger  := 0; // 1 Debito 2 Credito
      qryVariavel.ParamByName('parTipo_Conta1').AsInteger := 1; // 1 Debito 2 Credito
      //cmbNome_formaPagamento.Enabled := false;
      cmbNome_formaPagamento.KeyValue := '001';
    End
    Else
    Begin
      // receitas
      qryVariavel.Close;
      qryVariavel.Params.clear;
      qryVariavel.SQL.Text := 'Select * from T_Operacoes where '+
                                     '( Tipo_Conta=:parTipo_Conta  ) '+
                                        'Order by Descricao ';
      qryVariavel.ParamByName('parTipo_Conta').AsInteger  := 2; // 1 Debito 2 Credito
      cmbNome_formaPagamento.KeyValue := '001';
      //cmbNome_formaPagamento.Enabled := false;
    End;

    cdsCadOperacoes.Close;
    cdsCadOperacoes.ProviderName := dspVariavel.name;
    cdsCadOperacoes.Open;
end;

procedure TfrmMovCaixa.cmbNome_CaixaChange(Sender: TObject);
begin
   cmbCod_Caixa.KeyValue := cmbNome_Caixa.KeyValue;
end;

procedure TfrmMovCaixa.cmbNome_ClienteChange(Sender: TObject);
begin
   if cmbNome_Cliente.KeyValue <> Null then
      edtCod_Cliente.text :=cmbNome_Cliente.KeyValue;
end;

procedure TfrmMovCaixa.cmbNome_formaPagamentoChange(Sender: TObject);
begin
   lblCliente.Visible      := False;
   edtcod_Cliente.Visible  := False;
   cmbNome_Cliente.Visible := False;
   if cdsCadFormasPagamento.FieldByName('TipoLancamento').Asinteger=2 then
   Begin
      lblCliente.Visible      := True;
      edtcod_Cliente.Visible  := True;
      cmbNome_Cliente.Visible := True;
   End;
end;

procedure TfrmMovCaixa.cmbNome_TipoDespesaChange(Sender: TObject);
begin
   cmbCod_TipoDespesa.KeyValue := cmbNome_TipoDespesa.KeyValue;
end;

procedure TfrmMovCaixa.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmMovCaixa.edtcod_ClienteExit(Sender: TObject);
begin
  inherited;
   if Trim(edtCod_Cliente.text)<> '' Then
   Begin
      IF length(Trim(edtCod_Cliente.Text))<=5 Then
      Begin
         cmbNome_Cliente.KeyValue := edtCod_Cliente.text;
         if Trim(cmbNome_Cliente.Text) = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
            CaixaMensagem( 'Cliente Não Encontrado ', ctAviso, [ cbOk ], 0 );
         End;
      End;
   End
   else
      cmbNome_Cliente.KeyValue := Null;
end;

procedure TfrmMovCaixa.FormShow(Sender: TObject);
begin

   lblCliente.Visible      := False;
   edtcod_Cliente.Visible  := False;
   cmbNome_Cliente.Visible := False;


   cmbPeriodoChange(cmbPeriodo);

   qryVariavel.Close;
   qryVariavel.Params.clear;
   qryVariavel.SQL.Text := 'Select * from T_Operacoes where '+
                                  '( Tipo_Conta=:parTipo_Conta Or Tipo_Conta=:parTipo_Conta1 or Tipo_Conta=:parTipo_Conta2 ) '+
                                     'Order by Descricao ';
   qryVariavel.ParamByName('parTipo_Conta').AsInteger  := 0; // 1 Debito 2 Credito
   qryVariavel.ParamByName('parTipo_Conta1').AsInteger := 2; // 1 Debito 2 Credito
   qryVariavel.ParamByName('parTipo_Conta2').AsInteger := 3; // 1 Debito 2 Credito

   cdsCadOperacoes.Close;
   cdsCadOperacoes.ProviderName := dspVariavel.name;
   cdsCadOperacoes.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoLancamento from T_formasPagamento  '+
                          'where TipoPagamento=:parTipoPagamento '+
                          'order by Descricao' ;
   qryVariavel.ParamByName('parTipoPagamento').AsString := '0'; // A vista

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,'+
                           'Qtde_PedAberto,Limite_Credito,Cod_Rota from T_Clientes '+
                           'where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parativo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspVariavel.Name;
   cdsCadClientes.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select * from Caixas  order by Descricao ';

   cdsCaixas.Close;
   cdsCaixas.ProviderName := dspVariavel.Name;
   cdsCaixas.Open;
   if cdscaixas.IsEmpty then
   Begin
      CaixaMensagem( 'Não Existe Caixa cadastrado, cadastre um Caixa para continuar', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   try
      cmbCaixa.KeyValue := 1;
   except

   end;
   pnlDataovimento.Visible := False;
   if HeDistribuidora then
   begin
      pnlDataovimento.Visible := true;
      dtpData_Ini.Date := cdsCaixas.fieldByname('DataMovimento').AsDateTime;
      dtpData_Fim.date := cdsCaixas.fieldByname('DataMovimento').AsDateTime;
      pnlDataovimento.Caption := 'Data do Movimento '+cdsCaixas.fieldByname('DataMovimento').AsString;
   end;
   PagCadastro.ActivePageIndex := 0;
end;

procedure TfrmMovCaixa.GrdDespesasCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if aviewinfo.GridRecord.Values[Column_Esrtornado.Index]='S'  Then
     acanvas.Font.color := clBlack
  else IF aviewinfo.GridRecord.Values[colum_NomeD_C.Index]='Entrada' Then
     acanvas.Font.color := clBlue
  Else if aviewinfo.GridRecord.Values[colum_NomeD_C.Index]='Saida' Then
     acanvas.Font.color := clred
end;

procedure TfrmMovCaixa.impMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 07;
end;

end.
