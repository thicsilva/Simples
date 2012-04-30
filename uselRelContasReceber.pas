{ Contas a receber

   Status -> 0 - Aberto
             1 - Pago
             2 - Cancelado
}
unit uselRelContasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,cxGridExportLink,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, bsSkinBoxCtrls, StdCtrls, Mask,
  FMTBcd, BusinessSkinForm, RDprint, DBClient, Provider, SqlExpr, SqlTimSt,
  Menus, bsSkinMenus, dxBar, cxGridCustomPopupMenu, cxGridPopupMenu,UformBase,
  dxSkinsCore;

type
  TfrmSelRelContasReceber = class(TFormBase)
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    btnPesquisar: TbsSkinButton;
    cmbPeriodo: TbsSkinComboBox;
    grdRelatorio: TcxGrid;
    GridRelatorio: TcxGridDBTableView;
    grdRelatorioLevel1: TcxGridLevel;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    impMatricial: TRDprint;
    cmbTipoRelatorio: TbsSkinComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbTipoResultado: TbsSkinComboBox;
    Column_Cod_Cliente: TcxGridDBColumn;
    Column_Descricao: TcxGridDBColumn;
    Column_Data_Emissao: TcxGridDBColumn;
    Column_Data_Vencimento: TcxGridDBColumn;
    Column_Data_Pagamento: TcxGridDBColumn;
    Column_Vlr_Areceber: TcxGridDBColumn;
    Column_Vlr_Recebido: TcxGridDBColumn;
    Column_Nome_Rota: TcxGridDBColumn;
    Column_Bairro: TcxGridDBColumn;
    PopRepasse: TbsSkinPopupMenu;
    ColocaremRepasse1: TMenuItem;
    RetirardoRepasse1: TMenuItem;
    Column_Nome_Repasse: TcxGridDBColumn;
    Column_Controle: TcxGridDBColumn;
    qryModific: TSQLQuery;
    ExpMenu: TbsSkinPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cmbRepasse: TbsSkinComboBox;
    Column_funcionario: TcxGridDBColumn;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnExportaExcel: TbsSkinMenuSpeedButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbTipoRelatorioChange(Sender: TObject);
    procedure cdsRelatorioBeforeOpen(DataSet: TDataSet);
    procedure cdsRelatorioCalcFields(DataSet: TDataSet);
    procedure ColocaremRepasse1Click(Sender: TObject);
    procedure RetirardoRepasse1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
     pviLinha : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelRelContasReceber: TfrmSelRelContasReceber;

implementation

uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmSelRelContasReceber.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSelRelContasReceber.btnokClick(Sender: TObject);
var lsNome_Rota : String;
    lrVlr_Rota  : Double;
    lrVlr_Total : Double;
    lsCampo     : String;
    liQtde      : Integer;
    ldTot_Devolucao : Double;
    ldVlr_Devolucao : Double;
    ldTot_Perdido   : Double;
    ldVlr_Perdido   : Double;
    ldvlr_Comissao  : Double;
    ldTot_Comissao  : Double;
    ldVlr_aReceber  : Double;
    ldTot_aReceber  : Double;
begin
   if cdsRelatorio.IsEmpty Then
   Begin
      CaixaMensagem( 'Selecione os dados para impressao ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   GstituloRel  :='Relatorio de '+cmbTipoRelatorio.text+' '+cmbTipoResultado.text;
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   lrVlr_Rota      := 0;
   lrVlr_Total     := 0;
   ldTot_Devolucao := 0;
   ldVlr_Devolucao := 0;
   ldTot_Perdido   := 0;
   ldVlr_Perdido   := 0;
   ldvlr_Comissao  := 0;
   ldTot_Comissao  := 0;
   ldVlr_aReceber  := 0;
   ldTot_aReceber  := 0;

   lsNome_Rota := 'FORCA QUEBRA';

   case  cmbTipoResultado.ItemIndex of
     0,1 : lsCampo     := 'Rota';
     2,3 : lsCampo     := 'Funcionario';
   end;

   cdsRelatorio.First;
   liQtde  := 0;
   while not cdsRelatorio.Eof do
   Begin
      if lsNome_Rota<>cdsRelatorio.FieldByname(lsCampo).AsString then
      Begin
         IF lsNome_Rota<>'FORCA QUEBRA' Then
         Begin
            case cmbTipoResultado.ItemIndex of
               0 : impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
               1 :
               Begin
                  impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                  pviLinha:=Pvilinha+1;
                  impmatricial.Imp(pvilinha,001,'Total do(a) '+lsCampo+' '+FormatFloat('0',liQtde));
                  impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
               End;
               2 :
               Begin
                  impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',ldvlr_aReceber),[]);
                  impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrVlr_Rota),[]);
                  impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',ldVlr_Devolucao),[]);
                  impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',ldVlr_Perdido),[]);
                  impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',ldVlr_Comissao),[]);
               End;
               3 :
               Begin
                  impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                  pviLinha:=Pvilinha+1;
                  impmatricial.Imp(pvilinha,001,'Total do(a) '+lsCampo+' '+FormatFloat('0',liQtde));
                  impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',ldVlr_aReceber),[]);
                  impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrVlr_Rota),[]);
                  impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',ldVlr_Devolucao),[]);
                  impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',ldVlr_Perdido),[]);
                  impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',ldVlr_Comissao),[]);
               End;
            end;
            pviLinha:=Pvilinha+1;
            if ( cmbTipoResultado.ItemIndex=1) or ( cmbTipoResultado.ItemIndex=3) then
               pviLinha:=Pvilinha+1;

            liQtde          := 0;
            lrVlr_Rota      := 0;
            ldVlr_Devolucao := 0;
            ldVlr_Perdido   := 0;
            ldVlr_aReceber  := 0;
            ldVlr_Comissao  := 0;

         End;
         impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName(lsCampo).AsString );
         if ( cmbTipoResultado.ItemIndex=1) or ( cmbTipoResultado.ItemIndex=3) then
         Begin
            pviLinha:=Pvilinha+1;
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
         End;
         lsNome_Rota:=cdsRelatorio.FieldByname(lscampo).AsString;
      End;
      if ( cmbTipoResultado.ItemIndex=1) or ( cmbTipoResultado.ItemIndex=3) then
      Begin
         impmatricial.Imp (pvilinha,001, Copy ( cdsrelatorio.FieldByName('Controle').AsString+' '+cdsrelatorio.FieldByName('Descricao').AsString ,1,30));
         if cmbTipoRelatorio.ItemIndex = 0 then // Contas a Receber
         Begin
            impmatricial.ImpD(pvilinha,059,FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Emissao').asDateTime),[]);
            impmatricial.ImpD(pvilinha,071,FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Vencimento').asDateTime),[]);
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Areceber').asfloat),[]);
         End
         Else if cmbTipoRelatorio.ItemIndex = 1 then // Contas a Recebidas
         Begin
            if cmbTipoResultado.ItemIndex=3 then
            Begin
               impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Areceber').asfloat),[]);
               impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Recebido').asfloat),[]);
               impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Devolvido').asfloat),[]);
               impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Perdido').asfloat),[]);
               impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Comissao').asfloat),[]);
            End
            Else
            Begin
               impmatricial.ImpD(pvilinha,059,FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Vencimento').asDateTime),[]);
               impmatricial.ImpD(pvilinha,071,FormatDateTime('dd/mm/yyyy',cdsrelatorio.fieldByname('Data_Pagamento').asDateTime),[]);
               impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Recebido').asfloat),[]);
            End;
         End;
         pvilinha := pvilinha + 1 ;
      End;

      if cmbTipoRelatorio.ItemIndex = 0 then // Contas a Receber
      Begin
         lrVlr_Rota   := lrVlr_Rota  + cdsrelatorio.fieldByname('Vlr_Areceber').asfloat;
         lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Areceber').asfloat;
      End
      Else if cmbTipoRelatorio.ItemIndex = 1 then // Contas a Recebidas
      Begin
         lrVlr_Rota      := lrVlr_Rota  + cdsrelatorio.fieldByname('Vlr_Recebido').asfloat;
         lrVlr_Total     := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Recebido').asfloat;
         ldTot_Devolucao := ldTot_Devolucao + cdsrelatorio.fieldByname('vlr_devolvido').asfloat;
         ldvlr_Devolucao := ldVlr_Devolucao + cdsrelatorio.fieldByname('vlr_devolvido').asfloat;
         ldVlr_Perdido   := ldVlr_Perdido + cdsrelatorio.fieldByname('vlr_Perdido').asfloat;
         ldTot_Perdido   := ldTot_Perdido + cdsrelatorio.fieldByname('vlr_Perdido').asfloat;
         ldTot_Comissao  := ldtot_Comissao + cdsrelatorio.fieldByname('vlr_Comissao').asfloat;
         ldVlr_Comissao  := ldVlr_Comissao + cdsrelatorio.fieldByname('vlr_Comissao').asfloat;
         ldTot_aReceber  := ldTot_aReceber + cdsrelatorio.fieldByname('vlr_areceber').asfloat;
         ldVlr_aReceber  := ldVlr_aReceber + cdsrelatorio.fieldByname('vlr_areceber').asfloat;
      End;

      if pvilinha>60 then
         impmatricial.Novapagina;
      liQtde := liQtde + 1;
      cdsRelatorio.Next;
   End;
   case cmbTipoResultado.ItemIndex of
      0 : impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
      1 :
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do(a) '+lsCampo+' '+FormatFloat('0',liQtde));
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Rota),[]);
      End;
      2 :
      Begin
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',ldvlr_aReceber),[]);
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrVlr_Rota),[]);
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',ldVlr_Devolucao),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',ldVlr_Perdido),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',ldVlr_Comissao),[]);
      End;
      3 :
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do(a) '+lsCampo+' '+FormatFloat('0',liQtde));
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',ldVlr_aReceber),[]);
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrVlr_Rota),[]);
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',ldVlr_Devolucao),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',ldVlr_Perdido),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',ldVlr_Comissao),[]);
      End;
   end;
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral... ');

   case cmbTipoResultado.ItemIndex of
      0 : impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Total),[]);
      1 : impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Total),[]);
      2,3 :
      Begin
         impmatricial.ImpD(pvilinha,040,FormatFloat(',0.00',ldTot_aReceber),[]);
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrVlr_Total),[]);
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',ldTot_Devolucao),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',ldTot_Perdido),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',ldTot_Comissao),[]);
      End;
   end;

  // impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Total),[]);
   impmatricial.Fechar;
end;

procedure TfrmSelRelContasReceber.btnPesquisarClick(Sender: TObject);
begin
   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'SELECT Rec.Cod_Cliente,Cli.Descricao,Rec.Vlr_Areceber,Rec.Data_Pagamento, '+
                            '       Rec.Vlr_Recebido,Rec.vlr_devolvido,Rec.Vlr_Comissao,Rec.Vlr_Perdido,Ven.Cod_Funcionario, '+
                            '       Rec.Data_Emissao,Rec.Data_Vencimento,Cli.Bairro,Cli.Cod_Rota,Rot.Descricao as Rota, '+
                            '       Rec.Repasse,Ven.Controle, Rec.Sequencia, Rec.Documento, Fun.Descricao as Funcionario '+
                            'FROM T_ctasreceber Rec '+
                            '     Left Join T_Clientes Cli on '+
                            '          Cli.Codigo=Rec.Cod_Cliente '+
                            '     Left Join T_Rotas Rot on '+
                            '          Rot.Codigo=Cli.Cod_rota '+
                            '     Left Join T_Vendas Ven On ' +
                            '          Ven.SeqVenda=Rec.SeqVenda '+
                            '     Left Join T_Funcionarios Fun on ' +
                            '         Fun.Codigo = Ven.Cod_Funcionario '+
                            'WHERE Rec.Status=:parStatus ';
   if cmbTipoRelatorio.ItemIndex = 0 then // Contas a Receber
      qryRelatorio.SQL.Add(' And ( Rec.Data_Vencimento>=:parData_Ini And Rec.Data_Vencimento<=:parData_Fim ) ');
   if cmbTipoRelatorio.ItemIndex = 1 then // Contas a Receber
      qryRelatorio.SQL.Add(' And ( Rec.Data_Pagamento>=:parData_Ini And Rec.Data_Pagamento<=:parData_Fim ) ');
   if cmbRepasse.ItemIndex <> 0 then
      qryRelatorio.SQL.Add(' And Rec.Repasse=:parRepasse ');

   case cmbTipoResultado.ItemIndex of
      0,1 : qryRelatorio.SQL.Add(' ORDER BY Cli.Cod_Rota,Ven.Controle ');
      2,3 : qryRelatorio.SQL.Add(' ORDER BY Ven.Cod_Funcionario,Ven.Controle ');
   end;




   qryRelatorio.ParamByName('parData_Ini').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryRelatorio.ParamByName('parData_Fim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   qryRelatorio.ParamByName('parStatus').AsInteger        := cmbTipoRelatorio.ItemIndex;
   Case cmbRepasse.ItemIndex of
      1 : qryRelatorio.ParamByName('parRepasse').AsString    := 'S';
      2 : qryRelatorio.ParamByName('parRepasse').AsString    := 'N';
   End;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;

end;

procedure TfrmSelRelContasReceber.cdsRelatorioBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado (DataSet,'Nome_Repasse',ftString,3);
end;

procedure TfrmSelRelContasReceber.cdsRelatorioCalcFields(DataSet: TDataSet);
begin
   if cdsRelatorio.FieldByName('Repasse').AsString = 'S' Then
      cdsRelatorio.FieldByName('Nome_Repasse').AsString := 'Sim'
   Else
      cdsRelatorio.FieldByName('Nome_Repasse').AsString := 'Não';
end;

procedure TfrmSelRelContasReceber.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
   cdsRelatorio.close;
end;

procedure TfrmSelRelContasReceber.cmbTipoRelatorioChange(Sender: TObject);
begin
   cdsRelatorio.close;
end;

procedure TfrmSelRelContasReceber.ColocaremRepasse1Click(Sender: TObject);
var lsSequencia : String ;
begin
   lsSequencia := cdsRelatorio.FieldByName('Sequencia').AsString;

   qryModific.Close;
   qryModific.Params.Clear;
   qryModific.SQL.Text := 'Update T_Ctasreceber set Repasse=:parRepasse, data_Repasse=:parData_Repasse '+
                           'Where Documento=:parDocumento and Sequencia=:parSequencia';
   qryModific.ParamByName('parDocumento').asString           := cdsRelatorio.FieldByName('Documento').AsString;
   qryModific.ParamByName('parRepasse').asString             := 'S';
   qryModific.ParamByName('parData_Repasse').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov);
   qryModific.ParamByName('parSequencia').asInteger          := cdsRelatorio.FieldByName('Sequencia').AsInteger;
   qryModific.ExecSQL;

   btnPesquisarClick(btnPesquisar);

   cdsRelatorio.Locate('Sequencia',lsSequencia,[]);

end;

procedure TfrmSelRelContasReceber.FormShow(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmSelRelContasReceber.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   case cmbTipoResultado.ItemIndex of
     1   : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                              Emissao    Vencimento    Total ');
     0,2 : TRdPrint( Sender ).imp(pvilinha,001,'Descricao                                                                Total ');
     3   : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                Total   Recebido Devolvido  Perdido  Comissão');
   end;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmSelRelContasReceber.MenuItem1Click(Sender: TObject);
begin
   ExportGridToExcel(gsPath+'Relatorios Excel\Relatorio_'+formatDatetime('mmss',now),grdRelatorio,False);
end;

procedure TfrmSelRelContasReceber.MenuItem2Click(Sender: TObject);
begin
   ExportGridToExcel(gsPath+'Relatorios Excel\Relatorio_'+formatDatetime('mmss',now),grdRelatorio);
end;

procedure TfrmSelRelContasReceber.RetirardoRepasse1Click(Sender: TObject);
var lsSequencia : String ;
begin
   lsSequencia := cdsRelatorio.FieldByName('Sequencia').AsString;

   qryModific.Close;
   qryModific.Params.Clear;
   qryModific.SQL.Text := 'Update T_Ctasreceber set Repasse=:parRepasse, data_Repasse=:parData_Repasse '+
                           'Where Documento=:parDocumento and Sequencia=:parSequencia';
   qryModific.ParamByName('parDocumento').asString           := cdsRelatorio.FieldByName('Documento').AsString;
   qryModific.ParamByName('parRepasse').asString             := 'N';
   qryModific.ParamByName('parData_Repasse').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(gsdata_mov);
   qryModific.ParamByName('parSequencia').asInteger          := cdsRelatorio.FieldByName('Sequencia').AsInteger;
   qryModific.ExecSQL;

   btnPesquisarClick(btnPesquisar);

   cdsRelatorio.Locate('Sequencia',lsSequencia,[]);
end;

end.
