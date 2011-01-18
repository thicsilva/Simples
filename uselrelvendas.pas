unit uselrelvendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, EditNew, Mask, bsSkinBoxCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, ToolWin, ComCtrls,
  FMTBcd, DBClient, Provider, SqlExpr,SqlTimSt, RDprint, BusinessSkinForm,
  dxSkinsCore;

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
    { Private declarations }
  public
    { Public declarations }
  end;

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
begin
   lsWhere := '';
   IF cmbStatus.ItemIndex <> 0 Then
     lsWhere := ' Ven.Status=:parstatus AND ';

   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Gru.Descricao as Grupo, Itens.Cod_Produto, Prod.Descricao, sum(Itens.Qtde_Venda)as Qtde_Total, '+
                            ' Sum(Itens.vlr_Total) as vlr_Total '+
                            'From t_Vendas Ven '+
                            'inner join T_itensVendas Itens on '+
                            '      Itens.Seqvenda=Ven.seqvenda '+
                            'inner join T_produtos Prod on  '+
                            '      Prod.Codigo=Itens.Cod_Produto '+
                            'inner join T_Grupos Gru on  '+
                            '      Gru.Codigo=Prod.Cod_Grupo '+
                            'where Ven.Tipo_Venda=:parTipo_venda  AND ' +lsWhere+' '+
                            ' ( Ven.Data_Venda>=:parData_VendaIni And Ven.Data_Venda<=:parData_VendaFim ) '+
                            'Group by Itens.Cod_Produto, Prod.Descricao, Gru.Descricao '+
                            'Order by 1 ';

   qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   IF cmbStatus.ItemIndex <> 0 Then
      qryRelatorio.ParamByName('parStatus').AsString   := IntToStr(cmbStatus.ItemIndex);

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
   CriarCalculado (DataSet,'pco_Medio',ftFloat,0);
end;

procedure TfrmSelRelVendas.cdsRelatorioCalcFields(DataSet: TDataSet);
begin
   cdsRelatorio.FieldByName('Pco_Medio').AsFloat  := 0;
   if cdsRelatorio.FieldByName('Qtde_total').Asfloat > 0 then
     cdsRelatorio.FieldByName('Pco_Medio').AsFloat :=  ( cdsRelatorio.FieldByName('vlr_total').Asfloat/cdsRelatorio.FieldByName('Qtde_total').Asfloat );
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
end;

procedure TfrmSelRelVendas.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                    Qtde  Vlr.Medio    Total ');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

end.
