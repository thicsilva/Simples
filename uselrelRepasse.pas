unit uselrelRepasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,SqlTimSt,
  Dialogs, FMTBcd, DB, DBClient, SqlExpr, Provider, bsSkinCtrls, bsdbctrls,uformBase,
  StdCtrls, ComCtrls, bsSkinTabs, ExtCtrls, ToolWin, RDprint, bsSkinBoxCtrls,
  Mask, BusinessSkinForm;

type
  TfrmselrelRepasse = class(TFormBase)
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    btnLimpa: TbsSkinButton;
    dspVariavel: TDataSetProvider;
    qryvariavel: TSQLQuery;
    cdsCadRotas: TClientDataSet;
    srcCadRotas: TDataSource;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    srcRelatorios: TDataSource;
    cdsRelatorio: TClientDataSet;
    impMatricial: TRDprint;
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbCod_RotaIni: TbsSkinDBLookupComboBox;
    cmbNome_RotaIni: TbsSkinDBLookupComboBox;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbCod_RotaFim: TbsSkinDBLookupComboBox;
    cmbNome_Rotafim: TbsSkinDBLookupComboBox;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    procedure cmbCod_RotaIniChange(Sender: TObject);
    procedure cmbNome_RotaIniChange(Sender: TObject);
    procedure cmbNome_RotafimChange(Sender: TObject);
    procedure cmbCod_RotaFimChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbPeriodoChange(Sender: TObject);
  private
     pviLinha : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselrelRepasse: TfrmselrelRepasse;

implementation

uses uprincipal,ufuncoes, uControleRepasse;

{$R *.dfm}

procedure TfrmselrelRepasse.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmselrelRepasse.btnokClick(Sender: TObject);
var lrVlr_Rota  : double;
    lrVlr_Total : double;
    liQtde_Rota : Integer;
    lsNome_Rota : String;
    lsWhere     : String;
    lsFrom      : String;
begin
   lsWhere := '';

   if frmselrelRepasse.Tag = 1 Then
   Begin
      lsFrom  := 'LEFT JOIN T_Vendas Ven on Ven.SeqVenda=Rec.Seqvenda';
      lsWhere := 'Ven.Cod_TipoVenda=:parCod_tipoVenda ';
   End
   Else
      lsWhere := '(Data_Repasse>=:parData_RepasseIni and Data_Repasse<=:parData_RepasseFim ) And Rec.Repasse=:parRepasse ';
   if cmbCod_RotaIni.KeyValue <> Null then
      lsWhere := ' And ( Rota.Codigo>=:parRotaIni and Rota.Codigo<=:ParRotaFim ) ';


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
                            'WHERE  '+lsWhere+' '+
                            'Order by 1,2 ';
   case frmselrelRepasse.Tag Of
      0 :
      Begin
         qryRelatorio.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryRelatorio.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
         qryRelatorio.ParamByName('parRepasse').AsString := 'S';
      End;
      1 : qryRelatorio.ParamByName('parCod_TipoVenda').AsString   := frmControleRepasse.cmbNome_TipoVenda.KeyValue;
   end;

   if cmbCod_RotaIni.KeyValue <> Null then
   Begin
      qryRelatorio.ParamByName('parRotaini').AsInteger := StrToint(cmbCod_RotaIni.Text);
      qryRelatorio.ParamByName('parRotaFim').AsInteger := StrToint(cmbCod_RotaFim.Text);
   End;

   cdsRelatorio.close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

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

   while not cdsRelatorio.Eof do
   Begin
      if lsNome_Rota<>cdsRelatorio.FieldByname('Nome_Rota').AsString then
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
         impmatricial.Imp(pvilinha,001,cdsRelatorio.FieldByName('Nome_Rota').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Rota:=cdsRelatorio.FieldByname('Nome_Rota').AsString;
      End;
      impmatricial.Imp (pvilinha,001,cdsRelatorio.FieldByName('Nome_Rota').AsString+' '+cdsRelatorio.FieldByName('Controle').AsString);
      impmatricial.Imp (pvilinha,025,Copy(cdsRelatorio.FieldByName('Descricao').AsString,1,30));
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsRelatorio.fieldByname('Vlr_Areceber').asfloat),[]);
      pvilinha := pvilinha + 1 ;

      lrVlr_Rota   := lrVlr_Rota  + cdsRelatorio.fieldByname('Vlr_Areceber').asfloat;
      lrVlr_Total  := lrVlr_Total + cdsRelatorio.fieldByname('Vlr_Areceber').asfloat;
      liQtde_Rota  := liQtde_Rota + 1;

      if pvilinha>60 then
         impmatricial.Novapagina;

      cdsRelatorio.Next;
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

end;

procedure TfrmselrelRepasse.cmbCod_RotaFimChange(Sender: TObject);
begin
   cmbNome_RotaFim.KeyValue := cmbCod_RotaFim.KeyValue;
end;

procedure TfrmselrelRepasse.cmbCod_RotaIniChange(Sender: TObject);
begin
   cmbNome_Rotaini.KeyValue := cmbCod_Rotaini.KeyValue;
end;

procedure TfrmselrelRepasse.cmbNome_RotafimChange(Sender: TObject);
begin
   cmbCod_RotaFim.KeyValue := cmbNome_RotaFim.KeyValue;
end;

procedure TfrmselrelRepasse.cmbNome_RotaIniChange(Sender: TObject);
begin
   cmbCod_Rotaini.KeyValue := cmbNome_Rotaini.KeyValue;
end;

procedure TfrmselrelRepasse.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmselrelRepasse.FormShow(Sender: TObject);
begin
   QryVariavel.Close;
   QryVariavel.SQL.text := 'Select * From T_Rotas order by codigo ';

   cdsCadRotas.Close;
   cdsCadRotas.ProviderName := dspVariavel.Name;
   cdsCadRotas.Open;

   cmbPeriodoChange(cmbPeriodo);

end;

procedure TfrmselrelRepasse.impMatricialNewPage(Sender: TObject;
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
