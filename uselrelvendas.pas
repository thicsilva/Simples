unit uselrelvendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, EditNew, Mask, bsSkinBoxCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, ToolWin, ComCtrls,
  FMTBcd, DBClient, Provider, SqlExpr,SqlTimSt, RDprint, BusinessSkinForm,
  dxSkinsCore, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDaoCaixaMovimento, SimpleDS;

type
  TfrmSelRelVendas = class(TForm)
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    cxGrid1: TcxGrid;
    GridRelatorio: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    btnPesquisar: TbsSkinButton;
    dtpData_Ini: TbsSkinDateEdit;
    edtData_Ini: TEditN;
    dtpData_Fim: TbsSkinDateEdit;
    edtData_fim: TEditN;
    lblTurma: TbsSkinStdLabel;
    cmbVencto: TComboBox;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    GridRelatorioColumn1: TcxGridDBColumn;
    GridRelatorioColumn2: TcxGridDBColumn;
    GridRelatorioColumn3: TcxGridDBColumn;
    GridRelatorioColumn4: TcxGridDBColumn;
    GridRelatorioColumn5: TcxGridDBColumn;
    GridRelatorioColumn6: TcxGridDBColumn;
    impMatricial: TRDprint;
    SkinForm: TbsBusinessSkinForm;
    cmbTipoRel: TbsSkinComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStatusBar2: TbsSkinStatusBar;
    cmbStatus: TbsSkinComboBox;
    lblsituacao: TbsSkinStdLabel;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    cmbTipoResultado: TbsSkinComboBox;
    procedure edtData_IniExit(Sender: TObject);
    procedure edtData_fimExit(Sender: TObject);
    procedure cmbVenctoChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cdsRelatorioBeforeOpen(DataSet: TDataSet);
    procedure cdsRelatorioAfterOpen(DataSet: TDataSet);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
  private
    pviLinha : Integer;
    procedure RelatorioDeVendas;
    function RetornaSelectDasVendas: String; 
    { Private declarations }
  public
    { Public declarations }
  end;
  const RELATORIO_DE_LOCACAO = 2;
        RELATORIO_DE_LUCRATIVIDADE = 3;

var
  frmSelRelVendas: TfrmSelRelVendas;

implementation
uses ufuncoes,uprincipal;
{$R *.dfm}

procedure TfrmSelRelVendas.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmSelRelVendas.btnokClick(Sender: TObject);
var lsNome_Grupo : String;
    lrVlr_Grupo  : Double;
    lrQtde_Grupo : Double;
    lrVlr_Total  : Double;
    lrQtde_Total : Double;
begin
   if cdsRelatorio.IsEmpty Then
   Begin
      CaixaMensagem( 'Selecione os dados para impressao ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   GstituloRel  :='Relatorio de Vendas Por Grupo de '+cmbTipoRel.Text;
   if tag = RELATORIO_DE_LOCACAO then
      GstituloRel:='Relatorio de Produtos Locados de '+cmbTipoRel.Text;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lrVlr_Grupo  := 0;
   lrQtde_Grupo := 0;
   lrVlr_Total  := 0;
   lrQtde_Total := 0;
   lsNome_Grupo :='FORCA QUEBRA';

   cdsRelatorio.First;
   While not cdsRelatorio.Eof Do
   begin
      if lsNome_Grupo<>cdsRelatorio.FieldByname('Grupo').AsString then
      Begin
         IF lsNome_Grupo<>'FORCA QUEBRA' Then
         Begin
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,'Total do Grupo ');
            impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Grupo),[]);
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Grupo),[]);
            pviLinha:=Pvilinha+2;
            lrVlr_Grupo  := 0;
            lrQtde_Grupo := 0;
         End;
         impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName('Grupo').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Grupo:=cdsRelatorio.FieldByname('Grupo').AsString;
      End;
      impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Produto').AsString,5)+' '+cdsrelatorio.FieldByName('Descricao').AsString );
      impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);

      if tag = RELATORIO_DE_LOCACAO then
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',cdsrelatorio.fieldByname('Dias').asfloat),[]);

      impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);
      impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_Medio').asfloat),[]);
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);

      lrVlr_Grupo  := lrVlr_Grupo + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrQtde_Grupo := lrQtde_Grupo + cdsrelatorio.fieldByname('Qtde_Total').asfloat;
      lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrQtde_Total := lrQtde_Total + cdsrelatorio.fieldByname('Qtde_Total').asfloat;

      pvilinha := pvilinha + 1 ;
      if pvilinha>60 then
         impmatricial.Novapagina;

      cdsRelatorio.Next;
   end;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total do Grupo ');
   impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Grupo),[]);
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Grupo),[]);
   pviLinha:=Pvilinha+2;

   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral ');
   impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Total),[]);
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrvlr_Total),[]);
   pviLinha:=Pvilinha+2;
   impmatricial.Fechar;
   
end;

procedure TfrmSelRelVendas.btnPesquisarClick(Sender: TObject);
var lsWhere : String;
    lsSelect : String;
    lsValorTotal : String;
begin
   if cmbTipoResultado.ItemIndex=1 then
   begin
      RelatorioDeVendas;
      exit;
   end;

   lsValorTotal := ' Sum(Itens.vlr_Total) as vlr_Total ';
   if Tag = RELATORIO_DE_LOCACAO then
      lsValorTotal := ' sum( (Itens.Qtde_Venda*Itens.Pco_venda) * Coalesce(Itens.dias,1)) as  Vlr_Total ' ;

   lsWhere := '';
   lsSelect := 'inner join T_FormasPagamento Forma on Forma.Codigo=Ven.Cod_FormaPagamento';

   lsWhere := lsWhere + ' Forma.SomaVenda<>'+QuotedStr('1')+' AND ';
   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Gru.Descricao as Grupo, Itens.Cod_Produto, Prod.Descricao, sum(Coalesce(Itens.dias,1)) as Dias, sum(Itens.Qtde_Venda) as Qtde_Total, '+
                            lsValorTotal+
                            'From t_Vendas Ven '+
                            'inner join T_itensVendas Itens on '+
                            '      Itens.Seqvenda=Ven.seqvenda '+
                            'inner join T_produtos Prod on  '+
                            '      Prod.Codigo=Itens.Cod_Produto '+
                            'inner join T_Grupos Gru on  '+
                            '      Gru.Codigo=Prod.Cod_Grupo '+lsSelect+' '+
                           'where Ven.Tipo_Venda=:parTipo_venda  AND ' +lsWhere+' '+
                            ' ( Ven.Data_Venda>=:parData_VendaIni And Ven.Data_Venda<=:parData_VendaFim ) '+
                            'Group by Itens.Cod_Produto, Prod.Descricao, Gru.Descricao '+
                            'Order by 1 ';

   qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   if Tag <> RELATORIO_DE_LOCACAO then
   begin
      IF cmbStatus.ItemIndex <> 0 Then
         qryRelatorio.ParamByName('parStatus').AsString   := IntToStr(cmbStatus.ItemIndex);
   end;

   If cmbTipoRel.ItemIndex = 0 Then
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'P'
   Else
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'S';

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

   if cdsRelatorio.IsEmpty then
   Begin
      CaixaMensagem( 'Nenhuma Informação foi Selecionada ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
end;

procedure TfrmSelRelVendas.cdsRelatorioAfterOpen(DataSet: TDataSet);
var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmSelRelVendas.cdsRelatorioBeforeOpen(DataSet: TDataSet);
begin
  // CriarCalculado (DataSet,'pco_Medio',ftFloat,0);
end;

procedure TfrmSelRelVendas.cdsRelatorioCalcFields(DataSet: TDataSet);
var Dias : Real;
begin
   Dias := 1;
   if Tag = RELATORIO_DE_LOCACAO then
      Dias := cdsRelatorio.FieldByName('Dias').Asfloat;
   cdsRelatorio.FieldByName('Pco_Medio').AsFloat  := 0;
   if cdsRelatorio.FieldByName('Qtde_total').Asfloat > 0 then
      cdsRelatorio.FieldByName('Pco_Medio').AsFloat :=  ( cdsRelatorio.FieldByName('vlr_total').Asfloat/ ( cdsRelatorio.FieldByName('Qtde_total').Asfloat * Dias ) );
end;

procedure TfrmSelRelVendas.cmbVenctoChange(Sender: TObject);
begin
   ListaPeriodo( TEdit( edtData_Ini ), TEdit( edtData_Fim ), cmbVencto.ItemIndex,gsData_Mov );
   edtData_IniExit( Self );
   edtData_fimExit( Self );
end;

procedure TfrmSelRelVendas.edtData_fimExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Fim.Text );
      dtpData_Fim.Date := StrToDate( edtData_Fim.Text );
   Except
      CaixaMensagem( 'A data final informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Fim.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmSelRelVendas.edtData_IniExit(Sender: TObject);
begin
   Try
      StrToDate( edtData_Ini.Text );
      dtpData_Ini.Date := StrToDate( edtData_Ini.Text );
   Except
      CaixaMensagem( 'A data inicial informada é inválida', ctAviso, [ cbOk ], 0 );
      Try
         edtData_Ini.SetFocus;
      Except
         //
      End;
      Exit;
   End;
end;

procedure TfrmSelRelVendas.FormShow(Sender: TObject);
begin
   cmbVenctoChange(cmbVencto);
   if tag=RELATORIO_DE_LOCACAO then
   begin
      caption := 'Relatório de locações';
      cmbStatus.Items.Clear;
      cmbStatus.Items.ADD('Locados');
      cmbStatus.Items.ADD('Entregue');
      cmbStatus.ItemIndex := 1;
   end;
end;

procedure TfrmSelRelVendas.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   if Tag = RELATORIO_DE_LOCACAO then
      TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                           Dias    Qtde  Vlr.Medio    Total ')
   else
   if Tag = RELATORIO_DE_LUCRATIVIDADE then
      TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao Produto                     Quant. Vlr.Unit Custo Total Lucro')
   else
      TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                    Qtde  Vlr.Medio    Total ');

   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmSelRelVendas.RelatorioDeVendas;
var lrTotal_Venda    : real;
    lrTotal_recebido : real;
    lrTotal_Extras   : real;
    lrTotal_Saidas   : real;
    lrDiferenca      : real;
    lrTotal_Baixa    : real;
    lrVlr_Saida      : real;
    lrVlr_Entrada    : real;
    dataInicial, dataFinal : tDateTime;
    DaoCaixaMovimento : TDaoCaixaMovimento;
    sdtsTempPagInformado : TsimpleDataSet;
    lsNomePagamento : string;
  vlrLucro: Real;
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

   dataInicial := dtpData_Ini.Date;
   dataFinal   := dtpData_Fim.Date;

   DaoCaixaMovimento    := TDaoCaixaMovimento.Create(gConexao);

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   qryRelatorio.Close;
   qryRelatorio.Sql.Text := RetornaSelectDasVendas;
   qryRelatorio.ParamByName('parDataIni').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataInicial)+'00:00:00');
   qryRelatorio.ParamByName('parDataFim').AsSqlTimeStamp := StrToSQLTimeStamp(DateToStr(dataFinal)+'23:59:59');

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspRelatorio.name;
   cdsRelatorio.Open;

   pvilinha := pviLinha + 1;
   if not cdsRelatorio.IsEmpty then
   begin

      ImpMatricial.imp(pvilinha,001,'Codigo Descricao Produto             Quant. Vlr.Unit Custo Total Lucro');
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
      pviLinha:=Pvilinha+1;

      while not cdsrelatorio.Eof do
      Begin
         if lsNomePagamento <> cdsrelatorio.FieldByName('FormaPagamento').AsString then
         begin
            if lrTotal_Venda<>0 then
            begin
               ImpMatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
               pviLinha:=Pvilinha+1;
               ImpMatricial.imp(pvilinha,001,'Total...');
               impmatricial.ImpD(pvilinha,072,FormatFloat(',0.00',lrTotal_Venda),[]);
               pviLinha:=Pvilinha+2;
               lrTotal_Venda:=0;
            end;
            impmatricial.Imp(pvilinha,001,Copy(cdsrelatorio.FieldByName('FormaPagamento').AsString,1,20) );
            pviLinha:=Pvilinha+1;
            ImpMatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            lsNomePagamento := cdsrelatorio.FieldByName('FormaPagamento').AsString;
         end;

         impmatricial.Imp (pvilinha,001,Copy(cdsrelatorio.FieldByName('Codigo').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString,1,40) );
         impmatricial.ImpD(pvilinha,046,FormatFloat(',0',cdsrelatorio.fieldByname('Qtde_Total').asfloat),[]);
         impmatricial.ImpD(pvilinha,054,FormatFloat('0.00',cdsrelatorio.fieldByname('Pco_UnitMedio').asfloat),[]);
         impmatricial.ImpD(pvilinha,062,FormatFloat('0.00',cdsrelatorio.fieldByname('TotalCusto').asfloat),[]);
         impmatricial.ImpD(pvilinha,072,FormatFloat('0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
         vlrLucro := ( cdsrelatorio.fieldByname('Vlr_Total').asfloat - cdsrelatorio.fieldByname('TotalCusto').asfloat);
         if vlrLucro<>0 then
            vlrlucro := Arredondar( (vlrlucro/cdsrelatorio.fieldByname('Vlr_Total').asfloat)*100,2);

         impmatricial.ImpD(pvilinha,080,FormatFloat('0.00',vlrLucro )+'%',[]);
         lrTotal_Venda   := lrTotal_Venda + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
         cdsrelatorio.Next;
         if pvilinha>55 then
            impmatricial.Novapagina;

         pvilinha := pviLinha + 1;
      End;
      ImpMatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
      pviLinha:=Pvilinha+1;
      ImpMatricial.imp(pvilinha,001,'Total...');
      impmatricial.ImpD(pvilinha,072,FormatFloat(',0.00',lrTotal_Venda),[]);
      pviLinha:=Pvilinha+1;
      pviLinha:=Pvilinha+2;
   end;
   ImpMatricial.Fechar;
end;

function TfrmSelRelVendas.RetornaSelectDasVendas : String;
var lsFiltro : String;
begin

   Result := 'Select pag.Codigo as PagId, '+
             '       Pag.Descricao as FormaPagamento, '+
             '       Prod.Codigo,Prod.Descricao, '+
             '       Itens.pco_Venda as Pco_UnitMedio, '+
             '       Itens.Vlr_total as Vlr_Total, '+
             '       Itens.Qtde_Venda as Qtde_Total, '+
             '       ( Itens.PrecoCusto*Itens.Qtde_Venda ) as TotalCusto, '+
             '       Itens.Vlr_total - ( Itens.PrecoCusto*Itens.Qtde_Venda ) as totalLucro '+
             'from  T_itensvendas itens '+
             '       left join T_Vendas Ven on Ven.SeqVenda = itens.SeqVenda '+
             '       left Join T_Produtos Prod on Prod.codigo=Itens.Cod_Produto '+
             '       Left join T_Grupos grupo on Grupo.Codigo=Prod.Cod_Grupo '+
             '       left join T_FormasPagamento Pag on Pag.Codigo = Ven.Cod_FormaPagamento '+
             'where ( Itens.data_mov>=:parDataIni and Itens.data_mov<=:parDataFim ) and Ven.Status<>'+QuotedSTR('5')+
             'Order by 1,8 desc ';
end;


end.
