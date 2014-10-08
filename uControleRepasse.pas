unit uControleRepasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, Mask, bsSkinBoxCtrls,SqlTimSt, EditNew, RDprint, bsdbctrls,
  BusinessSkinForm, dxSkinsCore, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmControleRepasse = class(TForm)
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    btnPesquisar: TbsSkinButton;
    dtpData_Fim: TbsSkinDateEdit;
    cxGrid1: TcxGrid;
    GridRelatorio: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    cdsRepasse: TClientDataSet;
    srcRepasse: TDataSource;
    cdsRepasseRota: TStringField;
    cdsRepassevlr_Repasse: TFloatField;
    cdsRepassevlr_Total: TFloatField;
    cdsRepassevlr_Recebido: TFloatField;
    cdsRepassevlr_Devolvido: TFloatField;
    cdsRepassevlr_Perdido: TFloatField;
    cdsRepassevlr_Comissao: TFloatField;
    cdsRepassevlr_SaldoRepasse: TFloatField;
    cdsRepasseQTDE_Fichas: TIntegerField;
    GridRelatorioRota: TcxGridDBColumn;
    GridRelatoriovlr_Repasse: TcxGridDBColumn;
    GridRelatoriovlr_Total: TcxGridDBColumn;
    GridRelatoriovlr_Recebido: TcxGridDBColumn;
    GridRelatoriovlr_Devolvido: TcxGridDBColumn;
    GridRelatoriovlr_Perdido: TcxGridDBColumn;
    GridRelatoriovlr_Comissao: TcxGridDBColumn;
    GridRelatoriovlr_SaldoRepasse: TcxGridDBColumn;
    GridRelatorioQTDE_Fichas: TcxGridDBColumn;
    cdsRepassePerc001: TFloatField;
    cdsRepasseperc002: TFloatField;
    cdsRepasseperc003: TFloatField;
    cdsRepasseperc004: TFloatField;
    GridRelatorioPerc001: TcxGridDBColumn;
    GridRelatorioperc002: TcxGridDBColumn;
    GridRelatorioperc003: TcxGridDBColumn;
    GridRelatorioperc004: TcxGridDBColumn;
    cdsRepasseperc005: TFloatField;
    GridRelatorioColumn1: TcxGridDBColumn;
    impMatricial: TRDprint;
    cmbPeriodo: TbsSkinComboBox;
    cmbNome_TipoVenda: TbsSkinDBLookupComboBox;
    srcTipoVenda: TDataSource;
    cdsTipoVenda: TClientDataSet;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    dtpData_Ini: TbsSkinDateEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnImprimir: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    BtnFechamento: TbsSkinSpeedButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure BtnFechamentoClick(Sender: TObject);
  private
     pviLinha : Integer;   
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControleRepasse: TfrmControleRepasse;

implementation

uses uprincipal,ufuncoes, ufechames, uselrelRepasse;

{$R *.dfm}

procedure TfrmControleRepasse.BtnFechamentoClick(Sender: TObject);
begin
   frmfechames := Tfrmfechames.create(Self);
   frmfechames.Tag := FrmcontroleRepasse.Tag;
   frmfechames.ShowModal;
end;

procedure TfrmControleRepasse.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmControleRepasse.btnImprimirClick(Sender: TObject);
var lrVlr_Rota  : double;
    lrVlr_Total : double;
    liQtde_Rota : Integer;
    lsNome_Rota : String;
begin
   frmselrelRepasse := TfrmselrelRepasse.create(Self);
   frmselrelRepasse.Tag := frmcontroleRepasse.Tag;
   frmselrelRepasse.ShowModal;
  {
   qryRelatorio.Close;
   qryRelatorio.Params.Clear;
   qryRelatorio.SQL.Text := 'SELECT Rota.Descricao as Nome_Rota,Ven.Controle,Cli.descricao,Rec.Vlr_Areceber '+
                            'FROM T_Ctasreceber Rec '+
                            '     LEFT JOIN T_CLientes Cli ON '+
                            '          Cli.Codigo=Rec.Cod_Cliente '+
                            '     LEFT JOIN T_Rotas Rota ON '+
                            '          Rota.Codigo=Cli.Cod_Rota '+
                            '     LEFT JOIN T_Vendas Ven ON '+
                            '          Ven.Seqvenda=Rec.SeqVenda '+
                            'WHERE Rec.Repasse=:parRepasse and '+
                            '(Data_Repasse>=:parData_RepasseIni and Data_Repasse<=:parData_RepasseFim ) '+
                            'Order by 1,2 ';
   qryRelatorio.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryRelatorio.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   qryRelatorio.ParamByName('parRepasse').AsString := 'S';
   qryRelatorio.Open;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lrVlr_Rota  := 0;
   lrVlr_Total := 0;
   liQtde_Rota := 0;
   lsNome_Rota := 'FORCA QUEBRA';

   cdsRelatorio.First;

   while not qryRelatorio.Eof do
   Begin
      if lsNome_Rota<>qryRelatorio.FieldByname('Nome_Rota').AsString then
      Begin
         IF lsNome_Rota<>'FORCA QUEBRA' Then
         Begin
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,'Quantidade Total da Rota..: '+intToStr(liQtde_Rota));
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
            pviLinha:=Pvilinha+2;
            lrVlr_Rota   := 0;
            liQtde_Rota  := 0;
         End;
         impmatricial.Imp(pvilinha,001,qryRelatorio.FieldByName('Nome_Rota').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Rota:=qryRelatorio.FieldByname('Nome_Rota').AsString;
      End;
      impmatricial.Imp (pvilinha,001,qryRelatorio.FieldByName('Nome_Rota').AsString+' '+qryRelatorio.FieldByName('Controle').AsString);
      impmatricial.Imp (pvilinha,025,Copy(qryRelatorio.FieldByName('Descricao').AsString,1,30));
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',qryRelatorio.fieldByname('Vlr_Areceber').asfloat),[]);
      pvilinha := pvilinha + 1 ;

      lrVlr_Rota   := lrVlr_Rota  + qryRelatorio.fieldByname('Vlr_Areceber').asfloat;
      lrVlr_Total  := lrVlr_Total + qryRelatorio.fieldByname('Vlr_Areceber').asfloat;
      liQtde_Rota  := liQtde_Rota + 1;
      
      if pvilinha>60 then
         impmatricial.Novapagina;

      qryRelatorio.Next;
   End;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Quantidade Total da Rota..: '+intToStr(liQtde_Rota));
   impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
   pviLinha:=Pvilinha+1;
  // impmatricial.Imp(pvilinha,001,'Total da Rota..: '+intToStr(liQtde_Rota));
   //impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Total),[]);
   pviLinha:=Pvilinha+2;
   lrVlr_Rota   := 0;
   liQtde_Rota  := 0;

   impmatricial.Fechar;
   }
End;

procedure TfrmControleRepasse.btnPesquisarClick(Sender: TObject);
var
  lsFrom : String;
  lsWhere : String;
begin

   if frmControleRepasse.Tag = 1 Then
   Begin
      if cmbNome_TipoVenda.KeyValue = null then
      Begin
         CaixaMensagem( 'Informe o tipo de venda !!!', ctInforma, [ cbOk ], 0 );
         Exit;
      End;
      lsFrom  := 'LEFT JOIN T_Vendas Ven on Ven.SeqVenda=Rec.Seqvenda';
      lsWhere := 'Ven.Cod_TipoVenda=:parCod_tipoVenda and (tipo_baixa<>:parTipo_Baixa or Tipo_baixa is null) and Fechado is Null';
   End
   Else
      lsWhere := '(Data_Repasse>=:parData_RepasseIni and Data_Repasse<=:parData_RepasseFim ) And Rec.Repasse=:parRepasse ';


   qryRelatorio.Close;
   qryRelatorio.Params.Clear;
   qryRelatorio.SQL.Text := 'SELECT Rota.Descricao, '+
                            '       Sum(Rec.Vlr_Original)  As Tot_Repasse, '+
                            '       Sum(Rec.Vlr_Recebido)  As Tot_Recebido, '+
                            '       Sum(Rec.Vlr_Devolvido) As Tot_Devolvido, '+
                            '       Sum(Rec.Vlr_Comissao)  As Tot_Comissao, '+
                            '       Sum(Rec.Vlr_Perdido)   As Tot_Perdido, '+
                            '       Count(Distinct(Rec.SeqVenda)) As Qtde_Repasse '+
                            'FROM T_Ctasreceber Rec '+
                            '       LEFT JOIN T_CLientes Cli ON '+
                            '            Cli.Codigo=Rec.Cod_Cliente '+
                            '       LEFT JOIN T_Rotas Rota ON '+
                            '            Rota.Codigo=Cli.Cod_Rota '+
                                     lsFrom + ' '+
                            'WHERE '+lsWhere+' '+
                            'GROUP BY Rota.Descricao ' ;
  IF frmControleRepasse.Tag = 1 Then
  Begin
     qryRelatorio.ParamByName('parCod_TipoVenda').AsString      := cmbNome_TipoVenda.KeyValue;
     qryRelatorio.ParamByName('parTipo_baixa').AsString         :='PP';
  End
  Else
  Begin
     qryRelatorio.ParamByName('parRepasse').AsString               := 'S';
     qryRelatorio.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
     qryRelatorio.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
  End;

  cdsRelatorio.Close;
  cdsRelatorio.ProviderName := dspRelatorio.Name;
  cdsRelatorio.Open;


  cdsRepasse.EmptyDataSet;
  while not cdsRelatorio.Eof do
  Begin
     cdsRepasse.Append;
     cdsRepasse.FieldByName('Rota').AsString            := cdsRelatorio.FieldByName('Descricao').AsString;
     cdsRepasse.FieldByName('Vlr_Repasse').AsFloat      := cdsRelatorio.FieldByName('Tot_Repasse').AsFloat;
     cdsRepasse.FieldByName('Vlr_Recebido').AsFloat     := cdsRelatorio.FieldByName('Tot_Recebido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat    := cdsRelatorio.FieldByName('Tot_Devolvido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Perdido').AsFloat      := cdsRelatorio.FieldByName('Tot_Perdido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Comissao').AsFloat     := cdsRelatorio.FieldByName('Tot_Comissao').AsFloat;
     if cdsRelatorio.FieldByName('Tot_Repasse').AsFloat <> 0 then
     Begin
        cdsRepasse.FieldByName('Perc001').AsFloat       := (cdsRelatorio.FieldByName('Tot_Recebido').AsFloat/cdsRelatorio.FieldByName('Tot_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc002').AsFloat       := (cdsRelatorio.FieldByName('Tot_Devolvido').AsFloat/cdsRelatorio.FieldByName('Tot_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc003').AsFloat       := (cdsRelatorio.FieldByName('Tot_Perdido').AsFloat/cdsRelatorio.FieldByName('Tot_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc004').AsFloat       := (cdsRelatorio.FieldByName('Tot_Comissao').AsFloat/cdsRelatorio.FieldByName('Tot_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc005').AsFloat       := (cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat/cdsRelatorio.FieldByName('Tot_Repasse').AsFloat)*100;
     End
     Else
     Begin
        cdsRepasse.FieldByName('Perc001').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc002').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc003').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc004').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc005').AsFloat       := 0;
     End;
     cdsRepasse.FieldByName('Qtde_Fichas').AsInteger    := cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
     cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := cdsRelatorio.FieldByName('Tot_Repasse').AsFloat -
                                                           ( cdsRelatorio.FieldByName('Tot_Recebido').AsFloat+
                                                             cdsRelatorio.FieldByName('Tot_Devolvido').AsFloat+
                                                             cdsRelatorio.FieldByName('Tot_Perdido').AsFloat+
                                                             cdsRelatorio.FieldByName('Tot_Comissao').AsFloat );
     cdsRepasse.Post;
     cdsRelatorio.Next;
  End;

   if frmControleRepasse.Tag = 1 Then
   Begin
      if cmbNome_TipoVenda.KeyValue = null then
      Begin
         CaixaMensagem( 'Informe o tipo de venda !!!', ctInforma, [ cbOk ], 0 );
         Exit;
      End;
      lsFrom  := 'LEFT JOIN T_Vendas Ven on Ven.SeqVenda=Rec.Seqvenda';
      lsWhere := 'Ven.Cod_TipoVenda=:parCod_tipoVenda and (tipo_baixa=:parTipo_Baixa) and Fechado is Null';
   End
   Else
      lsWhere := '(Data_Repasse>=:parData_RepasseIni and Data_Repasse<=:parData_RepasseFim ) And Rec.Repasse=:parRepasse ';


   qryRelatorio.Close;
   qryRelatorio.Params.Clear;
   qryRelatorio.SQL.Text := 'SELECT Rota.Descricao, '+
                            '       Sum(Rec.Vlr_Original)  As Tot_Repasse, '+
                            '       Sum(Rec.Vlr_Recebido)  As Tot_Recebido, '+
                            '       Sum(Rec.Vlr_Devolvido) As Tot_Devolvido, '+
                            '       Sum(Rec.Vlr_Comissao)  As Tot_Comissao, '+
                            '       Sum(Rec.Vlr_Perdido)   As Tot_Perdido, '+
                            '       Count(Distinct(Rec.SeqVenda)) As Qtde_Repasse '+
                            'FROM T_Ctasreceber Rec '+
                            '       LEFT JOIN T_CLientes Cli ON '+
                            '            Cli.Codigo=Rec.Cod_Cliente '+
                            '       LEFT JOIN T_Rotas Rota ON '+
                            '            Rota.Codigo=Cli.Cod_Rota '+
                                     lsFrom + ' '+
                            'WHERE '+lsWhere+' '+
                            'GROUP BY Rota.Descricao ' ;
  IF frmControleRepasse.Tag = 1 Then
  Begin
     qryRelatorio.ParamByName('parCod_TipoVenda').AsString      := cmbNome_TipoVenda.KeyValue;
     qryRelatorio.ParamByName('parTipo_baixa').AsString         :='PP';

     cdsRelatorio.Next;
  End
  Else
  Begin
     qryRelatorio.ParamByName('parRepasse').AsString               := 'S';
     qryRelatorio.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
     qryRelatorio.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
  End;

  cdsRelatorio.Close;
  cdsRelatorio.ProviderName := dspRelatorio.Name;
  cdsRelatorio.Open;

  while not cdsRelatorio.Eof do
  Begin
     cdsRepasse.Locate('rota', cdsRelatorio.FieldByName('Descricao').AsString,[]);
     cdsRepasse.Edit;
     cdsRepasse.FieldByName('Vlr_Recebido').AsFloat     := cdsRelatorio.FieldByName('Tot_Recebido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat    := cdsRelatorio.FieldByName('Tot_Devolvido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Perdido').AsFloat      := cdsRelatorio.FieldByName('Tot_Perdido').AsFloat;
     cdsRepasse.FieldByName('Vlr_Comissao').AsFloat     := cdsRelatorio.FieldByName('Tot_Comissao').AsFloat;
     cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := cdsRepasse.FieldByName('Vlr_Repasse').AsFloat -
                                                           ( cdsRepasse.FieldByName('Vlr_Recebido').AsFloat+
                                                             cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat+
                                                             cdsRepasse.FieldByName('Vlr_Perdido').AsFloat+
                                                             cdsRepasse.FieldByName('Vlr_Comissao').AsFloat );

     if cdsRepasse.FieldByName('Vlr_Repasse').AsFloat <> 0 then
     Begin
        cdsRepasse.FieldByName('Perc001').AsFloat       := (cdsRepasse.FieldByName('vlr_Recebido').AsFloat/cdsRepasse.FieldByName('Vlr_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc002').AsFloat       := (cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat/cdsRepasse.FieldByName('Vlr_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc003').AsFloat       := (cdsRepasse.FieldByName('Vlr_Perdido').AsFloat/cdsRepasse.FieldByName('Vlr_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc004').AsFloat       := (cdsRepasse.FieldByName('Vlr_Comissao').AsFloat/cdsRepasse.FieldByName('Vlr_Repasse').AsFloat)*100;
        cdsRepasse.FieldByName('Perc005').AsFloat       := (cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat/cdsRepasse.FieldByName('Vlr_Repasse').AsFloat)*100;
     End
     Else
     Begin
        cdsRepasse.FieldByName('Perc001').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc002').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc003').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc004').AsFloat       := 0;
        cdsRepasse.FieldByName('Perc005').AsFloat       := 0;
     End;
     cdsRepasse.FieldByName('Qtde_Fichas').AsInteger    := cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
     cdsRepasse.Post;
     cdsRelatorio.Next;
  End;


end;

procedure TfrmControleRepasse.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmControleRepasse.FormShow(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_TipoVendas order by Descricao ';

   cdsTipoVenda.Close;
   cdsTipoVenda.ProviderName := dspVariavel.Name;
   cdsTipoVenda.Open;

   cmbPeriodoChange(cmbPeriodo);

end;

procedure TfrmControleRepasse.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   TRdPrint( Sender ).imp(pvilinha,001,'Descricao                                                                Total ');
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

end.
