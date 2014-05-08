{  Tipo Produto

    0 : Produto
    1 : Servico
    2 : Materia Prima
    3 : Brinde
}

unit uCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, bsdbctrls, FMTBcd, SqlExpr, SimpleDS,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  EditNew,SqlTimSt, RDprint,uFormBase, Menus, bsSkinMenus, dxGDIPlusClasses,
  bsSkinExCtrls, cxPropertiesStore, cxGridCustomPopupMenu, cxGridPopupMenu,
  ExtDlgs, cxContainer, cxTextEdit, cxDBEdit, dxSkinsCore, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmCadProdutos = class(TFormBase)
    pagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinPanel1: TbsSkinPanel;
    cmbPesquisa: TbsSkinComboBox;
    EdtPesquisa: TbsSkinEdit;
    chkPesqTodoTexto: TbsSkinCheckRadioBox;
    bsSkinTabSheet2: TbsSkinTabSheet;
    dspCadProdutos: TDataSetProvider;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    srcCadCtoCusto: TDataSource;
    qryCadProdutos: TSQLQuery;
    pagFichaTecnica: TbsSkinTabSheet;
    cxGrid1: TcxGrid;
    GridProdutos: TcxGridDBTableView;
    GridProdutosCodigo: TcxGridDBColumn;
    GridProdutosDescricao: TcxGridDBColumn;
    GridProdutosData_cad: TcxGridDBColumn;
    GridProdutosData_Atu: TcxGridDBColumn;
    GridProdutosCod_Emp: TcxGridDBColumn;
    GridProdutosOperador: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    GridProdutosColumn1: TcxGridDBColumn;
    GridProdutosColumn2: TcxGridDBColumn;
    GridProdutosColumn3: TcxGridDBColumn;
    cdsCadCtosCusto: TClientDataSet;
    qryVariavel: TSQLQuery;
    dspvariavel: TDataSetProvider;
    GridProdutosColumn4: TcxGridDBColumn;
    bsSkinTabSheet4: TbsSkinTabSheet;
    bsSkinPaintPanel1: TbsSkinPaintPanel;
    lblTurma: TbsSkinStdLabel;
    btnPesquisar: TbsSkinButton;
    dtpData_Ini: TbsSkinDateEdit;
    dtpData_Fim: TbsSkinDateEdit;
    cxGrid2: TcxGrid;
    gridMovimento: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsMovEstoque: TClientDataSet;
    srcMovEstoque: TDataSource;
    gridMovimentoColumn1: TcxGridDBColumn;
    gridMovimentoColumn2: TcxGridDBColumn;
    gridMovimentoColumn3: TcxGridDBColumn;
    gridMovimentoColumn4: TcxGridDBColumn;
    gridMovimentoColumn5: TcxGridDBColumn;
    gridMovimentoColumn6: TcxGridDBColumn;
    gridMovimentoColumn7: TcxGridDBColumn;
    btnImprimirSaldos: TbsSkinButton;
    btnPesquisa: TbsSkinButton;
    impMatricial: TRDprint;
    pnlDescProduto: TbsSkinPaintPanel;
    lblNomeProduto: TbsSkinStdLabel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    lblPrevoVenda: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtDescricao: TbsSkinEdit;
    edtCodigo: TbsSkinEdit;
    edtData_cad: TbsSkinEdit;
    cmbNome_CentroCusto: TbsSkinDBLookupComboBox;
    cmbCod_CentroCusto: TbsSkinDBLookupComboBox;
    cmbTipoProduto: TbsSkinComboBox;
    chkMetroQuadrado: TbsSkinCheckRadioBox;
    edtCod_barras: TbsSkinEdit;
    edtUnid: TbsSkinEdit;
    cmbCod_Grupo: TbsSkinDBLookupComboBox;
    cmbNome_Grupo: TbsSkinDBLookupComboBox;
    edtAliquota_ECF: TbsSkinEdit;
    cxGrid3: TcxGrid;
    GridFichaTecinica: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    bsSkinPanel2: TbsSkinPanel;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtCod_Produto: TbsSkinEdit;
    btnRemover: TbsSkinButton;
    btnAdicionar: TbsSkinButton;
    pnlFichaTecnica: TbsSkinPaintPanel;
    lblNomeProdutoFicha: TbsSkinStdLabel;
    edtQtde: TbsSkinNumericEdit;
    cdsMateriaPrima: TClientDataSet;
    srcMateriaPrima: TDataSource;
    cdsFichaTecnica: TClientDataSet;
    srcFichaTecnica: TDataSource;
    dspFichaTecnica: TDataSetProvider;
    sqlFichaTecnica: TSQLQuery;
    dspMateriaPrima: TDataSetProvider;
    qryMateriaPrima: TSQLQuery;
    GridFichaTecinicaColumn1: TcxGridDBColumn;
    GridFichaTecinicaColumn2: TcxGridDBColumn;
    GridFichaTecinicaColumn3: TcxGridDBColumn;
    GridFichaTecinicaColumn4: TcxGridDBColumn;
    edtPco_Venda: TbsSkinNumericEdit;
    qryModific: TSQLQuery;
    Label2: TLabel;
    qrySaldos: TSQLQuery;
    dspSaldos: TDataSetProvider;
    cdsSaldos: TClientDataSet;
    cmbPeriodo: TbsSkinComboBox;
    popEstoque: TbsSkinPopupMenu;
    LanarAvarias1: TMenuItem;
    AjustarValordoEstoque1: TMenuItem;
    ConsultadeAvarias1: TMenuItem;
    Inventariodosprodutos1: TMenuItem;
    bsSkinLinkImage1: TbsSkinLinkImage;
    srcRelatorio: TDataSource;
    cdsRelatorio: TClientDataSet;
    dspRelatorio: TDataSetProvider;
    qryRelatorio: TSQLQuery;
    cxPropertiesStore1: TcxPropertiesStore;
    cxGridPopupMenu1: TcxGridPopupMenu;
    bsSkinStdLabel10: TbsSkinStdLabel;
    Column_Nome_TipoProduto: TcxGridDBColumn;
    tabfoto: TbsSkinTabSheet;
    btnLocalizaImagem: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    OpenFigura: TOpenPictureDialog;
    bsSkinExPanel1: TbsSkinExPanel;
    ImagemProduto: TImage;
    edtCaminhoImagem: TEdit;
    PopRelatorios: TbsSkinPopupMenu;
    Etiquetas15X501: TMenuItem;
    lblCadFabricante: TbsSkinStdLabel;
    cmbNome_Fabricante: TbsSkinDBLookupComboBox;
    cdsCadFabricantes: TClientDataSet;
    srcCadFabricantes: TDataSource;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnexcluir: TbsSkinSpeedButton;
    btnalterar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    BtnImprimir: TbsSkinMenuSpeedButton;
    btnImprimir2: TbsSkinMenuSpeedButton;
    bsSkinStdLabel13: TbsSkinStdLabel;
    QtdeEmbalagem: TbsSkinSpinEdit;
    lblPrecoVendaExterna: TbsSkinStdLabel;
    edtPcoVendaExterna: TbsSkinNumericEdit;
    PrecoVendaExterna: TcxGridDBColumn;
    chkMetroLinear: TbsSkinCheckRadioBox;
    cmbSetores: TbsSkinDBLookupComboBox;
    cdsSetores: TClientDataSet;
    srcSetores: TDataSource;
    bsSkinStdLabel12: TbsSkinStdLabel;
    EdtCodigoFornecedor: TbsSkinEdit;
    Column_CodigoFornecedor: TcxGridDBColumn;
    Column_SetorID: TcxGridDBColumn;
    ransferenciaEntreSetores1: TMenuItem;
    bsSkinStdLabel14: TbsSkinStdLabel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    edtPesoBruto: TbsSkinNumericEdit;
    edtPesoLiquido: TbsSkinNumericEdit;
    pagCustos: TbsSkinTabSheet;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtCustoProduto: TbsSkinNumericEdit;
    bsSkinStdLabel17: TbsSkinStdLabel;
    edtPrecoSugerido: TbsSkinNumericEdit;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinPanel4: TbsSkinPanel;
    bsSkinStdLabel18: TbsSkinStdLabel;
    edtPercentualCusto: TbsSkinNumericEdit;
    edtDescricaoCusto: TbsSkinEdit;
    cmbtipo: TbsSkinComboBox;
    bsSkinStdLabel19: TbsSkinStdLabel;
    bsSkinStdLabel20: TbsSkinStdLabel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinPanel5: TbsSkinPanel;
    btnAdicionarAnimal: TbsSkinButton;
    btnRemoverAnimal: TbsSkinButton;
    cdsCustoProduto: TClientDataSet;
    cdsCustoProdutoDescricao: TStringField;
    cdsCustoProdutoTipo: TIntegerField;
    cdsCustoProdutoNome_Tipo: TStringField;
    cdsCustoProdutoValor: TFloatField;
    srcCustoProduto: TDataSource;
    cdsCustoProdutoTotal: TFloatField;
    pnlDescProduto2: TbsSkinPaintPanel;
    lblNomeProdutoFicha2: TbsSkinStdLabel;
    bsSkinStdLabel21: TbsSkinStdLabel;
    edtMargem: TbsSkinNumericEdit;
    bsSkinButton1: TbsSkinButton;
    cdsCustoProdutoIDCusto: TIntegerField;
    bsSkinExPanel3: TbsSkinExPanel;
    lblComissao: TbsSkinStdLabel;
    edtComissao: TbsSkinNumericEdit;
    bsSkinStdLabel22: TbsSkinStdLabel;
    edtcomissaoSecundaria: TbsSkinNumericEdit;
    bsSkinStdLabel23: TbsSkinStdLabel;
    edtMargemSecundaria: TbsSkinNumericEdit;
    chkBloquiaEstoqueNegativo: TbsSkinCheckRadioBox;
    lblValorMensal: TbsSkinStdLabel;
    edtValorMensal: TbsSkinNumericEdit;
    PopupMenu1: TPopupMenu;
    Configurar1: TMenuItem;
    bsSkinTabSheet3: TbsSkinTabSheet;
    bsSkinDBGrid2: TbsSkinDBGrid;
    cdsProdutosLocados: TClientDataSet;
    sercProdutosLocados: TDataSource;
    pnlDescProduto3: TPanel;
    lblGradeProduto: TbsSkinStdLabel;
    cmbNome_grade: TbsSkinDBLookupComboBox;
    srcGrande: TDataSource;
    srcGrupo: TDataSource;
    procedure EdtPesquisaChange(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure cmbCod_CentroCustoChange(Sender: TObject);
    procedure cmbNome_CentroCustoChange(Sender: TObject);
    Procedure limpaCasmpos();
    procedure GridProdutosDblClick(Sender: TObject);
    procedure cmbNome_GrupoChange(Sender: TObject);
    procedure cmbCod_GrupoChange(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnImprimirSaldosClick(Sender: TObject);
    procedure pagCadastroChange(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure btnAdicionarClick(Sender: TObject);
    Procedure MostraPesquisa;
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure cmbPeriodoChange(Sender: TObject);
    procedure LanarAvarias1Click(Sender: TObject);
    procedure ConsultadeAvarias1Click(Sender: TObject);
    procedure AjustarValordoEstoque1Click(Sender: TObject);
    procedure Inventariodosprodutos1Click(Sender: TObject);
    procedure cdsCadProdutosBeforeOpen(DataSet: TDataSet);
    procedure cdsCadProdutosCalcFields(DataSet: TDataSet);
    procedure btnLocalizaImagemClick(Sender: TObject);
    procedure Etiquetas15X501Click(Sender: TObject);
    procedure chkMetroQuadradoClick(Sender: TObject);
    procedure chkMetroLinearClick(Sender: TObject);
    procedure ransferenciaEntreSetores1Click(Sender: TObject);
    procedure btnAdicionarAnimalClick(Sender: TObject);
    procedure btnRemoverAnimalClick(Sender: TObject);
    procedure edtCustoProdutoExit(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure Configurar1Click(Sender: TObject);
  private
     pvQualBotao  : String;
     vlr_VendaAnt : Double;
     pvTipo_Rel   : Integer;
     pviCodSel    : integer;
     procedure CarregarFrabricante;
     procedure AjustarTela;
    function CalculaPrecoSugerido: Real;
    procedure Atualizacusto;
    function RetornaCMV: Real;
    procedure AducionarCustos(prPrecoSugerido : real; prTipo : Integer);
    procedure AtualizaLocacoes;
    procedure AjustarAmbiente;
    { Private declarations }
  public
     piCod_Produto : Integer;
     pviLinha      : Integer;
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

uses uPrincipal,ufuncoes, uEstoqueManutencao, uInventario, uselRelEtiquetas,
  uTransferenciaEntreSetores,uDaoCustoProduto,uClassCustoProduto,uDaoGrade,
  uConfigTabSheet;

{$R *.dfm}
//
Procedure Tfrmcadprodutos.MostraPesquisa();
Begin
   sqlFichaTecnica.Close;
   sqlFichaTecnica.Params.Clear;
   sqlFichaTecnica.Sql.Text :='Select Ficha.Cod_MateriaPrima, Prod.Descricao, Ficha.Qtde, Ficha.Pco_custo,Ficha.Cod_Produto '+
                              'from T_produtosFichaTecnica Ficha '+
                              'Left join T_produtos Prod on ' +
                              'Prod.Codigo=Ficha.Cod_MateriaPrima '+
                              'where Ficha.cod_Produto=:parCod_Produto ';
   sqlFichaTecnica.ParamByName('parCod_Produto').AsInteger := cdsCadProdutos.FieldByName('Codigo').AsInteger;

   cdsFichaTecnica.Close;
   cdsFichaTecnica.ProviderName := dspFichaTecnica.name;
   cdsFichaTecnica.Open;
End;

Procedure TfrmCadProdutos.limpaCasmpos();
Begin
   EdtCodigo.Text     :='';
   EdtDescricao.Text  :='';
   edtPco_Venda.Text  :='0';
   edtValorMensal.Text :='0';
   cmbCod_CentroCusto.KeyValue  := null;
   cmbNome_CentroCusto.KeyValue := null;
   cmbCod_Grupo.KeyValue  := null;
   cmbNome_Grupo.KeyValue := null;
   EdtData_cad.text   :='';
   edtCod_barras.Text :='';
   edtUnid.Text       :='';
   chkMetroQuadrado.Checked := False;
   cmbTipoProduto.ItemIndex := 0 ;
   edtPesoBruto.text := '0,000';
   edtPesoLiquido.text := '0,000';
End;


procedure TfrmCadProdutos.pagCadastroChange(Sender: TObject);
begin
   if cdsCadProdutos.IsEmpty then
      Exit;
   case pagCadastro.ActivePageIndex of
      2:
      Begin
         pnlFichaTecnica.CaptionMode :=false;
         lblNomeProdutoFicha.Caption := 'Ficha Tecnica do Produto '+upperCase( inczero( cdsCadProdutos.FieldByName('Codigo').AsString,5)+' - '+cdsCadProdutos.FieldByName('Descricao').AsString);
         pnlFichaTecnica.Update;
         cdsMateriaPrima.close;
         cdsMateriaPrima.ProviderName := dspMateriaPrima.Name;
         cdsMateriaPrima.Open;
         MostraPesquisa();
      End;
      3 :
      Begin
         pnlDescProduto.CaptionMode :=false;
         lblNomeProduto.Caption := upperCase( inczero( cdsCadProdutos.FieldByName('Codigo').AsString,5)+' - '+cdsCadProdutos.FieldByName('Descricao').AsString);
         pnlDescProduto.Update;
         cdsMovEstoque.Close;
      End;
      4 :
      Begin
         if FileExists(cdsCadProdutos.FieldByName('Caminho_imagem').AsString) Then
         Begin
            OpenFigura.FileName := cdsCadProdutos.FieldByName('Caminho_imagem').AsString ;
            ImagemProduto.Picture.LoadFromFile(OpenFigura.FileName);
            ImagemProduto.Repaint;
         End
         Else
         Begin
          ImagemProduto.Picture := nil;
          ImagemProduto.Repaint;
         End;
      End;
      5 :
      begin
         pnlDescProduto2.CaptionMode  := False;
         lblNomeProdutoFicha2.Caption := upperCase( inczero( cdsCadProdutos.FieldByName('Codigo').AsString,5)+' - '+cdsCadProdutos.FieldByName('Descricao').AsString);
         pnlDescProduto2.Update;
         edtCustoProduto.text := Formatfloat( '0.00', cdsCadProdutos.FieldByName('pco_Custo').AsFloat);
         edtMargem.text := Formatfloat( '0.00', cdsCadProdutos.FieldByName('Margem').AsFloat);
         AtualizaCusto;
      end;
      6:
      begin
         pnlDescProduto3.Caption := upperCase( inczero( cdsCadProdutos.FieldByName('Codigo').AsString,5)+' - '+cdsCadProdutos.FieldByName('Descricao').AsString);
         pnlDescProduto3.Update;
         AtualizaLocacoes;
      end;
   end;
end;
procedure TfrmCadProdutos.AtualizaLocacoes;
var PrecoSugerido : Real;
begin
   cdsProdutosLocados.data := gConexao.BuscarDadosSQL('select cli.Descricao, itens.Qtde_Venda, itens.pco_Venda as Valor from T_ItensVendas itens '+
                           '    inner join T_Vendas ven on Ven.SeqVenda=itens.seqvenda '+
                           '    inner join T_Clientes Cli on Cli.codigo=Ven.Cod_Cliente '+
                           '    Where Itens.Cod_Produto='+QuotedStr(cdsCadProdutos.FieldByName('Codigo').AsString),nil).Data;

end;
procedure TfrmCadProdutos.Atualizacusto;
var PrecoSugerido : Real;
    LucroBruto : Real;
    DespesasVariaveis : Real;
    DespesasFixas : Real;
    MargemContribuicao : Real;
begin
   cdsCustoProduto.EmptyDataSet;

   PrecoSugerido         :=  CalculaPrecoSugerido;
   edtPrecoSugerido.text := FormatFloat('0.00',CalculaPrecoSugerido);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Preco de Venda';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4;
   cdsCustoProduto.fieldByname('Total').AsFloat       :=  PrecoSugerido;
   cdsCustoProduto.fieldByname('Valor').AsFloat       :=  100;;
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Preco de Custo';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4;
   cdsCustoProduto.fieldByname('Total').AsFloat       :=  StrTofloat(edtCustoProduto.Text);
   cdsCustoProduto.fieldByname('Valor').AsFloat       :=  arredondar((StrTofloat(edtCustoProduto.Text) / PrecoSugerido ) * 100,2);
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   AducionarCustos(PrecoSugerido,1);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Custo de Mercadoria Vendida';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4;
   cdsCustoProduto.fieldByname('Total').AsFloat       :=  RetornaCMV;
   cdsCustoProduto.fieldByname('Valor').AsFloat       :=  arredondar( (RetornaCMV / PrecoSugerido ) * 100,2);
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   LucroBruto := (CalculaPrecoSugerido - RetornaCMV);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Lucro Bruto do Produto';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      := 4;
   cdsCustoProduto.fieldByname('Total').AsFloat       := LucroBruto;
   cdsCustoProduto.fieldByname('Valor').AsFloat       := arredondar( ((CalculaPrecoSugerido - RetornaCMV) / PrecoSugerido ) * 100,2);
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   DespesasVariaveis :=  Arredondar( ( PrecoSugerido *  StrtoFloat(gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasVariaveis', '0' ))) / 100,2);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Despesas Variaveis ';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4;
   cdsCustoProduto.fieldByname('Valor').AsFloat       := StrtoFloat(gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasVariaveis', '0' ));
   cdsCustoProduto.fieldByname('Total').AsFloat       := DespesasVariaveis;
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   MargemContribuicao := (LucroBruto-DespesasVariaveis);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Margem de Contribuição';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4;
   cdsCustoProduto.fieldByname('Total').AsFloat       := MargemContribuicao;
   cdsCustoProduto.fieldByname('Valor').AsFloat       := Arredondar((MargemContribuicao/PrecoSugerido)*100,2);
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   DespesasFixas :=  Arredondar( ( PrecoSugerido *  StrtoFloat(gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasFixas', '0' ))) / 100,2);

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Despesas Fixas ';
   cdsCustoProduto.fieldByname('Tipo').AsInteger      :=  4 ;
   cdsCustoProduto.fieldByname('Valor').AsFloat       := StrtoFloat(gParametros.Ler( '', '[ADMINISTRATIVO]', 'DespesasFixas', '0' ));
   cdsCustoProduto.fieldByname('Total').AsFloat       := DespesasFixas;
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;

   cdsCustoProduto.Append;
   cdsCustoProduto.fieldByname('Descricao').AsString  := 'Lucro Liquido';
   cdsCustoProduto.fieldByname('Valor').AsFloat       :=  Arredondar(((MargemContribuicao - DespesasFixas)/PrecoSugerido)*100,2);
   cdsCustoProduto.fieldByname('Total').AsFloat       := (MargemContribuicao - DespesasFixas);
   cdsCustoProduto.fieldByname('IdCusto').AsInteger   := 0;
   cdsCustoProduto.Post;
end;
procedure TfrmCadProdutos.AducionarCustos(prPrecoSugerido : real; prTipo : Integer);
var cdsDados : TclientDataSet;
    DaoCustoProduto : TDaoCustoProduto;
begin
   DaoCustoProduto := TDaoCustoProduto.Create(gConexao);
   cdsDados        := DaoCustoProduto.BuscarPorProduto(cdsCadProdutos.FieldByName('Codigo').AsInteger);
   while not cdsDados.eof do
   begin
      if cdsDados.fieldByname('Tipo').AsInteger = prTipo then
      begin
        cdsCustoProduto.Append;
        cdsCustoProduto.fieldByname('Descricao').AsString  := cdsDados.fieldByname('Descricao').AsString;
        cdsCustoProduto.fieldByname('Tipo').AsInteger      := cdsDados.fieldByname('Tipo').AsInteger;
        cdsCustoProduto.fieldByname('Total').AsFloat       := cdsDados.fieldByname('Valor').AsFloat;
        cdsCustoProduto.fieldByname('IdCusto').AsInteger   := cdsDados.fieldByname('ID').AsInteger;
        cdsCustoProduto.fieldByname('Valor').AsFloat       := Arredondar((cdsDados.fieldByname('Valor').AsFloat/prPrecoSugerido)*100,2);
        cdsCustoProduto.Post;
      end;
      cdsDados.next;
   end;
end;

procedure TfrmCadProdutos.ransferenciaEntreSetores1Click(Sender: TObject);
begin
   frmTransferenciaDeSetores := TfrmTransferenciaDeSetores.create(Application);
   frmTransferenciaDeSetores.ShowModal;
end;

procedure TfrmCadProdutos.EdtPesquisaChange(Sender: TObject);
begin
   btnPesquisaClick(btnPesquisa);
end;

procedure TfrmCadProdutos.Etiquetas15X501Click(Sender: TObject);
begin
   frmSelRelEtiquetas := TfrmSelRelEtiquetas.create(Application);
   frmSelRelEtiquetas.ShowModal;
end;

procedure TfrmCadProdutos.btnincluirClick(Sender: TObject);
begin
   pvQualBotao := 'INCLUIR';
   pviCodSel   := 0;
   edtCodigo.Text :=  Sequencia('Codigo',False,'T_Produtos',FrmPrincipal.dbxPrincipal,'',False,6);

   EdtData_cad.text := FormatDateTime('dd/mm/yyyy',Now);

   BtnIncluir.Enabled :=False;
   BtnAlterar.Enabled :=False;
   BtnExcluir.Enabled :=False;
   BtnOk.Enabled      :=True;
   BtnCancela.Enabled :=True;
   PagCadastro.ActivePageIndex:=1;
   edtCod_barras.SetFocus;
end;

procedure TfrmCadProdutos.btnokClick(Sender: TObject);
VAR vlr_anterior : Double;
    vlr_Atual   : Double;
begin

   if (cmbNome_Fabricante.KeyValue = null) and (cmbNome_Fabricante.Visible) Then
   Begin
      CaixaMensagem( 'Informe o Fabricante ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if cmbNome_Grupo.KeyValue = null Then
   Begin
      CaixaMensagem( 'Informe o Grupo ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   qryCadProdutos.Close;
   qryCadProdutos.SQL.Text := 'Select * from T_Produtos Prod '+
                              'Where Prod.Codigo =:parCodigo ';
   qryCadProdutos.ParamByName('parCodigo').AsString := edtCodigo.Text;

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspCadProdutos.Name;
   cdsCadProdutos.Open;

   If pvQualBotao = 'ALTERAR' then
   begin
      cdsCadProdutos.Edit;
      cdsCadProdutos.FieldByName('Data_Atu').AsDateTime := Now;
   End
   Else
   Begin
      cdsCadProdutos.Append;
      cdsCadProdutos.FieldByName('Data_Cad').AsDateTime := Now;
   End;

   cdsCadProdutos.FieldByName('Codigo').AsString           := edtCodigo.Text;
   cdsCadProdutos.FieldByName('Descricao').AsString        := edtDescricao.Text;
   cdsCadProdutos.FieldByName('Operador').AsString         := gsOperador;
   cdsCadProdutos.FieldByName('Pco_Venda').AsFloat         := StrToFloat( edtPco_Venda.Text );
   cdsCadProdutos.FieldByName('ValorMes').AsFloat          := StrToFloat( edtValorMensal.Text );
   cdsCadProdutos.FieldByName('Cod_Operacao').AsString     := '0100'; //cmbNome_CentroCusto.KeyValue;
   cdsCadProdutos.FieldByName('Cod_Emp').AsString          := gsCod_Emp;
   cdsCadProdutos.FieldByName('Cod_Barras').AsString       := edtCod_barras.Text;
   cdsCadProdutos.FieldByName('Cod_Grupo').AsString        := cmbNome_Grupo.KeyValue;
   cdsCadProdutos.FieldByName('Unid').AsString             := edtUnid.Text;
   cdsCadProdutos.FieldByName('Aliquota_ECF').AsString     := edtAliquota_ECF.Text;
   cdsCadProdutos.FieldByName('Caminho_Imagem').AsString   := edtCaminhoImagem.Text;
   cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat := Strtofloat(edtPcoVendaExterna.Text);
   cdsCadProdutos.FieldByName('QtdeEmbalagem').AsInteger   := StrToInt(QtdeEmbalagem.Text);
   cdsCadProdutos.FieldByName('Codigo').AsString           := edtCodigo.Text;
   cdsCadProdutos.FieldByName('CodigoFornecedor').AsString := edtCodigoFornecedor.Text;

   cdsCadProdutos.FieldByName('Cod_Fabricante').AsInteger  := 1;
   if cmbNome_Fabricante.Visible then
      cdsCadProdutos.FieldByName('Cod_Fabricante').AsInteger  := cmbNome_Fabricante.KeyValue;

   cdsCadProdutos.FieldByName('M2').AsString           := 'N';
   if chkMetroQuadrado.Checked Then
      cdsCadProdutos.FieldByName('M2').AsString        := 'S';
   cdsCadProdutos.FieldByName('Tipo_Produto').AsString := IntToStr(cmbTipoProduto.ItemIndex);
   cdsCadProdutos.FieldByName('Perc_Comissao').AsFloat := StrToFloat( edtComissao.Text );
   cdsCadProdutos.FieldByName('MetroLinear').AsBoolean := chkMetroLinear.Checked;
   cdsCadProdutos.FieldByName('PesoLiquido').AsFloat   := StrTofloat(edtPesoLiquido.Text);
   cdsCadProdutos.FieldByName('PesoBruto').AsFloat     := StrTofloat(edtPesoBruto.Text);
   cdsCadProdutos.FieldByName('ComissaoSecundaria').AsFloat := StrTofloat(edtComissaoSecundaria.Text);
   cdsCadProdutos.FieldByName('MargemSecundaria').AsFloat   := StrTofloat(edtMargemSecundaria.Text);
   cdsCadProdutos.FieldByName('BloqueiaNegativo').AsBoolean := chkBloquiaEstoqueNegativo.Checked;
   cdsCadProdutos.FieldByName('GradeId').AsInteger := cmbNome_grade.KeyValue;

   cdsCadProdutos.Post;

   If cdsCadProdutos.ChangeCount > 0  Then // se houve mudancas
      cdsCadProdutos.ApplyUpdates(-1);

  if vlr_VendaAnt>StrToFloat(edtPco_Venda.Text) then
  Begin
     vlr_anterior := ( vlr_VendaAnt * cdsCadProdutos.FieldByName('Saldo').Asfloat ) ;
     vlr_Atual   := ( Strtofloat(edtPco_Venda.Text) * cdsCadProdutos.FieldByName('Saldo').Asfloat ) ;

     qrySaldos.Close;
     qrySaldos.Params.Clear;
     qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

     cdsSaldos.Close;
     cdsSaldos.ProviderName := dspSaldos.Name;
     cdsSaldos.Open;

     cdsSaldos.Append;
     cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
     cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
     cdsSaldos.FieldByName('E_S').AsString          := 'S';
     cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
     cdsSaldos.FieldByName('Cod_Produto').AsInteger := StrToint(edtCodigo.Text);
     cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Anterior-vlr_Atual);
     cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
     cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
     cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
     cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
     cdsSaldos.FieldByName('Historico').AsString    := 'Baixa de Preço de venda de '+FormatFloat('0.00',vlr_VendaAnt)+ ' Para '+edtPco_Venda.Text;
     cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'BAIXA DE PRECO';
     cdsSaldos.Post;
     cdsSaldos.ApplyUpdates(-1);
  End;

  if vlr_VendaAnt<StrToFloat(edtPco_Venda.Text) then
  Begin
     vlr_anterior := ( vlr_VendaAnt * cdsCadProdutos.FieldByName('Saldo').Asfloat ) ;
     vlr_Atual   := ( Strtofloat(edtPco_Venda.Text) * cdsCadProdutos.FieldByName('Saldo').Asfloat ) ;

     qrySaldos.Close;
     qrySaldos.Params.Clear;
     qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

     cdsSaldos.Close;
     cdsSaldos.ProviderName := dspSaldos.Name;
     cdsSaldos.Open;

     cdsSaldos.Append;
     cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
     cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
     cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
     cdsSaldos.FieldByName('E_S').AsString          := 'E';
     cdsSaldos.FieldByName('Cod_Produto').AsInteger := StrToint(edtCodigo.Text);
     cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Atual-vlr_Anterior);
     cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
     cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
     cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
     cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
     cdsSaldos.FieldByName('Historico').AsString    := 'Almento de Preço de venda de '+FormatFloat('0.00',vlr_VendaAnt)+ ' Para '+edtPco_Venda.Text;
     cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'ALMENTO DE PRECO';
     cdsSaldos.Post;
     cdsSaldos.ApplyUpdates(-1);
  End;

  BtnIncluir.Enabled := True;
  BtnAlterar.Enabled := True;
  BtnExcluir.Enabled := True;
  BtnOk.Enabled      := False;
  BtnCancela.Enabled := False;
  limpaCasmpos();
  pvQualBotao := '';
  PagCadastro.ActivePageIndex:=0;
  btnPesquisaClick(btnPesquisa);
  if pviCodSel <> 0  then
     cdsCadProdutos.Locate('Codigo',pviCodSel,[]);

end;

procedure TfrmCadProdutos.btnPesquisarClick(Sender: TObject);
begin
   if cmbSetores.KeyValue = null then
   begin
      CaixaMensagem( 'Selecione o setor do estoque ', ctAviso, [ cbOk ], 0 );
      Exit;
   end;
   
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.Text := 'SELECT Mov.Cod_Produto,Prod.Descricao,Mov.E_S,Mov.Rotina,Mov.Data_Cad, '+
                           '       Mov.Saldo_Anterior,Mov.Qtde_Baixa,Mov.Saldo_Posterior,Mov.Operador '+
                           'FROM t_MovEstoque Mov '+
                           'Left Join T_Produtos Prod ON '+
                           '     Prod.Codigo=Mov.Cod_Produto  '+
                           'where ( Mov.Data_Cad>=:parData_VendaIni And Mov.Data_Cad<=:parData_VendaFim ) AND '+
                           '        Cod_Produto=:parCod_Produto and SetorId=:parSetorId '+
                           'Order by Mov.Data_Cad ';
   qryVariavel.ParamByName('parData_VendaIni').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Ini.Text+' 00:00:00');
   qryVariavel.ParamByName('parData_VendaFim').AsSQLTimeStamp := StrToSqlTimeStamp(dtpData_Fim.Text+' 23:59:00');
   qryVariavel.ParamByName('parCod_Produto').AsString         := cdsCadProdutos.FieldByName('Codigo').AsString;
   qryVariavel.ParamByName('parSetorId').AsInteger            := cmbSetores.KeyValue;


   cdsMovEstoque.Close;
   cdsMovEstoque.ProviderName := dspvariavel.Name;
   cdsMovEstoque.Open;

   MostraPesquisa();

end;

procedure TfrmCadProdutos.btnRemoverAnimalClick(Sender: TObject);
var  DaoCustoProduto : TDaoCustoProduto;
begin
  inherited;
  if ( cdsCustoProduto.fieldByname('IdCusto').AsInteger = 0 )then
  begin
     CaixaMensagem( 'Lancamentos automáticos não podem ser excluido ', ctAviso, [ cbOk ], 0 );
     Exit
  end;
  DaoCustoProduto := TDaoCustoProduto.Create(gConexao);
  DaoCustoProduto.Excluir( cdsCustoProduto.fieldByname('IdCusto').AsInteger );
  cdsCustoProduto.Delete;
  edtPrecoSugerido.text := FormatFloat('0.00',CalculaPrecoSugerido);
  FreeAndNil(DaoCustoProduto);
  AtualizaCusto;
end;

procedure TfrmCadProdutos.btnRemoverClick(Sender: TObject);
begin
   IF cdsFichaTecnica.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir a Materia Prima '+cdsFichaTecnica.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      qryModific.Close;
      qryModific.params.Clear;
      qryModific.Sql.Text := 'Delete from t_ProdutosFichaTecnica '+
                             'Where cod_Produto=:parCod_Produto and Cod_MateriaPrima=:parCod_MateriaPrima ';
      QryModific.paramByName('parCod_Produto').AsInteger      := cdsFichaTecnica.FieldByName('Cod_Produto').AsInteger;
      QryModific.paramByName('parCod_MateriaPrima').AsInteger := cdsFichaTecnica.FieldByName('Cod_MateriaPrima').AsInteger;
      qryModific.ExecSQL;
      MostraPesquisa;
   End;
end;

procedure TfrmCadProdutos.CarregarFrabricante;
begin
   if frmPrincipal.btnCadFabricante.VisibleForUser then
   begin

     qryVariavel.Close;
     qryVariavel.Params.clear;
     qryVariavel.SQL.Text := 'Select * from T_Fabricantes ';

     cdsCadFabricantes.close;
     cdsCadFabricantes.ProviderName := dspVariavel.Name;
     cdsCadFabricantes.Open;

   end;
end;

procedure TfrmCadProdutos.AjustarTela;
begin
   PagCadastro.ActivePageIndex:=0;

   lblPrecoVendaExterna.Visible := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[GERAL]', 'VendaExterna', 'NAO' )));
   edtPcoVendaExterna.Visible   := RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[GERAL]', 'VendaExterna', 'NAO' )));
   lblValorMensal.Visible       := False;
   edtValorMensal.Visible       := False;
   cmbNome_Fabricante.Visible   := frmPrincipal.btnCadFabricante.VisibleForUser;
   lblCadFabricante.Visible     := frmPrincipal.btnCadFabricante.VisibleForUser;
   lblGradeProduto.Visible      := frmPrincipal.btnGradeProduto.VisibleForUser;
   cmbNome_grade.Visible        := frmPrincipal.btnGradeProduto.VisibleForUser;

   If gsParametros.ReadString('ACESSODADOS','TipoSistema','0') = '0' Then
   Begin
      lblComissao.Visible      := True;
      edtComissao.Visible      := True;
      chkMetroQuadrado.Visible := True;
   End;

   chkMetroQuadrado.Visible   := True;
   LanarAvarias1.Visible      := False;
   ConsultadeAvarias1.Visible := False;

   if HeLocacao then
   begin
      lblPrecoVendaExterna.Visible := True;
      edtPcoVendaExterna.Visible   := True;
      lblPrecoVendaExterna.Caption := 'Preço Calção';
      lblPrevoVenda.Caption        := 'Preço Da Diaria';
      lblValorMensal.Visible       := true;
      edtValorMensal.Visible       := true;
   end;
   
end;

procedure TfrmCadProdutos.AjustarValordoEstoque1Click(Sender: TObject);
begin
  inherited;
   frmEstoqueManutencao := TfrmEstoqueManutencao.create(Application);
   frmEstoqueManutencao.PagGeral.activepageindex    := 2;
   frmEstoqueManutencao.TabLancamento.TabVisible    := False;
   frmEstoqueManutencao.tabConsulta.TabVisible      := False;
   frmEstoqueManutencao.tabajustaSaldo.TabVisible   := True;
   frmEstoqueManutencao.ShowModal;
end;

procedure TfrmCadProdutos.btnLocalizaImagemClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja adicionar uma foto para o Produto ', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      if not OpenFigura.Execute Then
         Exit;
   End;
   edtCaminhoImagem.Text := OpenFigura.FileName;
   ImagemProduto.Picture.LoadFromFile(OpenFigura.FileName);
   ImagemProduto.Repaint;
end;

procedure TfrmCadProdutos.bsSkinButton1Click(Sender: TObject);
var ProdutoId : Integer;
begin
   if CaixaMensagem( 'Deseja atualizar o Custo do Produto ', ctAviso, [ cbSimNao ], 0 ) then
   begin
     ProdutoId := cdsCadProdutos.FieldByName('Codigo').AsInteger;
     qryModific.Close;
     qryModific.Sql.text := 'Update T_produtos set Pco_custo=:parPco_Custo, '+
                            '                      Margem=:parParmagem  '+
                            'where codigo=:parCodigo';
     qryModific.ParamByName('parParmagem').asFloat  := StrTofloat(edtMargem.text);
     qryModific.ParamByName('parPco_Custo').asFloat := Strtofloat(edtCustoProduto.text);
     qryModific.ParamByName('parCodigo').AsInteger  := cdsCadProdutos.FieldByName('Codigo').AsInteger;
     qryModific.ExecSQL;
     cdsCadProdutos.close;
     cdsCadProdutos.Open;
     cdsCadProdutos.Locate('Codigo',ProdutoId,[]);
     AtualizaCusto;
   end;
end;

procedure TfrmCadProdutos.btnAdicionarAnimalClick(Sender: TObject);
 var DaoCustoProduto : TDaoCustoProduto;
     CustoProduto : TCustoProduto;
begin
  CustoProduto := TCustoProduto.Create;
  CustoProduto.Descricao := edtDescricaoCusto.text;
  CustoProduto.Tipo      := (cmbTipo.ItemIndex+1);
  CustoProduto.ProdutoId := cdsCadProdutos.FieldByName('Codigo').AsInteger;
  CustoProduto.Valor     := Strtofloat(edtPercentualCusto.text);
  CustoProduto.Ordem     := 0;
  DaoCustoProduto := TDaoCustoProduto.Create(gConexao);
  DaoCustoProduto.Incluir(CustoProduto);
  FreeandNil(CustoProduto);
  FreeandNil(DaoCustoProduto);
  AtualizaCusto;
end;

function TfrmCadProdutos.CalculaPrecoSugerido : Real;
var PercentualTotal : Real;
    ValorFinal : Real;
    cdsDados : TClientDataSet;
    DaoCustoProduto : TDaoCustoProduto;
begin
   PercentualTotal := 0;
   ValorFinal := RetornaCMV;
   DaoCustoProduto := TDaoCustoProduto.Create(gConexao);
   cdsDados := DaoCustoProduto.BuscarPorProduto(cdsCadProdutos.FieldByName('Codigo').AsInteger);
   PercentualTotal := Strtofloat(edtmargem.Text);
   {
   while not cdsDados.Eof do
   begin
     if cdsDados.FieldByName('Tipo').AsFloat = 2 then
        PercentualTotal := PercentualTotal + cdsDados.FieldByName('Valor').AsFloat;
     cdsDados.Next;
   end;
   }
   Result := arredondar( ValorFinal / ((100-PercentualTotal)/100),2 ) ; 
end;

function TfrmCadProdutos.RetornaCMV : Real;
var PercentualTotal : Real;
    ValorFinal : Real;
    cdsDados : TClientDataSet;
    DaoCustoProduto : TDaoCustoProduto;
begin
   PercentualTotal := 0;
   DaoCustoProduto := TDaoCustoProduto.Create(gConexao);
   cdsDados := DaoCustoProduto.BuscarPorProduto(cdsCadProdutos.FieldByName('Codigo').AsInteger);
   cdsDados.first;
   ValorFinal := StrTofloat(edtCustoProduto.text);
   while not cdsDados.Eof do
   begin
     if cdsDados.FieldByName('Tipo').AsFloat = 1 then
        ValorFinal := ValorFinal + cdsDados.FieldByName('Valor').AsFloat;
     cdsDados.Next;
   end;
   Result := ValorFinal ;
end;


procedure TfrmCadProdutos.btnAdicionarClick(Sender: TObject);
begin
   if Trim(edtCod_Produto.text)='' then
   Begin
      CaixaMensagem( 'Selecione a Materia Prima ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   IF cdsFichaTecnica.locate('Cod_MateriaPrima',edtCod_Produto.Text,[]) Then
   Begin
      CaixaMensagem( 'A Materia Prima ja foi informada ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;


   sqlFichaTecnica.Close;
   sqlFichaTecnica.Params.Clear;
   sqlFichaTecnica.Sql.Text :='Select *  From T_produtosFichaTecnica ';

   cdsFichaTecnica.Close;
   cdsFichaTecnica.ProviderName := dspFichaTecnica.name;
   cdsFichaTecnica.Open;

   cdsFichaTecnica.Append;
   cdsFichaTecnica.FieldByName('Cod_Produto').AsInteger      := cdsCadProdutos.FieldByName('Codigo').AsInteger;
   cdsFichaTecnica.FieldByName('Cod_MateriaPrima').AsInteger := Strtoint(edtCod_Produto.Text);
   cdsFichaTecnica.FieldByName('Qtde').AsFloat               := edtQtde.Value;
   cdsFichaTecnica.FieldByName('Cod_Emp').AsString           := gsCod_emp;
   cdsFichaTecnica.FieldByName('Operador').AsString          := GsOperador;
   cdsFichaTecnica.FieldByName('Data_Cad').AsDatetime        := Now;
   cdsFichaTecnica.FieldByName('Pco_Custo').AsFloat          := cdsMateriaPrima.FieldByName('Pco_Venda').AsFloat;
   cdsFichaTecnica.Post;
   cdsFichaTecnica.ApplyUpdates(-1);

   MostraPesquisa();

end;

procedure TfrmCadProdutos.btnalterarClick(Sender: TObject);
begin
   IF cdsCadProdutos.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   pvQualBotao := 'ALTERAR';
   pviCodSel   := cdsCadProdutos.FieldByName('Codigo').AsInteger;

   edtcodigo.Text              := incZero( IntToStr(cdsCadProdutos.FieldByName('Codigo').AsInteger),6);
   edtcodigoFornecedor.Text    := cdsCadProdutos.FieldByName('CodigoFornecedor').AsString;
   edtDescricao.Text           := cdsCadProdutos.FieldByName('Descricao').AsString;
   edtCaminhoImagem.text       := cdsCadProdutos.FieldByName('Caminho_Imagem').AsString;
   edtPco_Venda.Text           := FormatFloat('0.00',cdsCadProdutos.FieldByName('Pco_Venda').AsFloat);
   edtValorMensal.Text         := FormatFloat('0.00',cdsCadProdutos.FieldByName('ValorMes').AsFloat);
   edtPcoVendaExterna.Text     := FormatFloat('0.00',cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat);
   cmbCod_CentroCusto.KeyValue := cdsCadProdutos.FieldByName('Cod_Operacao').AsString;
   cmbCod_CentroCustoChange(cmbCod_CentroCusto);
   cmbCod_Grupo.KeyValue       := cdsCadProdutos.FieldByName('Cod_Grupo').AsString;
   edtAliquota_ECF.Text        := cdsCadProdutos.FieldByName('Aliquota_ECF').AsString;
   cmbCod_GrupoChange(cmbCod_Grupo);
   cmbNome_Fabricante.KeyValue   := cdsCadProdutos.FieldByName('Cod_Fabricante').AsString;

   EdtData_cad.text   := FormatDateTime('dd/mm/yyyy',cdsCadProdutos.FieldByName('Data_Cad').AsDateTime);
   edtCod_barras.Text := cdsCadProdutos.FieldByName('Cod_Barras').AsString;
   edtUnid.Text       := cdsCadProdutos.FieldByName('Unid').AsString;
   chkMetroQuadrado.Checked := RetornarVerdadeirOuFalso(cdsCadProdutos.FieldByName('m2').AsString);
   chkMetroLinear.Checked := cdsCadProdutos.FieldByName('MetroLinear').AsBoolean;
   cmbTipoProduto.ItemIndex := cdsCadProdutos.FieldByName('Tipo_Produto').AsInteger;
   edtComissao.Text  := FormatFloat('0.00', cdsCadProdutos.FieldByName('Perc_Comissao').AsFloat);
   vlr_VendaAnt      := cdsCadProdutos.FieldByName('Pco_Venda').AsFloat;
   edtPesoBruto.Text   := FormatFloat('0.000',cdsCadProdutos.FieldByName('PesoBruto').AsFloat);
   edtPesoLiquido.Text := Formatfloat('0.000', cdsCadProdutos.FieldByName('PesoLiquido').AsFloat);
   edtComissaoSecundaria.Text := Formatfloat('0.00', cdsCadProdutos.FieldByName('ComissaoSecundaria').AsFloat);
   edtMargemSecundaria.Text := Formatfloat('0.000', cdsCadProdutos.FieldByName('MargemSecundaria').AsFloat);
   chkBloquiaEstoqueNegativo.Checked := cdsCadProdutos.FieldByName('BloqueiaNegativo').AsBoolean;
   cmbNome_grade.KeyValue := StrToIntDef( cdsCadProdutos.FieldByName('GradeID').AsString,0 );

   BtnIncluir.Enabled := False;
   BtnAlterar.Enabled := False;
   BtnExcluir.Enabled := False;
   BtnOk.Enabled      := True;
   BtnCancela.Enabled := True;
   tabfoto.Enabled    := True;

   PagCadastro.ActivePageIndex:=1;

   edtDescricao.SetFocus;

end;

procedure TfrmCadProdutos.btnexcluirClick(Sender: TObject);
begin
   IF cdsCadProdutos.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Exclir o Produto '+cdsCadProdutos.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
       try
         cdsCadProdutos.Delete;
         cdsCadProdutos.ApplyUpdates(-1);
       except on E: Exception do
          CaixaMensagem('Não foi possivel Excluir o Produto ('+E.Message+')', ctConfirma, [ cbSimNao ], 0 )
       end;
   End;
end;

procedure TfrmCadProdutos.BtnCancelaClick(Sender: TObject);
begin
   edtDescricao.Text := '';

   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;
   BtnExcluir.Enabled := True;
   BtnOk.Enabled      := False;
   BtnCancela.Enabled := False;
   tabfoto.Enabled    := False;
   limpaCasmpos();

   PagCadastro.ActivePageIndex:=0;

end;

procedure TfrmCadProdutos.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCadProdutos.btnImprimirSaldosClick(Sender: TObject);
var lrSaldoFinal : Integer;
begin

   if cdsMovEstoque.IsEmpty Then
   Begin
      CaixaMensagem( 'Selecione os dados para impressao ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   pvTipo_Rel := 0;

   GstituloRel  :='Relatorio de Movimento de Estoque';

   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   cdsMovEstoque.First;
   impmatricial.Imp(pvilinha,001,' Saldor Inicial....:  '+FormatFloat('0',cdsMovEstoque.FieldByName('Saldo_Anterior').AsInteger) );
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;

   lrSaldoFinal := 0;

   while not cdsMovEstoque.Eof do
   Begin
      impmatricial.Imp(pvilinha,001,cdsMovEstoque.FieldByName('E_S').AsString+' '+cdsMovEstoque.FieldByName('Rotina').AsString );
      impmatricial.Imp(pvilinha,001,FormatDateTime('dd/mm/yyyy HH:MM:SS',cdsMovEstoque.FieldByName('Data_Cad').AsDatetime) );
      if cdsMovEstoque.FieldByName('E_S').AsString='E' then
         impmatricial.ImpD(pvilinha,070,FormatFloat(',0.00',cdsMovEstoque.fieldByname('Qtde_Baixa').asInteger),[])
      Else
         impmatricial.ImpD(pvilinha,060,FormatFloat(',0.00',cdsMovEstoque.fieldByname('Qtde_Baixa').asInteger),[]);
      impmatricial.ImpD(pvilinha,080,FormatFloat(',0.00',cdsMovEstoque.fieldByname('Saldo_Posterior').asInteger),[]);
      pviLinha:=Pvilinha+1;
      if pvilinha>60 then
         impmatricial.Novapagina;

      lrSaldoFinal  :=  cdsMovEstoque.fieldByname('Saldo_Posterior').asInteger;
      cdsMovEstoque.next;
   End;
   pviLinha:=Pvilinha+1;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,' Saldor Final....:  '+FormatFloat('0',lrSaldoFinal) );
   pviLinha:=Pvilinha+1;

   impmatricial.Fechar;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin

   AjustarTela;

   CarregarFrabricante;

   qryVariavel.Close;
   qryVariavel.Params.clear;
   qryVariavel.SQL.Text := 'Select * from T_Operacoes where '+
                                  '( Tipo_Conta=:parTipo_Conta Or Tipo_Conta=:parTipo_Conta1  ) '+
                                     'Order by Descricao ';
   qryVariavel.ParamByName('parTipo_Conta').AsInteger  := 1; // 1 Debito 2 Credito
   qryVariavel.ParamByName('parTipo_Conta1').AsInteger := 4; // 1 Debito 2 Credito

   cdsCadCtosCusto.Close;
   cdsCadCtosCusto.ProviderName := dspVariavel.name;
   cdsCadCtosCusto.Open;

   qryMateriaPrima.Close;
   qryMateriaPrima.Params.clear;
   qryMateriaPrima.SQL.Text := 'Select * from T_Produtos where Tipo_Produto=:parTipo_Produto ';
   qryMateriaPrima.ParamByName('parTipo_Produto').AsInteger  := 2; //  <materia prima

   cdsMateriaPrima.close;
   cdsMateriaPrima.ProviderName := dspMateriaPrima.Name;
   cdsMateriaPrima.Open;

   qryCadProdutos.Close;
   qryCadProdutos.SQL.Text := 'Select * from T_Produtos Where 1=2 ';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspCadProdutos.Name;
   cdsCadProdutos.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text := 'Select * From Setores ';

   cdsSetores.Close;
   cdsSetores.ProviderName := dspVariavel.Name;
   cdsSetores.Open;

   srcGrupo.DataSet  := gConexao.BuscarDadosSQL('select * from T_Grupos' ,nil);
   srcGrupo.DataSet  := gConexao.BuscarDadosSQL('select * from T_Grupos' ,nil);
   srcGrande.DataSet := gConexao.BuscarDadosSQL('select ID as Codigo, Descricao from Grade' ,nil);

   AjustarAmbiente;
   // --> Controle de tipo de sistema

   cmbPeriodoChange(cmbPeriodo);

   piCod_Produto := 0;

  DesabilitarTabSheets(self);

end;

procedure TfrmCadProdutos.AjustarAmbiente;
begin
end;

procedure TfrmCadProdutos.btnPesquisaClick(Sender: TObject);
var lsCoringa : String;
    lsWhere : String;
    lsSelect : String;
Begin
   lsCoringa := '';
   if chkPesqTodoTexto.Checked Then
      lsCoringa := '%';
   if cmbPesquisa.ItemIndex = 0 then
      lsWhere := 'Prod.Descricao like :parDescricao'
   else if cmbPesquisa.ItemIndex = 1 then
   begin
      lsWhere := 'Prod.Codigo=:parDescricao';
      lsCoringa := '';
   end
   else if cmbPesquisa.ItemIndex = 2 then
   begin
      lsWhere := 'Prod.CodigoFornecedor=:parDescricao';
      lsCoringa := '';
   end;


   qryCadProdutos.Close;
   qryCadProdutos.SQL.Text := 'Select Gru.Descricao as Nome_Grupo, Fab.Descricao as Nome_Fabricante, Prod.* from T_Produtos Prod '+
                              '       Left Join T_Grupos Gru On '+
                              '            Gru.Codigo = Prod.Cod_Grupo '+
                              '       Left Join T_Fabricantes Fab on ' +
                              '            Fab.Codigo  =  Prod.Cod_Fabricante '+
                              'Where '+lsWhere;
   qryCadProdutos.ParamByName('parDescricao').AsString := lsCoringa+EdtPesquisa.Text+lsCoringa;

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspCadProdutos.Name;
   cdsCadProdutos.Open;

end;

procedure TfrmCadProdutos.cdsCadProdutosBeforeOpen(DataSet: TDataSet);
begin
   CriarCalculado(DataSet,'Nome_TipoProduto',ftString,30);
end;

procedure TfrmCadProdutos.cdsCadProdutosCalcFields(DataSet: TDataSet);
begin
   If pvQualBotao = '' then
   Begin
      Case cdsCadProdutos.FieldByName('Tipo_Produto').Asinteger of
       0 : cdsCadProdutos.FieldByName('Nome_TipoProduto').AsString := 'Produto';
       1 : cdsCadProdutos.FieldByName('Nome_TipoProduto').AsString := 'Serviço';
       2 : cdsCadProdutos.FieldByName('Nome_TipoProduto').AsString := 'Materia Prima';
       3 : cdsCadProdutos.FieldByName('Nome_TipoProduto').AsString := 'Brinde'
      End;
   End;
end;

procedure TfrmCadProdutos.chkMetroLinearClick(Sender: TObject);
begin
  if chkMetroQuadrado.Checked and chkMetroLinear.Checked then
     chkMetroQuadrado.Checked := False;
end;

procedure TfrmCadProdutos.chkMetroQuadradoClick(Sender: TObject);
begin
  if chkMetroQuadrado.Checked and chkMetroLinear.Checked then
     chkMetroLinear.Checked := False;
end;

procedure TfrmCadProdutos.cmbCod_CentroCustoChange(Sender: TObject);
begin
   cmbNome_CentroCusto.KeyValue := cmbCod_CentroCusto.KeyValue;
end;

procedure TfrmCadProdutos.cmbCod_GrupoChange(Sender: TObject);
begin
  cmbNome_grupo.KeyValue := cmbCod_Grupo.KeyValue;
end;

procedure TfrmCadProdutos.cmbNome_CentroCustoChange(Sender: TObject);
begin
   cmbCod_CentroCusto.KeyValue := cmbNome_CentroCusto.KeyValue;
end;

procedure TfrmCadProdutos.cmbNome_GrupoChange(Sender: TObject);
begin
   cmbcod_grupo.KeyValue := cmbNome_Grupo.KeyValue;
end;

procedure TfrmCadProdutos.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue<> null then
      edtCod_Produto.Text := cmbNome_Produto.KeyValue;
end;

procedure TfrmCadProdutos.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmCadProdutos.Configurar1Click(Sender: TObject);
var licont : integer;
begin
   frmConfigTabSheet :=  TfrmConfigTabSheet.Create(Self);
   frmConfigTabSheet.psFormulario := 'FrmCadProdutos';
   frmConfigTabSheet.chkConfiguracao.Columns := 3;
   frmConfigTabSheet.chkConfiguracao.Refresh;
   for liCont := 0 to Self.ComponentCount - 1 do
   begin
      if self.Components[liCont] is Tbsskintabsheet then
         frmConfigTabSheet.chkConfiguracao.Items.add((self.Components[liCont] as Tbsskintabsheet).Caption );
   end;
   frmConfigTabSheet.showModal;

end;

procedure TfrmCadProdutos.ConsultadeAvarias1Click(Sender: TObject);
begin
   frmEstoqueManutencao := TfrmEstoqueManutencao.create(Application);
   frmEstoqueManutencao.PagGeral.activepageindex   := 1;
   frmEstoqueManutencao.TabLancamento.TabVisible   := False;
   frmEstoqueManutencao.tabConsulta.TabVisible     := True;
   frmEstoqueManutencao.tabajustaSaldo.TabVisible  := False;
   frmEstoqueManutencao.ShowModal;
end;

procedure TfrmCadProdutos.edtCod_ProdutoExit(Sender: TObject);
begin
 if Trim(edtCod_produto.text) <> '' Then
   Begin
      cmbNome_Produto.KeyValue :=  edtCod_Produto.Text;
      if trim(cmbNome_Produto.text) = '' Then
      Begin
         CaixaMensagem( 'Produto não encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.Setfocus;
      End;
   End;
end;

procedure TfrmCadProdutos.edtCustoProdutoExit(Sender: TObject);
begin
   Atualizacusto;
end;

procedure TfrmCadProdutos.GridProdutosDblClick(Sender: TObject);
begin
   if frmcadProdutos.Tag=5 Then
   Begin
      piCod_Produto := cdsCadProdutos.FieldByName('Codigo').AsInteger;
      Close;
   End;
end;

procedure TfrmCadProdutos.impMatricialNewPage(Sender: TObject; Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), 1 );
   pviLinha := 06;
   if pvTipo_Rel = 0 then
      TRdPrint( Sender ).imp(pvilinha,001,'E/S Rotina                                  Data      Saida    Entrada   Saldo')
   Else
      TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao                                Unid.               Contagem     ');

   pviLinha:=Pvilinha+1;
   TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
end;

procedure TfrmCadProdutos.Inventariodosprodutos1Click(Sender: TObject);
begin
   frmInventario := TfrmInventario.create(Application);
   frmInventario.ShowModal;
end;

procedure TfrmCadProdutos.LanarAvarias1Click(Sender: TObject);
begin
   frmEstoqueManutencao := TfrmEstoqueManutencao.create(Application);
   frmEstoqueManutencao.PagGeral.activepageindex   := 0;
   frmEstoqueManutencao.TabLancamento.TabVisible   := True;
   frmEstoqueManutencao.tabConsulta.TabVisible     := False;
   frmEstoqueManutencao.tabajustaSaldo.TabVisible  := False;
   frmEstoqueManutencao.ShowModal;
end;

end.
