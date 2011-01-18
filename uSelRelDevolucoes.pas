unit uSelRelDevolucoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, EditNew, bsSkinCtrls, ExtCtrls,
  ToolWin, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, FMTBcd, DBClient, Provider, SqlExpr, SqlTimSt, RDprint, bsdbctrls,
  bsSkinTabs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter;

type
  TfrmSelRelDevolucoes = class(TForm)
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    btnPesquisar: TbsSkinButton;
    qryRelatorio: TSQLQuery;
    dspRelatorio: TDataSetProvider;
    cdsRelatorio: TClientDataSet;
    srcRelatorio: TDataSource;
    cmbPeriodo: TbsSkinComboBox;
    impMatricial: TRDprint;
    cdsCadFuncionarios: TClientDataSet;
    srcCadFuncionarios: TDataSource;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    cmbCod_VendedorFim: TbsSkinDBLookupComboBox;
    cmbCod_VendedorIni: TbsSkinDBLookupComboBox;
    cmbNome_VendedorIni: TbsSkinDBLookupComboBox;
    cmbNome_Vendedorfim: TbsSkinDBLookupComboBox;
    btnLimpa: TbsSkinButton;
    cmbCod_Supervisor: TbsSkinDBLookupComboBox;
    cmbNome_Supervisor: TbsSkinDBLookupComboBox;
    cmbTipoResultado: TbsSkinComboBox;
    bsSkinStdLabel4: TbsSkinStdLabel;
    GridRelVendedor: TcxGrid;
    ViewClientes: TcxGridDBTableView;
    ViewClientesColumn1: TcxGridDBColumn;
    ViewClientesColumn2: TcxGridDBColumn;
    ViewClientesColumn3: TcxGridDBColumn;
    ViewClientesColumn4: TcxGridDBColumn;
    ViewClientesColumn5: TcxGridDBColumn;
    ViewClientesColumn6: TcxGridDBColumn;
    ViewClientesColumn7: TcxGridDBColumn;
    ViewProdutos: TcxGridDBTableView;
    Column_Vendedor: TcxGridDBColumn;
    Column_Cod_Produto: TcxGridDBColumn;
    Column_Produto: TcxGridDBColumn;
    Column_Qtde_Venda: TcxGridDBColumn;
    Column_Pco_Medio: TcxGridDBColumn;
    Column_Vlr_total: TcxGridDBColumn;
    ViewSupervisor: TcxGridDBTableView;
    Column_Cod_Supervisor: TcxGridDBColumn;
    Column_Supervisor: TcxGridDBColumn;
    Column_Cod_Funcionario: TcxGridDBColumn;
    Column_Vendedor2: TcxGridDBColumn;
    Colum_Vlr_total: TcxGridDBColumn;
    GridClientes: TcxGridLevel;
    GridProdutos: TcxGridLevel;
    GridSupervisor: TcxGridLevel;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;

    procedure cmbVenctoChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  
    procedure btnLimpaClick(Sender: TObject);
    procedure cmbCod_SupervisorChange(Sender: TObject);
    procedure cmbCod_VendedorFimChange(Sender: TObject);
    procedure cmbCod_VendedorIniChange(Sender: TObject);
    procedure cmbNome_SupervisorChange(Sender: TObject);
    procedure cmbNome_VendedorfimChange(Sender: TObject);
    procedure cmbNome_VendedorIniChange(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
  private
    pvilinha : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelRelDevolucoes: TfrmSelRelDevolucoes;

implementation
uses uprincipal,ufuncoes;
{$R *.dfm}

procedure TfrmSelRelDevolucoes.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSelRelDevolucoes.btnokClick(Sender: TObject);
var lsNome_Quebra   : String;
    lrVlr_Vendedor  : Double;
    lrQtde_Vendedor : Double;
    lrVlr_Total     : Double;
    lrQtde_Total    : Double;
    lsCampo         : String;

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
   end;


   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   case cmbTipoResultado.ItemIndex of
      0,1,3,4:
      Begin

         lrVlr_Vendedor  := 0;
         lrVlr_Total     := 0;
         lsNome_Quebra :='FORCA QUEBRA';

         cdsRelatorio.First;
         While not cdsRelatorio.Eof Do
         begin
           case cmbTipoResultado.ItemIndex Of
              0,3 :
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
                    0 :
                    Begin
                       impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Cliente').AsString,5)+' '+cdsrelatorio.FieldByName('Descricao').AsString );
                       impmatricial.Imp(pvilinha,044,IncZero(cdsrelatorio.FieldByName('SeqVenda').AsString,8)+' '+
                                                     cdsrelatorio.FieldByName('Controle').AsString );
                       impmatricial.Imp(pvilinha,061, formatdatetime('dd/mm/yyyy',cdsRelatorio.FieldByName('Data_Venda').AsDatetime));
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
      2,5 :
      Begin

         lrVlr_Vendedor  := 0;
         lrQtde_Vendedor := 0;
         lrVlr_Total     := 0;
         lrQtde_Total    := 0;
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
                  impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Vendedor),[]);
                  impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Vendedor),[]);
                  pviLinha:=Pvilinha+2;
                  lrVlr_Vendedor  := 0;
                  lrQtde_Vendedor := 0;
               End;
               impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName('Vendedor').AsString );
               pviLinha:=Pvilinha+1;
               impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
               pviLinha:=Pvilinha+1;
               lsNome_Quebra:=cdsRelatorio.FieldByname('Vendedor').AsString;
            End;
            impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Produto').AsString,5)+' '+cdsrelatorio.FieldByName('Produto').AsString );
            impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Venda').asfloat),[]);
            impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_Medio').asfloat),[]);
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Vlr_Total').asfloat),[]);

            lrVlr_Vendedor  := lrVlr_Vendedor + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrQtde_Vendedor := lrQtde_Vendedor + cdsrelatorio.fieldByname('Qtde_Venda').asfloat;
            lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
            lrQtde_Total := lrQtde_Total + cdsrelatorio.fieldByname('Qtde_Venda').asfloat;

            pvilinha := pvilinha + 1 ;
            if pvilinha>60 then
               impmatricial.Novapagina;

            cdsRelatorio.Next;
         end;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total do '+lsCampo);
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Vendedor),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Vendedor),[]);
         pviLinha:=Pvilinha+2;

         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,'Total Geral ');
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',lrQtde_Total),[]);
         impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrvlr_Total),[]);
         pviLinha:=Pvilinha+2;
      End;

   end;



   impmatricial.Fechar;




{
var lsNome_Quebra : String;
    lrVlr_Vendedor  : Double;
    lrQtde_Vendedor : Integer;
    lrVlr_Total     : Double;
    lrQtde_Total    : Integer;
begin

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   cdsRelatorio.First;
   While not cdsRelatorio.Eof Do
   begin
      if lsNome_Quebra<>cdsRelatorio.FieldByname('Vendedor').AsString then
      Begin
         IF lsNome_Quebra<>'FORCA QUEBRA' Then
         Begin
            impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
            pviLinha:=Pvilinha+1;
            impmatricial.Imp(pvilinha,001,'Total do Vendedor');
            impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',lrVlr_Vendedor),[]);
            pviLinha:=Pvilinha+2;
            lrVlr_Vendedor  := 0;
         End;
         impmatricial.Imp(pvilinha,001,cdsrelatorio.FieldByName('Vendedor').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsNome_Quebra:=cdsRelatorio.FieldByname('vendedor').AsString;
      End;
      impmatricial.Imp(pvilinha,001,IncZero(cdsrelatorio.FieldByName('Cod_Produto').AsString,5)+' '+cdsrelatorio.FieldByName('Produto').AsString );
      impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsrelatorio.fieldByname('Qtde_Devolvida').asfloat),[]);
      impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsrelatorio.fieldByname('Pco_Medio').asfloat),[]);
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsrelatorio.fieldByname('Total_Item').asfloat),[]);

      lrVlr_Vendedor  := lrVlr_Vendedor + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrQtde_Vendedor := lrQtde_Vendedor + cdsrelatorio.fieldByname('Qtde_Venda').asInteger;
      lrVlr_Total  := lrVlr_Total + cdsrelatorio.fieldByname('Vlr_Total').asfloat;
      lrQtde_Total := lrQtde_Total + cdsrelatorio.fieldByname('Qtde_Venda').asInteger;

   end;
 }
end;

procedure TfrmSelRelDevolucoes.btnPesquisarClick(Sender: TObject);
var lsCampos : String;
    lsJoin   : String;
begin
   GridProdutos.Visible   := False;
   GridClientes.Visible   := False;
   GridSupervisor.Visible := False;

   lsCampos := '';
   lsJoin   := '';

   Case cmbTipoResultado.ItemIndex Of
     0,1,4 : GridClientes.Visible := True;
     2     : GridProdutos.Visible := True;
     3     : GridSupervisor.Visible := True;
     5     : GridProdutos.Visible := True;
   End;

   case cmbTipoResultado.ItemIndex of
     0 : lsCampos := ' Ven.Cod_Funcionario, Ven.Cod_Cliente, Fun.Descricao as Vendedor, '+
                     ' Cli.Descricao, Ven.Seqvenda,Ven.Controle,Ven.Data_Venda, '+
                     ' (ItensDer.Qtde_Devolvida*ItensDer.Pco_Venda) as Vlr_Total ';
     1 : lsCampos := ' Ven.Cod_Funcionario, Fun.Descricao as Vendedor, Sum(ItensDer.Qtde_Devolvida*ItensDer.Pco_Venda) as Vlr_Total ';
     2 : lsCampos := '  Fun.Descricao as Vendedor, ';
     3 :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '       Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Fun.Cod_Supervisor, Fun.Descricao as Vendedor, '+
                     ' Ven.Cod_Funcionario, Sup.Descricao as Supervisor, '+
                     ' Sum(ItensDer.Qtde_Devolvida*ItensDer.Pco_Venda) as Vlr_Total ';

     End;
     4 :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '      Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Fun.Cod_Supervisor as Cod_Funcionario, Sup.Descricao as Vendedor, Sum(ItensDer.Qtde_Devolvida*ItensDer.Pco_Venda) as Vlr_Total ';
     End;
     5 :
     Begin
         lsJoin   := ' Left join T_funcionarios Sup on '+
                     '      Sup.Codigo=Fun.Cod_Supervisor ';
         lsCampos := ' Sup.Descricao as Vendedor, ';
     End;
   end;

   Case cmbTipoResultado.ItemIndex Of
      0,1,3,4 :
      Begin
         qryRelatorio.Close;
         qryRelatorio.SQL.Text := 'SELECT  '+lsCampos+' '+
                                  'FROM T_ItensDevolucoes ItensDer '+
                                  'LEFT JOIN T_Vendas Ven ON '+
                                  '     Ven.Seqvenda=ItensDer.Seqvenda '+
                                  'LEFT JOIN T_Clientes Cli ON '+
                                  '     Cli.Codigo=Ven.Cod_Cliente '+
                                  'LEFT JOIN T_Funcionarios Fun ON '+
                                  '     Fun.Codigo=Ven.Cod_Funcionario '+ lsJoin+' '+
                                  'WHERE ( Ven.Data_Venda>=:parData_VendaIni And '+
                                  '        Ven.Data_Venda<=:parData_VendaFim ) and '+
                                  '        Ven.Status=:parStatus ';
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
         qryRelatorio.ParamByName('parStatus').AsString                   := 'N';

         if cmbCod_VendedorIni.KeyValue <> null then
         Begin
            qryRelatorio.ParamByName('parCod_FuncionarioIni').AsInteger := StrToInt( cmbCod_VendedorIni.Text );
            qryRelatorio.ParamByName('parCod_FuncionarioFim').AsInteger := StrToInt( cmbCod_VendedorFim.Text );
         End;
      End;
      2,5 :
      Begin
         qryRelatorio.Close;
         qryRelatorio.SQL.Text := 'Select  '+ lsCampos + ' ' +
                                  '        Itens.Cod_Produto, '+
                                  '        Prod.Descricao as Produto, '+
                                  '        Sum(Itens.Qtde_Devolvida) as Qtde_Venda, '+
                                  '        avg(Itens.Pco_Venda) as Pco_Medio, '+
                                  '        Sum(Itens.Qtde_Devolvida*Itens.Pco_Venda) as Vlr_Total '+
                                  'From T_ItensDevolucoes Itens '+
                                  '     Left Join T_Produtos Prod on '+
                                  '          Prod.Codigo=Itens.Cod_Produto '+
                                  '     Left Join T_Vendas Ven on '+
                                  '          Ven.seqvenda=Itens.Seqvenda '+
                                  '     Left Join T_Funcionarios Fun on '+
                                  '          Fun.Codigo=Ven.Cod_Funcionario '+ lsJoin +' '+
                                  'WHERE ( Ven.Data_Venda>=:parData_VendaIni And '+
                                  '        Ven.Data_Venda<=:parData_VendaFim  ) and '+
                                  '        Ven.Status=:parStatus ';
         if cmbCod_VendedorIni.KeyValue <> null then
            qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' And ( Ven.Cod_Funcionario>=:parCod_FuncionarioIni and Ven.Cod_Funcionario<=:parCod_FuncionarioFim)';

         Case cmbTipoResultado.ItemIndex Of
            2 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + 'Group by Ven.Cod_Funcionario,fun.Descricao,Itens.Cod_Produto,Prod.Descricao ';
            5 : qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + 'Group by Fun.Cod_Supervisor, Sup.Descricao, Itens.Cod_Produto,Prod.Descricao ';
         End;

         qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' Order by 1 ';
         if cmbCod_VendedorIni.KeyValue <> null then
         Begin
            qryRelatorio.ParamByName('parCod_FuncionarioIni').AsInteger := StrToInt( cmbCod_VendedorIni.Text );
            qryRelatorio.ParamByName('parCod_FuncionarioFim').AsInteger := StrToInt( cmbCod_VendedorFim.Text );
         End;
         qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
         qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
          qryRelatorio.ParamByName('parStatus').AsString                  := 'N';
      End;
   End;

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;



   {
   qryRelatorio.Close;
   qryRelatorio.SQL.Text := 'Select Itens.Cod_Produto, '+
                            '       Prod.Descricao as Produto, '+
                            '       Itens.Qtde_Devolvida,Itens.Pco_Venda, '+
                            '       (Itens.Qtde_Devolvida * Itens.Pco_Venda) as Total_Item, '+
                            '       Rep.Descricao As Representante, '+
                            '       Rot.Descricao as Rota '+
                            'from T_itensdevolucoes Itens '+
                            'inner Join T_produtos Prod On '+
                            '      Prod.Codigo=Itens.Cod_Produto '+
                            'Left join T_vendas Ven on '+
                            '     Ven.SeqVenda=Itens.SeqVenda '+
                            'Left join T_Funcionarios Rep on  '+
                            '     Rep.Codigo=Ven.Cod_Funcionario '+
                            'Left Join T_CLientes Cli On '+
                            '     Cli.Codigo=Ven.Cod_Cliente '+
                            'Left Join T_Rotas Rot On '+
                            '      Rot.Codigo=Cli.Cod_Rota '+
                            'where ( Itens.Data_Mov>=:parData_VendaIni And Itens.Data_Mov<=:parData_VendaFim ) ';
   // if cmbCod_VendedorIni.KeyValue <> null then
   //   qryRelatorio.SQL.Text := qryRelatorio.SQL.Text + ' And ( Ven.Cod_Funcionario>=:parCod_FuncionarioIni and Ven.Cod_Funcionario<=:parCod_FuncionarioFim)';
   qryRelatorio.SQL.Text := qryRelatorio.SQL.Text +' Order by 1 ';
   qryRelatorio.ParamByName('parData_VendaIni').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryRelatorio.ParamByName('parData_VendaFim').AsSQLTimeStamp      := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   {
   if cmbCod_VendedorIni.KeyValue <> null then
   Begin
      qryRelatorio.ParamByName('parCod_FuncionarioIni').AsInteger := StrToInt( cmbCod_VendedorIni.Text );
      qryRelatorio.ParamByName('parCod_FuncionarioFim').AsInteger := StrToInt( cmbCod_VendedorFim.Text );
   End;

   If cmbTipoRel.ItemIndex = 0 Then
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'P'
   Else
      qryRelatorio.ParamByName('parTipo_Venda').AsString          := 'S';
    }
   {
   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;
   }
end;

procedure TfrmSelRelDevolucoes.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmSelRelDevolucoes.cmbVenctoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmSelRelDevolucoes.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Codigo ';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   cmbPeriodoChange(cmbPeriodo);
end;

procedure TfrmSelRelDevolucoes.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   case cmbTipoResultado.ItemIndex  of
      0 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                        Nº Venda Controle     Data      Total ');
      1 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                                        Total ');
      2 : TRdPrint( Sender ).imp(pvilinha,001,'Codigo   Descricao                                    Qtde. Pco.Medio Vlr.Total ');
   end;
   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmSelRelDevolucoes.btnLimpaClick(Sender: TObject);
begin
   cmbCod_VendedorIni.KeyValue  := Null;
   cmbNome_VendedorIni.KeyValue := Null;
   cmbCod_VendedorFim.KeyValue  := Null;
   cmbNome_VendedorFim.KeyValue := Null;
   cmbCod_Supervisor.KeyValue   := Null;
   cmbNome_Supervisor.KeyValue  := Null;
end;

procedure TfrmSelRelDevolucoes.cmbCod_SupervisorChange(Sender: TObject);
begin
   cmbNome_Supervisor.keyvalue := cmbCod_Supervisor.KeyValue;

end;

procedure TfrmSelRelDevolucoes.cmbCod_VendedorFimChange(Sender: TObject);
begin
   cmbNome_VendedorFim.keyvalue := cmbCod_VendedorFim.KeyValue;
end;

procedure TfrmSelRelDevolucoes.cmbCod_VendedorIniChange(Sender: TObject);
begin
   cmbNome_VendedorIni.keyvalue := cmbCod_VendedorIni.KeyValue;
end;

procedure TfrmSelRelDevolucoes.cmbNome_SupervisorChange(Sender: TObject);
begin
   cmbCod_Supervisor.keyvalue := cmbNome_Supervisor.KeyValue;
end;

procedure TfrmSelRelDevolucoes.cmbNome_VendedorfimChange(Sender: TObject);
begin
   cmbCod_VendedorFim.keyvalue := cmbNome_VendedorFim.KeyValue;
end;

procedure TfrmSelRelDevolucoes.cmbNome_VendedorIniChange(Sender: TObject);
begin
   cmbCod_VendedorIni.keyvalue := cmbNome_VendedorIni.KeyValue;
end;

end.
