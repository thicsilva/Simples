unit uselrelContaCorrenteEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, FMTBcd, RDprint, Provider,
  SqlExpr, DB, DBClient,sqltimst, StdCtrls, Mask, bsSkinBoxCtrls, EditNew,
  bsdbctrls;

type
  TfrmSelRelContaCorrenteEstoque = class(TForm)
    cdsMovEstoque: TClientDataSet;
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    impMatricial: TRDprint;
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cdsSaldoInicial: TClientDataSet;
    bsSkinStatusBar1: TbsSkinStatusBar;
    panelItem: TbsSkinExPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbCod_ProdutoIni: TbsSkinDBLookupComboBox;
    cmbNome_ProdutoIni: TbsSkinDBLookupComboBox;
    btnLimpa: TbsSkinButton;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    rdgTipoRelatorio: TbsSkinRadioGroup;
    cdsResumo: TClientDataSet;
    cmbPeriodo: TbsSkinComboBox;
    PanelTipoMovimento: TbsSkinExPanel;
    cmnTipoMovimento: TbsSkinComboBox;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinButton1: TbsSkinButton;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    procedure btnokClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdgTipoRelatorioClick(Sender: TObject);
    procedure cmbNome_ProdutoIniChange(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
    procedure cmbCod_ProdutoIniChange(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
     pvilinha : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelRelContaCorrenteEstoque: TfrmSelRelContaCorrenteEstoque;

implementation

uses ufuncoes,uprincipal;

{$R *.dfm}

procedure TfrmSelRelContaCorrenteEstoque.bsSkinButton1Click(Sender: TObject);
begin
   cmnTipoMovimento.ItemIndex := -1;
end;

procedure TfrmSelRelContaCorrenteEstoque.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmSelRelContaCorrenteEstoque.btnLimpaClick(Sender: TObject);
begin
   cmbCod_ProdutoIni.KeyValue := Null;
   cmbNome_ProdutoIni.KeyValue := Null;
end;

procedure TfrmSelRelContaCorrenteEstoque.btnokClick(Sender: TObject);
var  lrSaldoFinal  : Double;
     lrSaldoInicial: Double;
     ldTotal_E     : Double;
     ldTotal_S     : Double;
     lsTipo        : String;
     lsCampo       : String;
begin

   lsCampo := 'Pco_Venda';

   IF (rdgTipoRelatorio.ItemIndex=0) and (Trim(cmbCod_ProdutoIni.Text)='') Then
   Begin
      CaixaMensagem( 'Informe o produto ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   Case rdgTipoRelatorio.ItemIndex Of
      0 :
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.Text := 'SELECT E_S,Tipo_Movimento, Sum(Qtde*Pco_Venda) as pco_Venda, Sum(Qtde*Pco_Custo) as pco_Custo '+
                                 'From T_Saldos  '+
                                 'where ( Data_Mov>=:parData_VendaIni And Data_Mov<=:parData_VendaFim ) AND '+
                                 '  Cod_Produto=:parCod_Produto '+
                                 'Group By  E_S,Tipo_Movimento '+
                                 'Order by E_S ';
         qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
         qryVariavel.ParamByName('parCod_Produto').AsInteger        := StrToInt(cmbCod_ProdutoIni.Text);
      End;
      1 :
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.Text := 'Select E_S,Tipo_Movimento,'+
                                 '       SUM(pco_venda*Qtde) as Pco_venda, '+
                                 '       SUM(pco_Custo*Qtde) as Pco_Custo  '+
                                 'FROM T_saldos '+
                                 'where ( Data_Mov>=:parData_VendaIni And Data_Mov<=:parData_VendaFim ) '+
                                 'group by E_S,Tipo_Movimento '+
                                 'Order by E_S ';
         qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
      End;
   End;

   cdsResumo.Close;
   cdsResumo.ProviderName := dspVariavel.Name;
   cdsResumo.Open;


   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.Text := 'SELECT E_S,Sum(Qtde*Pco_Venda) as Vlr_Venda, Sum(Qtde*Pco_Custo) as Vlr_Custo '+
                           'From T_Saldos WHERE Data_Mov<=:parData_VendaIni ';

   if rdgTipoRelatorio.ItemIndex=0 Then
      qryVariavel.SQL.Text   := qryVariavel.SQL.Text+' And Cod_produto=:parCod_Produto ';
   qryVariavel.SQL.Text      := qryVariavel.SQL.Text+' Group by E_S Order by E_S ';

   qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(FormatDateTime('dd/mm/yyyy',dtpData_Ini.Date-1)+' 23:59:59');
   if rdgTipoRelatorio.ItemIndex=0 Then
      qryVariavel.ParamByName('parCod_Produto').AsInteger     := StrToInt(cmbCod_ProdutoIni.Text);

   cdsSaldoInicial.Close;
   cdsSaldoInicial.ProviderName := dspVariavel.Name;
   cdsSaldoInicial.Open;

   lrSaldoFinal := 0;
   while not cdsSaldoInicial.Eof Do
   Begin
      If cdsSaldoInicial.FieldByname('E_S').AsString = 'E' Then
         lrSaldoFinal := lrSaldoFinal + cdsSaldoInicial.FieldByname('Vlr_Venda').Asfloat
      Else
        lrSaldoFinal := lrSaldoFinal - cdsSaldoInicial.FieldByname('Vlr_Venda').Asfloat;
      cdsSaldoInicial.Next
   End;

   Case rdgTipoRelatorio.ItemIndex OF
      0 :
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.Text := 'SELECT Mov.Cod_Produto,Prod.Descricao,Mov.E_S,Mov.Historico,Mov.Data_Cad as Data_Mov, '+
                                 '       Mov.Qtde,Mov.Pco_Venda,Mov.Pco_Custo,Mov.Operador '+
                                 'FROM t_Saldos Mov '+
                                 'Left Join T_Produtos Prod ON '+
                                 '     Prod.Codigo=Mov.Cod_Produto  '+
                                 'where ( Mov.Data_Cad>=:parData_VendaIni And Mov.Data_Cad<=:parData_VendaFim ) AND '+
                                 '  Cod_Produto=:parCod_Produto '+
                                 'Order by Mov.Data_Cad ';
         qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
         qryVariavel.ParamByName('parCod_Produto').AsInteger        := StrToInt(cmbCod_ProdutoIni.Text);
      End;
      1 :
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.Text := 'Select E_S,Tipo_Movimento as Historico,Data_Mov,'+
                                 '       SUM(pco_venda*Qtde) as Pco_venda, '+
                                 '       SUM(pco_Custo*Qtde) as Pco_Custo, '+
                                 '       ''1'' as Qtde  '+
                                 'FROM T_saldos '+
                                 'where ( Data_Mov>=:parData_VendaIni And Data_Mov<=:parData_VendaFim ) '+
                                 'group by E_S,Tipo_Movimento,Data_Mov '+
                                 'Order by Data_mov ';
         qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
      End;
      2 :
      Begin
         qryVariavel.Close;
         qryVariavel.Params.Clear;
         qryVariavel.SQL.Text := ' SELECT Saldo.Cod_Produto,Prod.Descricao,Sum(Qtde) as Qtde_total, Sum(Saldo.Pco_Venda*Saldo.Qtde)as Vlr_Total '+
                                 ' from T_saldos Saldo ' +
                                 '      left Join T_Produtos Prod on ' +
                                 ' Prod.Codigo=Saldo.Cod_Produto '+
                                 'where ( Data_Mov>=:parData_VendaIni And Data_Mov<=:parData_VendaFim ) AND '+
                                 '        Tipo_Movimento =:parTipo_Movimento '+
                                 'group by Saldo.Cod_Produto,Prod.Descricao '+
                                 'Order by Saldo.Cod_Produto';
         qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
         qryVariavel.ParamByName('parTipo_Movimento').AsString      := cmnTipoMovimento.Text;
      End;
   End;

   cdsMovEstoque.Close;
   cdsMovEstoque.ProviderName := dspvariavel.Name;
   cdsMovEstoque.Open;

   if cdsMovEstoque.IsEmpty Then
   Begin
      CaixaMensagem( 'Relatorio sem movimentação para o periodo ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   case rdgTipoRelatorio.ItemIndex Of
      0 : GstituloRel  :='Relatorio Conta Correte de Estoque (Estrato do Item'+cmbNome_ProdutoIni.text+' )';
      1 : GstituloRel  :='Relatorio Conta Correte de Estoque ( Sintetico )';
      2 : GstituloRel  :='Relatorio Conta Correte de Estoque ('+cmnTipoMovimento.Text+')';
   end;

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   case rdgTipoRelatorio.ItemIndex Of
      0,1 :
      Begin

        cdsMovEstoque.First;
        lrSaldoInicial := lrSaldoFinal;
        impmatricial.Imp(pvilinha,001,' Saldo Em.: '+FormatDateTime('dd/mm/yyyy',dtpData_Ini.Date-1)+'    '+FormatFloat(',0.00',lrSaldoFinal ) );
        pviLinha:=Pvilinha+1;
        impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
        pviLinha:=Pvilinha+1;

        while not cdsMovEstoque.Eof do
        Begin
            impmatricial.Imp(pvilinha,001,cdsMovEstoque.FieldByName('E_S').AsString+' '+cdsMovEstoque.FieldByName('Historico').AsString );
            impmatricial.Imp(pvilinha,060,FormatDateTime('dd/mm/yyyy',cdsMovEstoque.FieldByName('Data_Mov').AsDatetime) );
            if cdsMovEstoque.FieldByName('E_S').AsString='E' then
            Begin
               impmatricial.ImpD(pvilinha,105,FormatFloat(',0.00',cdsMovEstoque.FieldByName('Qtde').AsInteger*cdsMovEstoque.FieldByName(lsCampo).Asfloat),[]);
               lrSaldoFinal  := lrSaldoFinal+(cdsMovEstoque.FieldByName('Qtde').AsInteger*cdsMovEstoque.FieldByName(lsCampo).Asfloat);
            End
            Else
            Begin
               impmatricial.ImpD(pvilinha,090,FormatFloat(',0.00',cdsMovEstoque.FieldByName('Qtde').AsInteger*cdsMovEstoque.FieldByName(lsCampo).Asfloat),[]);
               lrSaldoFinal  := lrSaldoFinal-(cdsMovEstoque.FieldByName('Qtde').AsInteger*cdsMovEstoque.FieldByName(lsCampo).Asfloat);
            End;
            impmatricial.ImpD(pvilinha,120,FormatFloat(',0.00',lrSaldoFinal),[]);
            pviLinha:=Pvilinha+1;
            if pvilinha>60 then
               impmatricial.Novapagina;
            cdsMovEstoque.next;
        End;
      End;
      2 :
      Begin
         ldTotal_S := 0;
         while not cdsMovEstoque.Eof do
         Begin
            impmatricial.Imp(pvilinha,001,IncZero(cdsMovEstoque.FieldByName('Cod_Produto').AsString,5)+' '+cdsMovEstoque.FieldByName('Descricao').AsString );
            impmatricial.ImpD(pvilinha,50,FormatFloat(',0',cdsMovEstoque.FieldByName('Qtde_Total').AsInteger),[]);
            impmatricial.ImpD(pvilinha,70,FormatFloat(',0.00',(cdsMovEstoque.FieldByName('vlr_Total').AsInteger/cdsMovEstoque.FieldByName('Qtde_Total').AsInteger)),[]);
            impmatricial.ImpD(pvilinha,90,FormatFloat(',0.00',cdsMovEstoque.FieldByName('vlr_Total').AsInteger),[]);
            pviLinha:=Pvilinha+1;
            ldTotal_S := ldTotal_S + cdsMovEstoque.FieldByName('vlr_Total').AsInteger;
            if pvilinha>60 then
               impmatricial.Novapagina;
            cdsMovEstoque.next;
         End;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,' Total..:  ');
         impmatricial.ImpD(pvilinha,90,FormatFloat(',0.00',ldTotal_S),[]);
         pviLinha:=Pvilinha+1;
     End;
   End;

   case rdgTipoRelatorio.ItemIndex Of
      0,1 :
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,' Saldor Final....:  ');
         impmatricial.Impd(pvilinha,120,FormatFloat(',0.00',lrSaldoFinal),[] );
         pviLinha:=Pvilinha+2;
         lsTipo    := cdsResumo.FieldByName('E_S').AsString;
         ldTotal_E := 0;
         ldTotal_S := 0;
         if pvilinha+cdsResumo.RecordCount>60 then
            impmatricial.Novapagina;

         while not cdsResumo.Eof do
         Begin
            if lsTipo<>cdsResumo.FieldByName('E_S').AsString then
            Begin
               impmatricial.Imp(pvilinha,001,'-----------------------------------------------');
               pviLinha:=Pvilinha+1;
               impmatricial.Imp(pvilinha,001,'Total das Entradas(1)');
               impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',ldTotal_E),[]);
               pviLinha:=Pvilinha+2;
               lsTipo:=cdsResumo.FieldByName('E_S').AsString;
            End;
            impmatricial.Imp(pvilinha,001,cdsResumo.FieldByName('E_S').AsString+' '+cdsResumo.FieldByName('Tipo_Movimento').AsString );
            impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',cdsResumo.FieldByName(lsCampo).asFloat),[]);
            pviLinha:=Pvilinha+1;
            if cdsResumo.FieldByName('E_S').AsString='E' then
               ldTotal_E := ldTotal_E + cdsResumo.FieldByName(lsCampo).asFloat;
            if cdsResumo.FieldByName('E_S').AsString='S' then
               ldTotal_S := ldTotal_S + cdsResumo.FieldByName(lsCampo).asFloat;

            cdsResumo.Next;
         End;
         impmatricial.Imp(pvilinha,001,'-----------------------------------------------');
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total das Saidas(2)');
         impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',ldTotal_S),[]);
         pviLinha:=Pvilinha+2;
         impmatricial.Imp(pvilinha,001, 'Saldo do Periodo (1)-(2)=(3)...');
         impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',ldTotal_E-ldTotal_S),[]);
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001, 'Saldo Periodo anterior (4)');
         impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',lrSaldoInicial),[]);
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'-----------------------------------------------');
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001, 'Saldo Final (4)+(3)');
         impmatricial.ImpD(pvilinha,45,FormatFloat(',0.00',(ldTotal_E-ldTotal_S)+lrSaldoInicial),[]);
         pviLinha:=Pvilinha+1;
      End;
   End;
   impmatricial.Fechar;
end;

procedure TfrmSelRelContaCorrenteEstoque.cmbCod_ProdutoIniChange(
  Sender: TObject);
begin
   cmbNome_ProdutoIni.KeyValue := cmbCod_ProdutoIni.KeyValue;
end;

procedure TfrmSelRelContaCorrenteEstoque.cmbNome_ProdutoIniChange(
  Sender: TObject);
begin
   cmbCod_ProdutoIni.KeyValue := cmbNome_ProdutoIni.KeyValue;
end;

procedure TfrmSelRelContaCorrenteEstoque.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmSelRelContaCorrenteEstoque.FormShow(Sender: TObject);
begin
   cmbPeriodoChange(cmbPeriodo);
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao '+
                          'From T_Produtos where tipo_Produto=:parTipo_Produto '+
                          'Order by Descricao ';
   qryVariavel.ParamByName('parTipo_Produto').AsString := '0';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='SELECT Tipo_movimento from T_saldos group by Tipo_Movimento';

   cdsResumo.Close;
   cdsResumo.ProviderName := dspVariavel.Name;
   cdsResumo.Open;
   cmnTipoMovimento.Items.Clear;
   while not cdsResumo.Eof do
   Begin
      cmnTipoMovimento.Items.Add(cdsResumo.FieldByName('Tipo_Movimento').AsString);
      cdsResumo.Next;
   end;

   rdgTipoRelatorio.ItemIndex := 1;

end;

procedure TfrmSelRelContaCorrenteEstoque.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   case rdgTipoRelatorio.ItemIndex Of
      0,1 : TRdPrint( Sender ).imp(pvilinha,001,'E/S Rotina                                                              Data        Saida       Entrada         Saldo');
        2 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo - Descricao do Produto                Qtde.          Vlr. Medio             Total ');
   end;

   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmSelRelContaCorrenteEstoque.rdgTipoRelatorioClick(Sender: TObject);
begin
   cmnTipoMovimento.ImageIndex := -1;
   cmbNome_ProdutoIni.KeyValue := Null;
   case rdgTipoRelatorio.ItemIndex  of
      0 :
      Begin
         panelItem.RollState := False;
         panelItem.Enabled   := True;
         PanelTipoMovimento.RollState :=True;
         PanelTipoMovimento.Enabled   := False;
      End;
      1 :
      Begin
         panelItem.RollState := True;
         panelItem.Enabled   := False;
         PanelTipoMovimento.RollState :=True;
         PanelTipoMovimento.Enabled   := False;
      End;
      2 :
      Begin
         panelItem.RollState := True;
         panelItem.Enabled   := False;
         PanelTipoMovimento.RollState :=False;
         PanelTipoMovimento.Enabled   := True;
      End;
   end;
end;

end.
