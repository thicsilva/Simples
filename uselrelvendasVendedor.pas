unit uselrelvendasVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, bsSkinCtrls, EditNew, Mask, bsSkinBoxCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ExtCtrls, ToolWin, ComCtrls,
  FMTBcd, DBClient, Provider, SqlExpr,SqlTimSt, RDprint, BusinessSkinForm,
  bsdbctrls, Menus, bsSkinMenus, bsSkinTabs, SimpleDS, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter;

type
  TfrmselrelVendasVendedor = class(TForm)
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    GridRelVendedor: TcxGrid;
    ViewClientes: TcxGridDBTableView;
    GridClientes: TcxGridLevel;
    btnPesquisar: TbsSkinButton;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    impMatricial: TRDprint;
    SkinForm: TbsBusinessSkinForm;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    ViewClientesColumn1: TcxGridDBColumn;
    ViewClientesColumn2: TcxGridDBColumn;
    ViewClientesColumn3: TcxGridDBColumn;
    ViewClientesColumn4: TcxGridDBColumn;
    ViewClientesColumn5: TcxGridDBColumn;
    ViewClientesColumn6: TcxGridDBColumn;
    ViewClientesColumn7: TcxGridDBColumn;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbCod_VendedorFim: TbsSkinDBLookupComboBox;
    cmbCod_VendedorIni: TbsSkinDBLookupComboBox;
    cmbNome_VendedorIni: TbsSkinDBLookupComboBox;
    cmbNome_Vendedorfim: TbsSkinDBLookupComboBox;
    btnLimpa: TbsSkinButton;
    lblSupervisor: TbsSkinStdLabel;
    cmbCod_Supervisor: TbsSkinDBLookupComboBox;
    cmbNome_Supervisor: TbsSkinDBLookupComboBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    cmbTipoResultado: TbsSkinComboBox;
    GridProdutos: TcxGridLevel;
    ViewProdutos: TcxGridDBTableView;
    Column_Vendedor: TcxGridDBColumn;
    Column_Cod_Produto: TcxGridDBColumn;
    Column_Produto: TcxGridDBColumn;
    Column_Qtde_Venda: TcxGridDBColumn;
    Column_Pco_Medio: TcxGridDBColumn;
    Column_Vlr_total: TcxGridDBColumn;
    GridSupervisor: TcxGridLevel;
    ViewSupervisor: TcxGridDBTableView;
    Column_Cod_Supervisor: TcxGridDBColumn;
    Column_Supervisor: TcxGridDBColumn;
    Column_Cod_Funcionario: TcxGridDBColumn;
    Column_Vendedor2: TcxGridDBColumn;
    Colum_Vlr_total: TcxGridDBColumn;
    Column_Atividade: TcxGridDBColumn;
    sdtsBuscaProdutos: TSimpleDataSet;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbCod_VendedorIniChange(Sender: TObject);
    procedure cmbNome_VendedorIniChange(Sender: TObject);
    procedure cmbCod_VendedorFimChange(Sender: TObject);
    procedure cmbNome_VendedorfimChange(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure cdsRelatorioAfterOpen(DataSet: TDataSet);
    procedure cmbTipoResultadoChange(Sender: TObject);
    procedure cmbNome_SupervisorChange(Sender: TObject);
    procedure cmbCod_SupervisorChange(Sender: TObject);
  private
    pviLinha : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselrelVendasVendedor: TfrmselrelVendasVendedor;

implementation
uses ufuncoes,uprincipal;
{$R *.dfm}

procedure TfrmselrelVendasVendedor.btnLimpaClick(Sender: TObject);
begin
   cmbCod_VendedorIni.KeyValue  := Null;
   cmbNome_VendedorIni.KeyValue := Null;
   cmbCod_VendedorFim.KeyValue  := Null;
   cmbNome_VendedorFim.KeyValue := Null;
   cmbCod_Supervisor.KeyValue   := Null;
   cmbNome_Supervisor.KeyValue  := Null;
end;

procedure TfrmselrelVendasVendedor.bsSkinSpeedButton1Click(Sender: TObject);
var lsNome_Quebra   : String;
    lrVlr_Vendedor  : Double;
    lrQtde_Vendedor : Double;
    lrVlr_Total     : Double;
    lrQtde_Total    : Double;
    lsCampo         : String;
    vlr_Comissao    : Double;
    vlr_ComissaoVendedor : Double;

begin
   if cdsRelatorio.IsEmpty Then
   Begin
      CaixaMensagem( 'Selecione os dados para impressao ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   gsPeriodoRel := ' Relatorio de '+ FormatDateTime('dd/mm/yyyy',dtpData_Ini.Date)+' a ' +FormatDateTime('dd/mm/yyyy',dtpData_Fim.Date);
   lsCampo      := 'Vendedor';
   case cmbTipoResultado.ItemIndex of
      0 :
      Begin
        GstituloRel  :=' Relatorio de vendas por vendedor analitico ';
        lsCampo      := 'Vendedor'
      End;
      1 : GstituloRel  :=' Relatorio de vendas por vendedor sintetico ';
      2 : GstituloRel  :=' Relatorio de produtos por vendedor ';
      3 :
      Begin
         GstituloRel  :=' Relatorio de vendas por supervisor analitico ';
         lsCampo      := 'Supervisor'
      End;
      4 : GstituloRel  :=' Relatorio de vendas por supervisor sintetico ';
      5 :
      Begin
         GstituloRel  :=' Relatorio de Produtos por Supervisor ';
         lsCampo      := 'Supervisor'
      End;
      6,7 :
      Begin
         GstituloRel  :=' Relatorio de Vendas por Clientes e Atividade ';
         lsCampo      := 'Atividade'
      End;
      8 : GstituloRel  :=' Relatorio de Comissões por produtos e vendedor ';
   end;


   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   case cmbTipoResultado.ItemIndex of
      0,1,3,4,6,7:
      Begin

         lrVlr_Vendedor  := 0;
         lrVlr_Total     := 0;
         lsNome_Quebra :='FORCA QUEBRA';

         cdsRelatorio.First;
         While not cdsRelatorio.Eof Do
         begin
           case cmbTipoResultado.ItemIndex Of
              0,3,6,7 :
              Begin
                 if lsNome_Quebra<>cdsRelatorio.FieldByname(lsCampo).AsString then
                 Begin
                    IF lsNome_Quebra<>'FORCA QUEBRA' Then
                    Begin
                       impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                       pviLinha:=Pvilinha+1;
                       impmatricial.Imp(pvilinha,001,'Total do '+lsCampo);
                       impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Vendedor),[]);
                       pviLinha:=Pvilinha+2;
                       lrVlr_Vendedor  := 0;
                    End;
                    impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName(lsCampo).AsString );
                    pviLinha:=Pvilinha+1;
                    impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                    pviLinha:=Pvilinha+1;
                    lsNome_Quebra:=cdsRelatorio.FieldByname(lsCampo).AsString;
                 End;
                 case cmbTipoResultado.ItemIndex Of
                    0,6,7:
                    Begin
                       impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Cliente').AsString,5)+' '+cdsrelatorio.FieldByName('Descricao').AsString );
                       impmatricial.Imp(pvilinha,044,IncZero(cdsrelatorio.FieldByName('SeqVenda').AsString,8)+' '+
                                                     cdsrelatorio.FieldByName('Controle').AsString );
                       impmatricial.Imp(pvilinha,061, formatdatetime('dd/mm/yyyy',cdsRelatorio.FieldByName('Data_Mov').AsDatetime));
                       if cmbTipoResultado.ItemIndex=7 then
                       Begin
                          sdtsBuscaProdutos.Close;
                          sdtsBuscaProdutos.DataSet.CommandText :='SELECT Prod.Codigo,Prod.Descricao,Itens.Qtde_Venda,Itens.Pco_Venda,Itens.Vlr_total ' +
                                                                  'FROM T_itensvendas Itens ' +
                                                                  '     LEFT JOIN T_produtos Prod on ' +
                                                                  'Prod.Codigo=Itens.Cod_Produto '+
                                                                  'WHERE seqvenda=:parSeqVenda ';
                          sdtsBuscaProdutos.DataSet.ParamByName('parSeqVenda').AsInteger := (cdsrelatorio.FieldByName('SeqVenda').AsInteger);
                          sdtsBuscaProdutos.Open;
                          pviLinha:=Pvilinha+1;
                          impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                          pviLinha:=Pvilinha+1;
                          while not sdtsBuscaProdutos.Eof Do
                          Begin
                              impmatricial.Imp(pvilinha,010,IncZero(sdtsBuscaProdutos.FieldByName('Codigo').AsString,5)+' '+sdtsBuscaProdutos.FieldByName('Descricao').AsString );
                              impmatricial.ImpD(pvilinha,040,FormatFloat(',0',sdtsBuscaProdutos.fieldByname('Qtde_Venda').asfloat),[]);
                              impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',sdtsBuscaProdutos.fieldByname('Pco_Venda').asfloat),[]);
                              impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',sdtsBuscaProdutos.fieldByname('Vlr_total').asfloat),[]);
                              pvilinha := pvilinha + 1 ;
                              if pvilinha>60 then
                                 impmatricial.Novapagina;
                             sdtsBuscaProdutos.Next
                          End;
                       End;
                    End;
                    3 : impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Funcionario').AsString,5)+' '+cdsrelatorio.FieldByName('Vendedor').AsString );
                 end;
                 impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
                 lrVlr_Vendedor  := lrVlr_Vendedor + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
              End;
              1,4 :
              Begin
                 impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Funcionario').AsString,5)+' '+cdsrelatorio.FieldByName('Vendedor').AsString );
                 impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
              End;
           end;
           lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
           pvilinha := pvilinha + 1 ;
           if pvilinha>60 then
              impmatricial.Novapagina;
           cdsRelatorio.Next;
         end;
         if cmbTipoResultado.ItemIndex=0 then
         Begin
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,'Total do '+lsCampo);
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Vendedor),[]);
            pviLinha:=Pvilinha+2;
         End;

         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total Geral ');
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrvlr_Total),[]);
         pviLinha:=Pvilinha+2;

      End;
      2,5,8 :
      Begin

         lrVlr_Vendedor  := 0;
         lrQtde_Vendedor := 0;
         lrVlr_Total     := 0;
         lrQtde_Total    := 0;
         vlr_Comissao    := 0;
         vlr_ComissaoVendedor := 0;
         lsNome_Quebra :='FORCA QUEBRA';

         cdsRelatorio.First;
         While not cdsRelatorio.Eof Do
         begin
            if lsNome_Quebra<>cdsRelatorio.FieldByname('Vendedor').AsString then
            Begin
               IF lsNome_Quebra<>'FORCA QUEBRA' Then
               Begin
                  impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
                  pviLinha:=Pvilinha+1;
                  impmatricial.Imp(pvilinha,001,'Total do '+lsCampo);
                  impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',lrVlr_Vendedor),[]);
                  impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrQtde_Vendedor),[]);
                  if cmbTipoResultado.ItemIndex = 8 Then
                     impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',vlr_ComissaoVendedor),[]);
                  pviLinha:=Pvilinha+2;
                  lrVlr_Vendedor  := 0;
                  lrQtde_Vendedor := 0;
                  vlr_ComissaoVendedor := 0;
               End;
               impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName('Vendedor').AsString );
               pviLinha:=Pvilinha+1;
               impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
               pviLinha:=Pvilinha+1;
               lsNome_Quebra:=cdsRelatorio.FieldByname('Vendedor').AsString;
            End;
            impmatricial.Imp(pvilinha,001, Copy( ( IncZero(cdsrelatorio.FieldByName('Cod_Produto').AsString,5)+' '+cdsrelatorio.FieldByName('Produto').AsString ),1,35));
            impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Venda').asfloat),[]);
            impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_Medio').asfloat),[]);
            impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);
            if cmbTipoResultado.ItemIndex = 8 Then
               impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_TotalComis').asfloat),[]);

            lrVlr_Vendedor  := lrVlr_Vendedor + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrQtde_Vendedor := lrQtde_Vendedor + cdsrelatorio.fieldByname('Qtde_Venda').asfloat;
            lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrQtde_Total := lrQtde_Total + cdsrelatorio.fieldByname('Qtde_Venda').asfloat;
            lrQtde_Total := lrQtde_Total + cdsrelatorio.fieldByname('Qtde_Venda').asfloat;
            vlr_Comissao := vlr_Comissao + cdsrelatorio.fieldByname('Vlr_TotalComis').asfloat;
            vlr_ComissaoVendedor := vlr_ComissaoVendedor + cdsrelatorio.fieldByname('Vlr_TotalComis').asfloat;
           pvilinha := pvilinha + 1 ;
            if pvilinha>60 then
               impmatricial.Novapagina;

            cdsRelatorio.Next;
         end;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do '+lsCampo);
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrQtde_Vendedor),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',lrVlr_Vendedor),[]);
         if cmbTipoResultado.ItemIndex = 8 Then
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',vlr_ComissaoVendedor),[]);
         pviLinha:=Pvilinha+2;

         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total Geral ');
         impmatricial.ImpD(pvilinha,050,FormatFloat(',0.00',lrQtde_Total),[]);
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',lrvlr_Total),[]);
         if cmbTipoResultado.ItemIndex = 8 Then
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',vlr_Comissao),[]);

         pviLinha:=Pvilinha+2;
      End;
   end;
   impmatricial.Fechar;
end;

procedure TfrmselrelVendasVendedor.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmselrelVendasVendedor.btnPesquisarClick(Sender: TObject);
var lsCampos : String;
    lsJoin   : String;
begin
   lsJoin := '';

   GridProdutos.Visible   := False;
   GridClientes.Visible   := False;
   GridSupervisor.Visible := False;

   Case cmbTipoResultado.ItemIndex Of
     0,1,4,6,7 : GridClientes.Visible := True;
     2,8       : GridProdutos.Visible := True;
     3         : GridSupervisor.Visible := True;
     5         : GridProdutos.Visible := True;
   End;

   case cmbTipoResultado.ItemIndex of
     0   : lsCampos := ' Ven.Cod_Funcionario, Ven.Cod_Cliente, Fun.Descricao as Vendedor, '+
                     ' Cli.Descricao, Ven.Seqvenda,Ven.Controle,Ven.Data_Mov, '+
                     ' (Ven.Vlr_total-Ven.Vlr_Desconto) as Vlr_Total ';
     1   : lsCampos := ' Ven.Cod_Funcionario, Fun.Descricao as Vendedor, Sum(Ven.Vlr_total-Vlr_Desconto) as Vlr_Total ';
     2,8 : lsCampos := '  Fun.Descricao as Vendedor, ';
     3   :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '       Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Fun.Cod_Supervisor, Fun.Descricao as Vendedor, '+
                     ' Ven.Cod_Funcionario, Sup.Descricao as Supervisor, '+
                     ' Sum(Ven.Vlr_total-vlr_Desconto) as Vlr_Total ';

     End;
     4 :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '      Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Fun.Cod_Supervisor as Cod_Funcionario, Sup.Descricao as Vendedor, Sum(Ven.Vlr_total-vlr_Desconto) as Vlr_Total ';
     End;
     5 :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '      Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Sup.Descricao as Vendedor, ';
     End;
     6,7 :
     Begin
        lsCampos := ' Ven.Cod_Funcionario, Ven.Cod_Cliente, Ati.Descricao as Atividade, '+
                    ' Cli.Descricao, Ven.Seqvenda,Ven.Controle,Ven.Data_Mov,Fun.Descricao as Vendedor, '+
                    ' (Ven.Vlr_total-Ven.Vlr_Desconto) as Vlr_Total ';
         lsJoin  := ' Left join T_Atividades Ati on '+
                    '      Ati.Codigo=Cli.Cod_Atividade ';

     End;
   end;

   Case cmbTipoResultado.ItemIndex Of
      0,1,3,4,6,7 :
      Begin
         qryRelatorio.Close;
         qryRelatorio.SQL.Text := 'SELECT  '+lsCampos+' '+
                                  'FROM T_Vendas Ven  '+
                                  'LEFT JOIN T_Clientes Cli ON '+
                                  '     Cli.Codigo=Ven.Cod_Cliente '+
                                  'LEFT JOIN T_Funcionarios Fun ON '+
                                  '     Fun.Codigo=Ven.Cod_Funcionario '+ lsJoin+' '+
                                  'WHERE ( Ven.Data_Venda>=:parData_VendaIni And '+
                                  '        Ven.Data_Venda<=:parData_VendaFim ) and '+
                                  '        Ven.Status<>:parStatus ';
         if cmbCod_VendedorIni.KeyValue <> null then
            qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' And ( Ven.Cod_Funcionario>=:parCod_FuncionarioIni and Ven.Cod_Funcionario<=:parCod_FuncionarioFim)';
         Case cmbTipoResultado.ItemIndex Of
            1 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' Group BY Ven.Cod_Funcionario,Fun.Descricao';
            4 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' Group BY Fun.Cod_Supervisor,Sup.Descricao';
            3 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' Group BY Ven.Cod_Funcionario,Fun.Cod_Supervisor,Fun.Descricao,Sup.Descricao';
         End;
         qryRelatorio.SQL.Text := qryRelatorio.SQL.Text +' Order by 1 ';

         qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
         qryRelatorio.ParamByName('parStatus').AsString                   := '5';

         if cmbCod_VendedorIni.KeyValue <> null then
         Begin
            qryRelatorio.ParamByName('parCod_FuncionarioIni').AsInteger := StrToInt( cmbCod_VendedorIni.Text );
            qryRelatorio.ParamByName('parCod_FuncionarioFim').AsInteger := StrToInt( cmbCod_VendedorFim.Text );
         End;
      End;
      2,5,8 :
      Begin
         qryRelatorio.Close;
         qryRelatorio.SQL.Text := 'Select  '+ lsCampos + ' ' +
                                  '        Itens.Cod_Produto, '+
                                  '        Prod.Descricao as Produto, '+
                                  '        Sum(Itens.Qtde_Venda) as Qtde_Venda, '+
                                  '        avg(Itens.Pco_Venda-itens.Vlr_Desconto) as Pco_Medio, '+
                                  '        Sum(itens.Vlr_Total) as Vlr_Total, '+
                                  '        Sum( Round( (itens.Vlr_Total * Prod.Perc_Comissao)/100,2) ) as Vlr_TotalComis, '+
                                  '        Max(Prod.Perc_Comissao) as Perc_Comissao '+
                                  'From T_Itensvendas Itens '+
                                  '     Left Join T_Produtos Prod on '+
                                  '          Prod.Codigo=Itens.Cod_Produto '+
                                  '     Left Join T_Vendas Ven on '+
                                  '          Ven.seqvenda=Itens.Seqvenda '+
                                  '     Left Join T_Funcionarios Fun on '+
                                  '          Fun.Codigo=Ven.Cod_Funcionario '+ lsJoin +' '+
                                  'WHERE ( Ven.Data_Mov>=:parData_VendaIni And '+
                                  '        Ven.Data_Mov<=:parData_VendaFim  ) and '+
                                  '        Ven.Status<>:parStatus ';
         if cmbCod_VendedorIni.KeyValue <> null then
            qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' And ( Ven.Cod_Funcionario>=:parCod_FuncionarioIni and Ven.Cod_Funcionario<=:parCod_FuncionarioFim)';

         Case cmbTipoResultado.ItemIndex Of
            2,8 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + 'Group by Ven.Cod_Funcionario,fun.Descricao,Itens.Cod_Produto,Prod.Descricao ';
            5   : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + 'Group by Fun.Cod_Supervisor, Sup.Descricao, Itens.Cod_Produto,Prod.Descricao ';
         End;

         qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' Order by 1 ';
         if cmbCod_VendedorIni.KeyValue <> null then
         Begin
            qryRelatorio.ParamByName('parCod_FuncionarioIni').AsInteger := StrToInt( cmbCod_VendedorIni.Text );
            qryRelatorio.ParamByName('parCod_FuncionarioFim').AsInteger := StrToInt( cmbCod_VendedorFim.Text );
         End;
         qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
          qryRelatorio.ParamByName('parStatus').AsString                  := '5';
      End;
   End;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;
end;

procedure TfrmselrelVendasVendedor.cdsRelatorioAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := ',0.00';
   end;
end;

procedure TfrmselrelVendasVendedor.cmbCod_SupervisorChange(Sender: TObject);
begin
   cmbNome_Supervisor.keyvalue := cmbCod_Supervisor.KeyValue;

end;

procedure TfrmselrelVendasVendedor.cmbCod_VendedorFimChange(Sender: TObject);
begin
   cmbNome_VendedorFim.keyvalue := cmbCod_VendedorFim.KeyValue;
end;

procedure TfrmselrelVendasVendedor.cmbCod_VendedorIniChange(Sender: TObject);
begin
   cmbNome_VendedorIni.keyvalue := cmbCod_VendedorIni.KeyValue;
end;

procedure TfrmselrelVendasVendedor.cmbNome_SupervisorChange(Sender: TObject);
begin
   cmbCod_Supervisor.keyvalue := cmbNome_Supervisor.KeyValue;
end;

procedure TfrmselrelVendasVendedor.cmbNome_VendedorfimChange(Sender: TObject);
begin
   cmbCod_VendedorFim.keyvalue := cmbNome_VendedorFim.KeyValue;
end;

procedure TfrmselrelVendasVendedor.cmbNome_VendedorIniChange(Sender: TObject);
begin
   cmbCod_VendedorIni.keyvalue := cmbNome_VendedorIni.KeyValue;
end;

procedure TfrmselrelVendasVendedor.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmselrelVendasVendedor.cmbTipoResultadoChange(Sender: TObject);
begin
   cdsRElatorio.Close;
   btnPesquisarClick(btnPesquisar);
end;

procedure TfrmselrelVendasVendedor.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Codigo ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   cmbPeriodoChange(cmbPeriodo);
   If gsParametros.ReadString('ACESSODADOS','TipoSistema','0') = '1' Then
   Begin
      lblSupervisor.Visible := False;
      cmbCod_Supervisor.Visible := False;
      cmbNome_Supervisor.Visible := False;
   End;
end;

procedure TfrmselrelVendasVendedor.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   case cmbTipoResultado.ItemIndex  of
      0 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                        Nº Venda Controle     Data      Total ');
      1 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                                        Total ');
      2 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                    Qtde. Pco.Medio Vlr.Total ');
      8 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                        Qtde.     Pco.Medio Vlr.Total Comissao');
   end;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

end.
