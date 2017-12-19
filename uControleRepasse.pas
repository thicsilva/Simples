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
    cmbTipoResutado: TComboBox;
    cdsRecebidos: TClientDataSet;
    srcRecebidos: TDataSource;
    cdsAuxiliar: TClientDataSet;
    srcAuxiliar: TDataSource;
    srcDevolucoes: TDataSource;
    cdsDevolucoes: TClientDataSet;
    btnLimpa: TbsSkinButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure BtnFechamentoClick(Sender: TObject);
    procedure btnLimpaClick(Sender: TObject);
  private
     pviLinha : Integer;
    procedure CarregarTotais(tipo : integer );
    procedure CarregarTotaisPorCidade(Cidade: string);
    procedure CarregarGrid();
    procedure CarregarGridCidades;
    procedure AtulizarGrid;

    { Private declarations }
  public
    function RetornaSelect( tipo : Integer ) : string;
    { Public declarations }
  end;

var
  frmControleRepasse: TfrmControleRepasse;
  CONST VENDEDOR = 1;
  CONST CIDADE = 2;
implementation

uses uprincipal,ufuncoes, ufechames, uselrelRepasse;

{$R *.dfm}

procedure TfrmControleRepasse.AtulizarGrid;
begin
     cdsRepasse.First;
     while not cdsRepasse.Eof do
     begin
        cdsRepasse.Edit;
        cdsRepasse.FieldByName('Perc001').AsFloat :=  ((cdsRepasse.FieldByName('vlr_recebido').AsFloat/cdsRepasse.FieldByName('vlr_Repasse').AsFloat)*100);
        cdsRepasse.FieldByName('Perc002').AsFloat :=  ((cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat/cdsRepasse.FieldByName('vlr_Repasse').AsFloat)*100);
        cdsRepasse.FieldByName('Perc003').AsFloat :=  ((cdsRepasse.FieldByName('Vlr_Perdido').AsFloat/cdsRepasse.FieldByName('vlr_Repasse').AsFloat)*100);
        cdsRepasse.FieldByName('Perc004').AsFloat :=  ((cdsRepasse.FieldByName('Vlr_Comissao').AsFloat/cdsRepasse.FieldByName('vlr_Repasse').AsFloat)*100);
        cdsRepasse.FieldByName('Perc005').AsFloat :=  ((cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat/cdsRepasse.FieldByName('vlr_Repasse').AsFloat)*100);
        cdsRepasse.post;
        cdsRepasse.next;

     end;
end;

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
End;

procedure TfrmControleRepasse.btnLimpaClick(Sender: TObject);
begin
   cmbNome_TipoVenda.KeyValue := null;
end;

procedure TfrmControleRepasse.btnPesquisarClick(Sender: TObject);
var
  lsWhere        : String;
  lrTotal        : Real;
  lrtotalFicha   : real;
  vlrRepase      : real;
  vlrRecebido    : real;
  vlrDevolucao   : real;
  TotalDevolvido : real;
  TotalPerdido   : Real;
  TotalComissao  : real;
  Saldorepasse   : Real;
 begin
   lrtotalFicha := 0;
   lrTotal      := 0;

   qryRelatorio.Close;
   qryRelatorio.Params.Clear;
   if cmbTipoResutado.ItemIndex=1 then
      qryRelatorio.SQL.Text := RetornaSelect(VENDEDOR)
   else
      qryRelatorio.SQL.Text := RetornaSelect(CIDADE);


   qryRelatorio.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text);
   qryRelatorio.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text);
   qryRelatorio.ParamByName('parStatus').AsString                := '5';
   qryRelatorio.ParamByName('parStatus_Cancelada').AsString      := 'C';

   cdsRelatorio.Close;
   cdsRelatorio.ProviderName := dspRelatorio.Name;
   cdsRelatorio.Open;


   if cmbNome_TipoVenda.KeyValue = null then
   begin
      if cmbTipoResutado.ItemIndex=1 then
         CarregarTotais(VENDEDOR)
      else
         CarregarTotais(Cidade);
   end
   else
      CarregarTotaisPorCidade(cmbNome_TipoVenda.Text);


   QryVariavel.Close;
   QryVariavel.Params.Clear;
   if cmbTipoResutado.ItemIndex=1 then
   begin
   QryVariavel.SQL.Text := 'SELECT rep.Descricao as Cidade, '+
                           '     SUM(COALESCE(QTDE_DEVOLVIDA*PCO_VENDA,0)) as Devolucao '+
                           'FROM T_Vendas Ven '+
                           ' LEFT JOIN T_itensDevolucoes dev on dev.SeqVenda=ven.seqvenda '+
                           ' LEFT JOIN T_funcionarios rep ON rep.Codigo=Ven.Cod_Funcionario '+
                           'WHERE ( Ven.Data_Venda>=:parData_RepasseIni and Ven.Data_Venda<=:parData_RepasseFim ) and '+
                            '        Ven.Status<>:parStatus and Ven.Status<>:parStatus_Cancelada GROUP BY rep.Descricao';
   end

   else
   begin
   QryVariavel.SQL.Text := 'SELECT Cli.Cidade, '+
                           '     SUM(COALESCE(QTDE_DEVOLVIDA*PCO_VENDA,0)) as Devolucao '+
                           'FROM T_Vendas Ven '+
                           ' LEFT JOIN T_CLientes Cli ON  Cli.Codigo=Ven.Cod_Cliente '+
                           ' LEFT JOIN T_itensDevolucoes dev on dev.SeqVenda=ven.seqvenda '+
                           'WHERE ( Ven.Data_Venda>=:parData_RepasseIni and Ven.Data_Venda<=:parData_RepasseFim ) and '+
                            '        Ven.Status<>:parStatus and Ven.Status<>:parStatus_Cancelada GROUP BY Cli.Cidade';
   end;




   QryVariavel.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   QryVariavel.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   QryVariavel.ParamByName('parStatus').AsString                := '5';
   QryVariavel.ParamByName('parStatus_Cancelada').AsString      := 'C';


   cdsDevolucoes.Close;
   cdsDevolucoes.ProviderName := dspVariavel.Name;
   cdsDevolucoes.Open;



   if cmbNome_TipoVenda.KeyValue = null then
      CarregarGrid
   else
     CarregarGridCidades;

     AtulizarGrid ;
End;



function TfrmControleRepasse.RetornaSelect(tipo : integer ) : string;
var select : string;
    lsfrom : string;
    lsWhere : String;
    lsjoins : string;
    lsSelect : String;
    lsGroup : string;
begin
      if tipo = CIDADE  then
      begin
         lsSelect  :=  'cli.cidade as Descricao,';
         lsjoins  :=  '       LEFT JOIN T_CLientes Cli ON '+
                      '            Cli.Codigo=Ven.Cod_Cliente ';
         lsWhere := '(Ven.Data_Venda>=:parData_RepasseIni and Ven.Data_Venda<=:parData_RepasseFim ) ';
         lsfrom  := '';
         lsGroup := 'cli.Cidade';
      end
      else  if tipo = VENDEDOR  then
      begin
         lsSelect  := 'rep.Descricao,';
         lsjoins  :=  '       LEFT JOIN T_funcionarios rep ON '+
                      '            rep.Codigo=Ven.Cod_Funcionario ';
         lsWhere := '(Ven.Data_Venda>=:parData_RepasseIni and Ven.Data_Venda<=:parData_RepasseFim ) ';
         lsfrom  := '';
         lsGroup := 'rep.Descricao';
      end;



     select :=  'SELECT '+lsSelect+' '+
	              '     Sum(vlr_Total) as total, '+
                '     Count(distinct(Ven.SeqVenda)) As Qtde_Repasse '+
                'FROM T_Vendas Ven '+ lsjoins +' '+
                'WHERE ( Ven.Data_Venda>=:parData_RepasseIni and Ven.Data_Venda<=:parData_RepasseFim ) and '+
                '        Ven.Status<>:parStatus and Ven.Status<>:parStatus_Cancelada GROUP BY '+lsGroup;
      Result := select;
end;
procedure TfrmControleRepasse.CarregarGridCidades();
var
  vlrDevolucao: Real;
  vlrRepase: Real;
  vlrRecebido: Real;
  TotalPerdido : Real ;
  TotalComissao : Real ;
  Saldorepasse :Real;
  TotalDevolvido : Real;
  lrTotal : Real;
  lrtotalFicha : Real;
begin
  cdsRepasse.EmptyDataSet;
  vlrRecebido := 0;
  TotalPerdido := 0;
  TotalComissao := 0;
  Saldorepasse := 0;
  while not cdsAuxiliar.Eof do
  begin
    cdsRepasse.Append;
    vlrDevolucao := 0;

      vlrRepase :=  cdsAuxiliar.FieldByName('Tot_Repasse').AsFloat;
      cdsRepasse.FieldByName('Rota').AsString := cdsAuxiliar.FieldByName('Descricao').AsString;
      cdsRepasse.FieldByName('Vlr_Repasse').AsFloat := cdsAuxiliar.FieldByName('Tot_Repasse').AsFloat;
      cdsRepasse.FieldByName('Vlr_Recebido').AsFloat := cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat := cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Perdido').AsFloat := cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Comissao').AsFloat := cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat;

      vlrRecebido := vlrRecebido + cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat;
      TotalDevolvido := TotalDevolvido + cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat;
      TotalPerdido := TotalPerdido + cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat;
      TotalComissao := TotalComissao + cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat;
      cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := vlrRepase - (cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat + cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat + cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat + cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat);
      Saldorepasse := Saldorepasse + cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat;


    //cdsRepasse.FieldByName('Qtde_Fichas').AsInteger := cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
    lrTotal := lrTotal + vlrRepase;
    lrtotalFicha := lrtotalFicha + cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
    cdsRepasse.Post;
    cdsAuxiliar.Next;
  end;
   cdsRepasse.Append;
   cdsRepasse.FieldByName('Rota').AsString            := 'Total Geral';
   //cdsRepasse.FieldByName('Qtde_Fichas').AsFloat      := lrtotalFicha;
   cdsRepasse.FieldByName('Vlr_Repasse').AsFloat      := lrTotal;
   cdsRepasse.FieldByName('Vlr_Recebido').AsFloat     := vlrRecebido;
   cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat    := TotalDevolvido;
   cdsRepasse.FieldByName('Vlr_Perdido').AsFloat      := TotalPerdido;
   cdsRepasse.FieldByName('Vlr_Comissao').AsFloat     := TotalComissao;
   cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := Saldorepasse;
   cdsRepasse.Post;
end;



procedure TfrmControleRepasse.CarregarGrid();
var
  vlrDevolucao: Real;
  vlrRepase: Real;
  vlrRecebido: Real;
  TotalPerdido : Real ;
  TotalComissao : Real ;
  Saldorepasse :Real;
  TotalDevolvido : Real;
  lrTotal : Real;
  lrtotalFicha : Real;
begin
  cdsRepasse.EmptyDataSet;
  vlrRecebido := 0;
  TotalPerdido := 0;
  TotalComissao := 0;
  Saldorepasse := 0;
  while not cdsRelatorio.Eof do
  begin
    cdsRepasse.Append;
    vlrDevolucao := 0;

    if cdsDevolucoes.locate('Cidade', cdsRelatorio.FieldByName('Descricao').AsString, []) then
       vlrDevolucao := cdsDevolucoes.FieldByName('Devolucao').AsFloat;

    vlrRepase := cdsRelatorio.FieldByName('Total').AsFloat + vlrDevolucao;
    cdsRepasse.FieldByName('Rota').AsString := cdsRelatorio.FieldByName('Descricao').AsString;
    cdsRepasse.FieldByName('Vlr_Repasse').AsFloat := vlrRepase;
    if cdsAuxiliar.locate('Descricao', cdsRelatorio.FieldByName('Descricao').AsString, []) then
    begin
      cdsRepasse.FieldByName('Vlr_Recebido').AsFloat := cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat := cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Perdido').AsFloat := cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat;
      cdsRepasse.FieldByName('Vlr_Comissao').AsFloat := cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat;

      vlrRecebido := vlrRecebido + cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat;
      TotalDevolvido := TotalDevolvido + cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat;
      TotalPerdido := TotalPerdido + cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat;
      TotalComissao := TotalComissao + cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat;
      cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := vlrRepase - (cdsAuxiliar.FieldByName('Tot_Recebido').AsFloat + cdsAuxiliar.FieldByName('Tot_Comissao').AsFloat + cdsAuxiliar.FieldByName('Tot_Devolvido').AsFloat + cdsAuxiliar.FieldByName('Tot_Perdido').AsFloat);
      Saldorepasse := Saldorepasse + cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat;
    end;

    cdsRepasse.FieldByName('Qtde_Fichas').AsInteger := cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
    lrTotal := lrTotal + vlrRepase;
    lrtotalFicha := lrtotalFicha + cdsRelatorio.FieldByName('Qtde_Repasse').AsInteger;
    cdsRepasse.Post;
    cdsRelatorio.Next;
  end;
   cdsRepasse.Append;
   cdsRepasse.FieldByName('Rota').AsString            := 'Total Geral';
   cdsRepasse.FieldByName('Qtde_Fichas').AsFloat      := lrtotalFicha;
   cdsRepasse.FieldByName('Vlr_Repasse').AsFloat      := lrTotal;
   cdsRepasse.FieldByName('Vlr_Recebido').AsFloat     := vlrRecebido;
   cdsRepasse.FieldByName('Vlr_Devolvido').AsFloat    := TotalDevolvido;
   cdsRepasse.FieldByName('Vlr_Perdido').AsFloat      := TotalPerdido;
   cdsRepasse.FieldByName('Vlr_Comissao').AsFloat     := TotalComissao;
   cdsRepasse.FieldByName('vlr_SaldoRepasse').AsFloat := Saldorepasse;
   cdsRepasse.Post;
end;



procedure TfrmControleRepasse.CarregarTotais(tipo : integer );
begin


  QryVariavel.Close;
  QryVariavel.Params.Clear;
  QryVariavel.SQL.Text := 'SELECT cli.cidade as Descricao, ' + '       Sum(Rec.Vlr_Original)  As Tot_Repasse, ' + '       Sum(Rec.Vlr_Recebido)  As Tot_Recebido, ' + '       Sum(Rec.Vlr_Devolvido) As Tot_Devolvido, ' + '       Sum(Rec.Vlr_Comissao)  As Tot_Comissao, ' + '       Sum(Rec.Vlr_Perdido)   As Tot_Perdido ' + 'FROM T_Ctasreceber Rec ' + '       LEFT JOIN T_CLientes Cli ON Cli.Codigo=Rec.Cod_Cliente ' + 'WHERE (Rec.Data_emissao>=:parData_RepasseIni and rec.Data_emissao<=:parData_RepasseFim) ' + 'GROUP BY cli.Cidade ';
  if tipo=VENDEDOR then
  begin
     QryVariavel.SQL.Text := ' SELECT rep.Descricao as Descricao, '+
                             ' Sum(Rec.Vlr_Original)  As Tot_Repasse, '+
                             ' Sum(Rec.Vlr_Recebido)  As Tot_Recebido, '+
                             ' Sum(Rec.Vlr_Devolvido) As Tot_Devolvido, '+
                             ' Sum(Rec.Vlr_Comissao)  As Tot_Comissao,'+
                             ' Sum(Rec.Vlr_Perdido)   As Tot_Perdido '+
                             ' FROM T_Ctasreceber Rec '+
	                           '      LEFT JOIN T_Vendas Ven ON Ven.SeqVenda=Rec.seqvenda '+
                             '      LEFT JOIN T_funcionarios rep ON rep.Codigo=Ven.Cod_Funcionario '+
                             ' WHERE (Rec.Data_emissao>=:parData_RepasseIni and rec.Data_emissao<=:parData_RepasseFim) ' +
                             ' GROUP BY rep.Descricao ';
  end;
  QryVariavel.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text + ' 00:00:00');
  QryVariavel.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text + ' 23:59:00');
  cdsAuxiliar.Close;
  cdsAuxiliar.ProviderName := dspVariavel.Name;
  cdsAuxiliar.Open;
end;

procedure TfrmControleRepasse.CarregarTotaisPorCidade(Cidade : string);
begin
  QryVariavel.Close;
  QryVariavel.Params.Clear;
  QryVariavel.SQL.Text := 'SELECT cli.Descricao, ' +
                          '       max(Rec.Vlr_Original)  As Tot_Repasse, ' +
                          '       Sum(Rec.Vlr_Recebido)  As Tot_Recebido, ' +
                          '       Sum(Rec.Vlr_Devolvido) As Tot_Devolvido, ' +
                          '       Sum(Rec.Vlr_Comissao)  As Tot_Comissao, ' +
                          '       Sum(Rec.Vlr_Perdido)   As Tot_Perdido ' +
                          'FROM T_Ctasreceber Rec ' +
                          '       LEFT JOIN T_CLientes Cli ON Cli.Codigo=Rec.Cod_Cliente  ' +
                          'WHERE (Rec.Data_emissao>=:parData_RepasseIni and rec.Data_emissao<=:parData_RepasseFim and cli.Cidade=:ParCidade) ' + 'GROUP BY cli.Descricao ';
  QryVariavel.ParamByName('parData_RepasseIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text + ' 00:00:00');
  QryVariavel.ParamByName('parData_RepasseFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text + ' 23:59:00');
  QryVariavel.ParamByName('ParCidade').AsString                := Cidade;
  cdsAuxiliar.Close;
  cdsAuxiliar.ProviderName := dspVariavel.Name;
  cdsAuxiliar.Open;
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
