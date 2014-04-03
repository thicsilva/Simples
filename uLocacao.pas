{
 Status
        1 - Contratado
        2 - Em producao
        3 - Finalizado
        4 - Entregue
        5 - Cancelado
 Situacao
        1 - Pendente
        2 - Entregue
 Tag da venda

    Tag = 5 : lancamento de Material Utilizado do Controle de Assistencia Tecnica
    Tag = 4 : Finalizaçao de OS
    Tag = 3 : Serviço
    Tag = 0 : Vendas normais

}
unit uLocacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, bsdbctrls, EditNew, FMTBcd, SqlExpr,
  SimpleDS, sqltimst, RDprint,uFormBase, uClassVenda,uClassItemvenda,uDaoItemVenda,
  uDaoCustoProduto, dateUtils, frxClass, frxDBSet, RpConDS, RpRave;
const
    SERVICOS = 3;
    VENDAS_EXTERNAS = 2;
    VENDAS_NORMAIS = 0;
    OS_FINALIZADA = 4;
    LANCAMENTO_MATERIAL = 5;
    ATENDIMENTO = 6;
type
  TfrmLocacao = class(TFormBase)
    dspItensVendas: TDataSetProvider;
    cdsCadClientes: TClientDataSet;
    srcCadClientes: TDataSource;
    dspVariavel: TDataSetProvider;
    pnlDadosClientes: TbsSkinPanel;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnExcluir: TbsSkinSpeedButton;
    btnAdicionar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    pnlProdutos: TbsSkinPanel;
    bsSkinBevel6: TbsSkinBevel;
    bsSkinPanel3: TbsSkinPanel;
    edtCod_Produto: TbsSkinEdit;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde_Venda: TbsSkinEdit;
    EdtPco_Venda: TbsSkinEdit;
    edtTotal: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    cdsItensVendas: TClientDataSet;
    srcItensVendas: TDataSource;
    cdsItensVendasTMP: TClientDataSet;
    srcItensVendasTMP: TDataSource;
    cdsItensVendasTMPCodigo: TIntegerField;
    cdsItensVendasTMPDescricao: TStringField;
    cdsItensVendasTMPPco_Venda: TFloatField;
    cdsItensVendasTMPvlr_Total: TFloatField;
    bsSkinScrollBar1: TbsSkinScrollBar;
    cdsItensVendasTMPComplemento: TStringField;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    srcVenda: TDataSource;
    edtVlr_Desconto: TbsSkinEdit;
    cdsItensVendasTMPvlr_Desconto: TFloatField;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtTotPecas: TEditN;
    edtTotalLiquido: TEditN;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    btnCadAlunos: TbsSkinSpeedButton;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    cmbCod_Cliente: TbsSkinDBLookupComboBox;
    edtcod_Cliente: TbsSkinEdit;
    bsSkinStdLabel12: TbsSkinStdLabel;
    btnCadProdutos: TbsSkinSpeedButton;
    cmbCod_formaPagamento: TbsSkinDBLookupComboBox;
    cmbNome_formaPagamento: TbsSkinDBLookupComboBox;
    lblCNPJCPF: TbsSkinStdLabel;
    edtCnpjCpf: TbsSkinEdit;
    bsSkinScrollBar2: TbsSkinScrollBar;
    qryVenda: TSQLQuery;
    qryItensVendas: TSQLQuery;
    qryModific: TSQLQuery;
    QryVariavel: TSQLQuery;
    dbgConsulta: TbsSkinDBGrid;
    cdsCadFormasPagamento: TClientDataSet;
    srcCadFormasPagamento: TDataSource;
    bsSkinStdLabel15: TbsSkinStdLabel;
    cmbCod_Funcionario: TbsSkinDBLookupComboBox;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    srcCadFuncionarios: TDataSource;
    qryPagamento: TSQLQuery;
    dspPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    srcPagamento: TDataSource;
    cdsCadFuncionarios: TClientDataSet;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtDataVenda: TbsSkinDateEdit;
    cmbCNPJCPF: TbsSkinDBLookupComboBox;
    edtCod_FormaPagamento: TbsSkinEdit;
    edtCod_Funcionario: TbsSkinEdit;
    sdtsConsultaCli: TSimpleDataSet;
    btnAlterar: TbsSkinSpeedButton;
    bsSkinBevel7: TbsSkinBevel;
    btnOkProd: TbsSkinSpeedButton;
    btnCancelar: TbsSkinSpeedButton;
    edtLimite_Credito: TEditN;
    cdsTempPagamentos: TClientDataSet;
    cdsTempPagamentosCodigo: TStringField;
    cdsTempPagamentosDescricao: TStringField;
    cdsTempPagamentosValor: TFloatField;
    sdtsPesqPrepagamento: TSimpleDataSet;
    impMatricial: TRDprint;
    edtdata_Vencimento: TbsSkinDateEdit;
    lblVencimento: TbsSkinStdLabel;
    sdtsPesqDescCli: TSimpleDataSet;
    qryItensMateriaPrima: TSQLQuery;
    dspItensMateriaPrima: TDataSetProvider;
    cdsItensMateriaPrima: TClientDataSet;
    srcItensMateriaPrima: TDataSource;
    srcCadFichaTecnica: TDataSource;
    cdsCadFichaTecnica: TClientDataSet;
    sdtsVerSaldos: TSimpleDataSet;
    cdsRotas: TClientDataSet;
    srcRotas: TDataSource;
    edtPco_Tabela: TbsSkinEdit;
    cdsSaldos: TClientDataSet;
    dspSaldos: TDataSetProvider;
    qrySaldos: TSQLQuery;
    cdsItensVendasTMPPco_tabela: TFloatField;
    memoMensagem: TbsSkinMemo;
    cdsItensVendasTMPperc_Comis: TFloatField;
    cdsTipoVenda: TClientDataSet;
    srcTipoVenda: TDataSource;
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinBevel5: TbsSkinBevel;
    cdsItensVendasTMPUnidade: TStringField;
    cdsItensVendasTMPqtdeEmbalagem: TIntegerField;
    cdsItensVendasTMPseqVenda: TIntegerField;
    cdsItensVendasTMPSetorId: TIntegerField;
    btnContrato: TbsSkinSpeedButton;
    cdsItensVendasTMPPesoBruto: TFloatField;
    cdsItensVendasTMPPesoLiquido: TFloatField;
    cdsItensVendasTMPPrecoCusto: TFloatField;
    cdsItensVendasTMPMargemSecundaria: TFloatField;
    cdsItensVendasTMPLucroBruto: TFloatField;
    PanelStatus: TbsSkinStatusPanel;
    bsSkinStdLabel13: TbsSkinStdLabel;
    bsSkinEdit1: TbsSkinEdit;
    edtPrevisaoEntrega: TbsSkinDateEdit;
    lblPrevisao: TbsSkinStdLabel;
    cdsItensVendasTMPDias: TIntegerField;
    cdsItensVendasTMPPrevisao_Entrega: TDateTimeField;
    bsSkinStdLabel7: TbsSkinStdLabel;
    edtPrePagamento: TEditN;
    bsSkinStdLabel14: TbsSkinStdLabel;
    edtValorCaucao: TEditN;
    frxContrato: TfrxReport;
    frxDbEmpresa: TfrxDBDataset;
    cdsEmpresa: TClientDataSet;
    frxDBCliente: TfrxDBDataset;
    dspEmpresa: TDataSetProvider;
    qryEmpresa: TSQLQuery;
    qryCliente: TSQLQuery;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    frxDbItens: TfrxDBDataset;
    cdsClienteCodigo: TIntegerField;
    cdsClienteDescricao: TStringField;
    cdsClienteCNPJCPF: TStringField;
    cdsClienteEndereco: TStringField;
    cdsClienteBairro: TStringField;
    cdsClienteCidade: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteTelefone: TStringField;
    cdsClientecelular: TStringField;
    cdsClienteOperador: TStringField;
    cdsClientecod_emp: TStringField;
    cdsClienteData_Cad: TSQLTimeStampField;
    cdsClienteData_Atu: TSQLTimeStampField;
    cdsClienteLimite_Credito: TFloatField;
    cdsClienteStatus: TStringField;
    cdsClienteativo: TStringField;
    cdsClienteCod_Atividade: TIntegerField;
    cdsClienteCep: TStringField;
    cdsClienteCod_Rota: TIntegerField;
    cdsClienteQtde_PedAberto: TIntegerField;
    cdsClienterazao_Social: TStringField;
    cdsClientePto_Referencia: TStringField;
    cdsClienteFax: TStringField;
    cdsClienteResponsavel: TStringField;
    cdsClienteCod_Funcionario: TIntegerField;
    cdsClientecontrato: TIntegerField;
    cdsClienteInscricaoEstadual: TStringField;
    cdsClienteSequenciaEntrega: TIntegerField;
    cdsClienteEmail: TStringField;
    cdsEmpresaID_Empresa: TIntegerField;
    cdsEmpresaNome_Fantasia: TStringField;
    cdsEmpresaCNPJCPF: TStringField;
    cdsEmpresaEndereco: TStringField;
    cdsEmpresaBairro: TStringField;
    cdsEmpresaCidade: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaTelefone: TStringField;
    cdsEmpresacelular: TStringField;
    cdsEmpresaOperador: TStringField;
    cdsEmpresaData_Cad: TSQLTimeStampField;
    cdsEmpresaData_Atu: TSQLTimeStampField;
    cdsEmpresaLimite_Credito: TFloatField;
    cdsEmpresaStatus: TStringField;
    cdsEmpresaativo: TStringField;
    cdsEmpresaCod_Atividade: TIntegerField;
    cdsEmpresaCep: TStringField;
    cdsEmpresaCod_Rota: TIntegerField;
    cdsEmpresaQtde_PedAberto: TIntegerField;
    cdsEmpresarazao_Social: TStringField;
    cdsEmpresaPto_Referencia: TStringField;
    cdsEmpresaFax: TStringField;
    cdsEmpresaResponsavel: TStringField;
    cdsEmpresacod_Funcionario: TIntegerField;
    cdsEmpresaemail: TStringField;
    cdsEmpresaDiretorGeral: TStringField;
    cdsEmpresaDiretorEncino: TStringField;
    cdsEmpresaDiretorDetran: TStringField;
    cdsEmpresaLiberado: TBooleanField;
    cdsEmpresaDiretorEnsino: TStringField;
    cdsEmpresaNomeDiretor: TStringField;
    cdsEmpresaHomePage: TStringField;
    cdsEmpresaDiretor: TStringField;
    cdsEmpresaLocal: TStringField;
    cdsItensVendasTMPValor_Pagamento: TFloatField;
    edtFormato: TMaskEdit;
    cdsItensVendasTMPqtde_Venda: TIntegerField;
    btnRecibo: TbsSkinSpeedButton;
    cdsClienteEnderecoObra: TStringField;
    edtDiasLocacao: TbsSkinEdit;
    lblDias: TbsSkinStdLabel;
    Tipo: TbsSkinStdLabel;
    cmbTipoCobranca: TComboBox;
    cdsItensVendasTMPTipoCalculo: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure EdtPco_VendaExit(Sender: TObject);
    procedure edtQtde_VendaExit(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edtTotalExit(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure cdsItensVendasTMPAfterOpen(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCadAlunosClick(Sender: TObject);
    procedure edtcod_ClienteExit(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure cmbCod_ClienteChange(Sender: TObject);
    procedure limpacampos();
    procedure cmbCod_formaPagamentoChange(Sender: TObject);
    procedure cmbCod_FuncionarioChange(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure cmbCNPJCPFClick(Sender: TObject);
    procedure btnCadProdutosClick(Sender: TObject);
    procedure edtCod_FormaPagamentoExit(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnOkProdClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtdata_VencimentoExit(Sender: TObject);
    procedure cdsItensVendasTMPBeforeOpen(DataSet: TDataSet);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtPrevisaoEntregaExit(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure edtDiasLocacaoExit(Sender: TObject);
    procedure cmbTipoCobrancaChange(Sender: TObject);

  private
     pvQualBotao      : String;
     pvrvlr_TotalAnt  : Real;
     pviLinha         : Integer;
     pDescontoCliente : Boolean;
     pAnimalId         : Integer;
     procedure MostrarAnimaisCliente;
     procedure VerificarSaldoDevedor(ClienteID : Integer);
     procedure VerLimite();
     procedure AtualizaDesconto(lrPercDesconto : Real);
     procedure TotalizarVenda(lrTotalDesconto: Real);
    function RetornarSelectProdutos: String;
    procedure AtaulizaLucroBruto;
    function RetornarDias : integer;
    function FormatarCNPJ_CPF(lsCnpjCPf: String): String;
    { Private declarations }
  public
     liSeqVendaAtu : Integer;
     liSeqOs       : Integer;
     liCaixa       : Integer;
     liTotalLiquido : Real;
     pAtendimento : Boolean;
     pliCliente : Integer;
     procedure PrepararFinalizacaoOS;
     procedure AtualizaTabelas();
    { Public declarations }
  end;

var
  frmLocacao: TfrmLocacao;

implementation

uses uPrincipal,ufuncoes, uCadClientes, uCadProdutos, uBaixaNormal, DBXCommon, uClassContaCorrente,uClassDaoContaCorrente,
  uCalMQuadrado, DaoRemessa, uDaoVenda, uDaoFuncionario, uDaoClienteAnimal,uDaoCliente,
  uselAnimal, uDescontoVenda, uDelivery;

{$R *.dfm}
procedure TfrmLocacao.AtualizaDesconto(lrPercDesconto: Real);
var lrVlr_desconto : Real;
begin
   cdsItensVendasTmp.First;
   while not cdsItensVendasTmp.Eof do
   begin
      lrVlr_desconto := ( ( cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat *  cdsItensVendasTmp.FieldByname('Qtde_Venda').AsFloat ) * lrPercDesconto )/100;

      cdsItensVendasTmp.Edit;
      cdsItensVendasTmp.FieldByname('Vlr_desconto').AsFloat := Arredondar(( ( cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat ) * lrPercDesconto )/100 ,2);
      cdsItensVendasTmp.FieldByname('Vlr_total').AsFloat    := ( ( cdsItensVendasTmp.FieldByname('Pco_Venda').AsFloat * cdsItensVendasTmp.FieldByname('Qtde_Venda').AsFloat) - lrVlr_desconto );
      cdsItensVendasTmp.Post;
      cdsItensVendasTmp.Next;
   end;
end;

procedure tfrmLocacao.AtualizaTabelas();
var precoDeVenda : string;
Begin

   precoDeVenda:= 'Pco_Venda,PrecoVendaExterna,ValorMes';
   if FrmLocacao.tag = VENDAS_EXTERNAS then
      precoDeVenda:= 'PrecoVendaExterna as Pco_Venda';


   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :=RetornarSelectProdutos+' '+
                          'From T_Produtos '+
                          'where tipo_Produto=:parTipo_Produto ';

   If (FrmLocacao.tag = 5) or ( Uppercase( gParametros.Ler( '', '[CADASTRO]', 'VendeServico', 'NAO' )) = 'SIM') Then
      qryVariavel.SQL.add(' OR tipo_Produto=:parTipo_Produto2 ');
   qryVariavel.SQL.add(' Order by Descricao  ');

   If (FrmLocacao.tag = 3) or (FrmLocacao.tag = 4) Then
      qryVariavel.ParamByName('parTipo_Produto').AsString := '1'
   Else
      qryVariavel.ParamByName('parTipo_Produto').AsString := '0';
   If (FrmLocacao.tag = 5) or ( Uppercase( gParametros.Ler( '', '[CADASTRO]', 'VendeServico', 'NAO' )) = 'SIM') Then
      qryVariavel.ParamByName('parTipo_Produto2').AsString := '1';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;

End;

Function TfrmLocacao.RetornarDias : Integer;
var Dias : Integer;
begin
  Dias := DaysBetween(SoData(edtPrevisaoEntrega.Date), SoData(edtDataVenda.Date));
  if dias <= 0 then
    Dias := 1;
  Result := Dias;
end;

procedure TfrmLocacao.VerificarSaldoDevedor(ClienteID : Integer);
begin

end;

procedure tfrmLocacao.VerLimite();
Begin

   if StrToFloat(edtTotalLiquido.Text)>StrTOfloat(edtLimite_Credito.Text) then
   Begin
      CaixaMensagem( 'O cliente ultrapassou o limite de credito ', ctAviso, [ cbOk ], 0 );
      if Copy(Trim(cdsCadFormasPagamento.FieldByName('Descricao').AsString),1,7)<>'A VISTA' then
         btnok.Enabled          :=False;
      edtTotalLiquido.Color := clred;
   End
   Else
   Begin
      btnok.Enabled         := True;
      edtTotalLiquido.Color := clInfoBk;
   End;
End;

procedure TfrmLocacao.limpacampos();
Begin
   edtcod_Cliente.Text         := '';
   edtTotPecas.Text            := '0,00';
   edtQtde_Venda.Text          := '0';
   edtPco_Venda.Text           := '0,00';
   edtPco_Tabela.Text          := '0,00';
   edtTotal.Text               := '0,00';
   edtVlr_Desconto.Text        := '0,00';
   edtTotalLiquido.Text        := '0,00';
   edtValorCaucao.Text        := '0,00';
   edtCod_Produto.Text         := '';
   edtCnpjCpf.Text             := '';
   edtCod_Funcionario.Text     := '';
   edtCod_FormaPagamento.Text  := '';
   cmbCod_formaPagamento.keyvalue  := null;
   cmbNome_formaPagamento.KeyValue := Null;
   cmbCod_Funcionario.KeyValue     := Null;
   cmbNome_Funcionario.KeyValue    := Null;
   cmbCod_Cliente.KeyValue         := Null;
   edtLimite_Credito.Text          := '0,00';
   cmbNome_Cliente.KeyValue        := Null;
End;
procedure TfrmLocacao.btnFecharClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja abandonar a locação', ctConfirma, [ cbSimNao ], 0 ) Then
      Close;
end;

procedure TfrmLocacao.FormCreate(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,Contrato,'+
                           'Qtde_PedAberto,Limite_Credito,Cod_Rota from T_Clientes '+
                           'where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parativo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspVariavel.Name;
   cdsCadClientes.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoPagamento,TipoLancamento,ImprimeMensagem,Prazo from T_formasPagamento  ';
   qryVariavel.SQL.Add('WHERE TipoLancamento=:parTipoPagamento' );
   QryVariavel.SQL.Add(' Order by Descricao ' );
   qryVariavel.ParamByName('parTipoPagamento').AsInteger := 0;

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,Cod_Supervisor from T_Funcionarios where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parAtivo').AsString := 'S';

   cdsCadFuncionarios.Close;
   cdsCadFuncionarios.ProviderName := dspVariavel.Name;
   cdsCadFuncionarios.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select * from T_ProdutosFichaTecnica order by Cod_Produto ';

   cdsCadFichaTecnica.Close;
   cdsCadFichaTecnica.ProviderName := dspVariavel.Name;
   cdsCadFichaTecnica.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Rotas order by Descricao ';

   cdsRotas.Close;
   cdsRotas.ProviderName := dspVariavel.Name;
   cdsRotas.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_TipoVendas order by Descricao ';

   cdsTipoVenda.Close;
   cdsTipoVenda.ProviderName := dspVariavel.Name;
   cdsTipoVenda.Open;

   liseqos := 0;
   licaixa := 0;
end;

procedure TfrmLocacao.FormShow(Sender: TObject);
begin
   AtualizaTabelas();
   lblVencimento.Visible       := False;
   edtdata_Vencimento.Visible  := False;
   FrmLocacao.Caption          := 'Cadastro de novas locações';
   if RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[VENDA]', 'ExibeVencimento', 'NAO' ))) then
   begin
      lblVencimento.Visible       := True;
      edtdata_Vencimento.Visible  := True;
   end;

   EdtPco_Venda.Enabled := gsPerfilacesso.VerificaAcesso('Movimento','Vendas','Altera Preco de Venda',gbMaster);

   pAnimalId := 0;
   btnAdicionar.Enabled   := False;
   btnCadProdutos.Enabled := False;
   if pAtendimento then
      btnincluirClick(btnincluir);
end;

procedure TfrmLocacao.edtCod_ProdutoExit(Sender: TObject);
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

procedure TfrmLocacao.edtdata_VencimentoExit(Sender: TObject);
begin
   if (edtdata_Vencimento.Date) < (edtDataVenda.Date) then
   Begin
      CaixaMensagem( 'A data de Vencimento não pode ser menor que a da venda ', ctAviso, [ cbOk ], 0 );
      edtdata_Vencimento.Setfocus;
   End;
End;

procedure TfrmLocacao.edtDiasLocacaoExit(Sender: TObject);
begin
  inherited;
   edtPrevisaoEntrega.date := edtDataVenda.date +StrTointDef(edtDiasLocacao.Text,1)
end;

procedure TfrmLocacao.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);
      edtPco_Tabela.Text  := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);
      if (cdsCadProdutos.fieldbyname('M2').asString ='S') or (cdsCadProdutos.fieldbyname('MetroLinear').AsBoolean) then
      Begin
         frmCalMQuadrado := TfrmCalMQuadrado.create(Self);
      if (cdsCadProdutos.fieldbyname('M2').asString ='S') then
          frmCalMQuadrado.tag :=  2;
      if cdsCadProdutos.fieldbyname('MetroLinear').AsBoolean then
          frmCalMQuadrado.tag :=  3;

         frmCalMQuadrado.edtVlrMetro.text := edtPco_venda.Text;
         frmCalMQuadrado.ShowModal;
         if frmCalMQuadrado.Tag = 1 then
         Begin
            edtQtde_Venda.Text := '1';
            EdtPco_Venda.Text  := frmCalMQuadrado.edtTotal.text;
         End;
      End;
      if (( cdsCadProdutos.fieldbyname('Saldo').asInteger <= 0 ) And
         ( ( Uppercase( gParametros.Ler( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' )) = 'SIM') or
           ( cdsCadProdutos.fieldbyname('BloqueiaNegativo').asBoolean) ) AND
         ( (FrmLocacao.Tag= 0 ) OR (FrmLocacao.Tag= 5 ) ) ) And
           (cdsCadProdutos.fieldbyname('Tipo_Produto').asInteger=0) Then
      Begin
         CaixaMensagem( 'Produto Sem Estoque ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.SetFocus;
         exit;
      End;
   End;
end;

procedure TfrmLocacao.cmbTipoCobrancaChange(Sender: TObject);
begin
   edtPrevisaoEntrega.Visible := True;
   edtDiasLocacao.Visible     := True;
   lblDias.Visible            := True;
   lblPrevisao.Visible        := True;
   if cmbTipoCobranca.ItemIndex  = 0 then
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);

   if cmbTipoCobranca.ItemIndex  = 1 then
   begin
      edtPco_venda.Text           := Formatfloat('0.00',cdsCadProdutos.fieldbyname('ValorMes').asFloat);
      edtPrevisaoEntrega.Visible := False;
      edtDiasLocacao.Visible     := False;
      lblDias.Visible            := False;
      lblPrevisao.Visible        := False;
   end;

end;

procedure TfrmLocacao.PrepararFinalizacaoOS;
begin
  FrmLocacao.Caption := 'Finalização de Serviço';
  btnok.Caption := '&Finalizar';
  liTotalLiquido := StrtoFloat(edtTotalLiquido.Text);
  pnlDadosClientes.Enabled := True;
  cmbNome_formaPagamento.Enabled := True;
  edtcod_Cliente.Enabled := False;
  cmbNome_Cliente.Enabled := False;
end;

procedure TfrmLocacao.TotalizarVenda(lrTotalDesconto : Real);
var TotalDesconto : Real;
    Total : Real;
    TotalCaucao : Real;
    lrdiferenca : Real;
    qtdePecas   : Real;
begin
   TotalDesconto := 0;
   Total         := 0;
   qtdePecas     := 0;
   TotalCaucao   := 0;
   cdsItensVendasTmp.First;
   while not cdsItensVendasTmp.Eof do
   begin
      TotalDesconto := TotalDesconto + (cdsItensVendasTmp.FieldByname('Vlr_desconto').AsFloat *  cdsItensVendasTmp.FieldByname('Qtde_Venda').AsFloat );
      Total := Total + (cdsItensVendasTmp.FieldByname('Vlr_total').AsFloat);
      TotalCaucao := TotalCaucao +  cdsItensVendasTmp.FieldByname('Valor_Pagamento').AsFloat;
      qtdePecas := qtdePecas + (cdsItensVendasTmp.FieldByname('Qtde_Venda').AsFloat);
      cdsItensVendasTmp.Next;
   end;
   if (Arredondar(lrTotalDesconto,2) <>  Arredondar(TotalDesconto,2)) then
   begin
      lrdiferenca := (lrTotalDesconto - TotalDesconto);
      cdsItensVendasTmp.Edit;
      cdsItensVendasTmp.FieldByname('Vlr_desconto').AsFloat :=  cdsItensVendasTmp.FieldByname('Vlr_desconto').AsFloat-(lrdiferenca);
      cdsItensVendasTmp.FieldByname('Vlr_total').AsFloat    := ( (cdsItensVendasTmp.FieldByname('Pco_Venda').AsFloat * cdsItensVendasTmp.FieldByname('Qtde_Venda').AsFloat) - cdsItensVendasTmp.FieldByname('Vlr_desconto').AsFloat );
      cdsItensVendasTmp.Post;
   end;

   edtTotPecas.Text   := FormatFloat('0.00', qtdePecas);
   edtTotalLiquido.Text := FormatFloat('0.00', Total );
   edtValorCaucao.Text := FormatFloat('0.00', TotalCaucao );

end;

procedure TfrmLocacao.EdtPco_VendaExit(Sender: TObject);
begin
   EdtPco_Venda.text := SubstString(EdtPco_Venda.text,'.', ',', True );
   EdtPco_Venda.text := formatFloat( '0.00',StrTofloat(EdtPco_Venda.text));
   edtTotal.Text     := Formatfloat( '0.00',StrToFloat(edtQtde_Venda.Text) * ( StrToFloat(EdtPco_Venda.text)- StrToFloat(edtVlr_Desconto.text) ));
  // edtTotal.Text     := Formatfloat( '0.00',StrToFloat(edtTotal.Text) - );
end;

procedure TfrmLocacao.edtPrevisaoEntregaExit(Sender: TObject);
var Dias : integer;
begin
   Dias := RetornarDias;
   edtTotal.Text  := Formatfloat( '0.00',  ( StrToFloat(edtQtde_Venda.Text) *  StrToFloat(EdtPco_Venda.text) ) * Dias );
end;

procedure TfrmLocacao.edtQtde_VendaExit(Sender: TObject);
begin
   edtTotal.Text := Formatfloat ( '0.00',StrToFloat(edtQtde_Venda.Text) * StrToFloat(EdtPco_Venda.text));
   sdtsPesqDescCli.Close;
   sdtsPesqDescCli.DataSet.CommandText := 'Select * from T_ClientesDescontos where Cod_Cliente=:parCod_Cliente and Cod_Produto=:parcod_Produto';
   sdtsPesqDescCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToint(edtcod_Cliente.Text);
   sdtsPesqDescCli.DataSet.ParamByName('parCod_Produto').AsInteger := StrToint(edtCod_Produto.Text);
   sdtsPesqDescCli.Open;
   pDescontoCliente := False;
   if Not sdtsPesqDescCli.IsEmpty then
   Begin
      If sdtsPesqDescCli.FieldByname('Qtde_Minima').asInteger<=StrToint(edtQtde_Venda.text) Then
      Begin
         pDescontoCliente := true;
         EdtPco_Venda.SetFocus;
      End;
   End;
   If ( cdsCadProdutos.FieldByname('Saldo').asInteger<StrToFloat(edtQtde_Venda.text))  And
      ( ( Uppercase( gParametros.Ler( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' )) = 'SIM') OR
      ( cdsCadProdutos.fieldbyname('BloqueiaNegativo').asBoolean) )  AND
      ( (FrmLocacao.Tag= 0 ) OR (FrmLocacao.Tag= 5 ) ) And
      (cdsCadProdutos.fieldbyname('Tipo_Produto').asInteger=0) Then
   Begin
      CaixaMensagem( 'Produto com estoque insuficiente ',ctAviso, [ cbOk ], 0 );
      edtCod_Produto.SetFocus;
      exit;
   End;
end;

procedure TfrmLocacao.btnOkProdClick(Sender: TObject);
var DaoCustoPtoduto : TdaoCustoProduto;
    PrecoCusto : Real;
    lrPerc_Desconto : Real;
    lrDiferenca :Real;
    lrTotalVenda : Real;
begin
   DaoCustoPtoduto := TdaoCustoProduto.Create(gConexao);
   if strtofloat(Edttotal.text ) <=0 Then
   Begin
      CaixaMensagem( 'O Valor Total não pode ser zero ', ctAviso, [ cbOk ], 0 );
      edtCod_Produto.SetFocus;
      Exit;
   End;
   If pvQualBotao = 'Incluir' Then
   Begin
      if cdsItensVendasTmp.Locate('Codigo',IntToStr( StrtoInt ( EdtCod_Produto.Text ) ),[] ) Then
      Begin
         CaixaMensagem( 'Este produto ja foi includo ', ctAviso, [ cbOk ], 0 );
          edtCod_Produto.SetFocus;
         Exit;
      End;
   End;
   If pvQualBotao = 'Incluir' Then
      cdsItensVendasTmp.Append
   Else
   Begin
      cdsItensVendasTmp.Edit;
   End;
   lrPerc_Desconto := 0;
   lrDiferenca     := 0;
   PrecoCusto           := DaoCustoPtoduto.CustoMercadoriaVendida(StrToInt(edtCod_Produto.Text));
   lrDiferenca          := StrToFloat(edtPco_Tabela.Text) - StrToFloat(edtPco_Venda.Text);
   if StrToFloat(edtPco_Tabela.Text)>0 then
      lrPerc_Desconto := Arredondar( ( lrDiferenca / StrToFloat(edtPco_Tabela.Text) * 100),2);
   cdsItensVendasTmp.FieldByName('Perc_Comis').asFloat := cdsCadProdutos.fieldbyname('Perc_Comissao').asFloat;
   if lrPerc_Desconto > StrTofloat( gParametros.Ler( '', '[ADMINISTRATIVO]', 'DescontoMaximo', '0' ))then
      cdsItensVendasTmp.FieldByName('Perc_Comis').asFloat := cdsCadProdutos.fieldbyname('ComissaoSecundaria').asFloat;

   cdsItensVendasTmp.FieldByName('Codigo').asInteger      := StrToInt(edtCod_Produto.Text);
   cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat    := StrToFloat (edtQtde_Venda.Text);
   cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat     := StrToFloat (edtPco_Venda.Text);
   cdsItensVendasTmp.FieldByName('Pco_Tabela').asFloat    := StrToFloat (edtPco_Tabela.Text);
   cdsItensVendasTmp.FieldByName('vlr_Total').asFloat     := StrToFloat ( edtTotal.Text);
   cdsItensVendasTmp.FieldByName('PrecoCusto').asFloat    := cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat;
   cdsItensVendasTmp.FieldByName('LucroBruto').asFloat    := Arredondar((( StrToFloat(edtPco_Venda.Text) - PrecoCusto )/StrToFloat(edtPco_Venda.Text))*100,4);
   cdsItensVendasTmp.FieldByName('MargemSecundaria').asFloat := cdsCadProdutos.fieldbyname('MargemSecundaria').asFloat;
   cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat  := StrToFloat ( edtVlr_Desconto.Text);
   cdsItensVendasTmp.FieldByName('Descricao').asString    := cmbNome_Produto.Text;
   cdsItensVendasTmp.FieldByName('Unidade').asString      := cdsCadProdutos.FieldByName('Unid').AsString;
   cdsItensVendasTmp.FieldByName('QtdeEmbalagem').asString := cdsCadProdutos.FieldByName('QtdeEmbalagem').AsString;
   cdsItensVendasTmp.FieldByName('PesoBruto').asFloat      := StrToFloat(edtQtde_Venda.Text) * cdsCadProdutos.FieldByName('PesoBruto').AsFloat;
   cdsItensVendasTmp.FieldByName('PesoLiquido').asFloat    := StrToFloat(edtQtde_Venda.Text) * cdsCadProdutos.FieldByName('PesoLiquido').AsFloat;
   cdsItensVendasTmp.FieldByName('SeqVenda').asInteger     := 1;
   cdsItensVendasTmp.FieldByName('SetorId').asInteger      := 1;
   cdsItensVendasTmp.FieldByName('Dias').asInteger         := RetornarDias;
   cdsItensVendasTmp.FieldByName('Previsao_Entrega').AsDateTime := SoData(edtPrevisaoEntrega.date);    cdsItensVendasTmp.FieldByName('Valor_Pagamento').AsFloat := (cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat*StrToFloat(edtQtde_Venda.Text));
   if cmbTipoCobranca.ItemIndex = 1 then
      cdsItensVendasTmp.FieldByName('Previsao_Entrega').AsDateTime := SoData(edtDataVenda.date)+30;
   cdsItensVendasTmp.FieldByName('Valor_Pagamento').AsFloat := (cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat*StrToFloat(edtQtde_Venda.Text));
   cdsItensVendasTmp.FieldByName('TipoCalculo').asString    := cmbTipoCobranca.Text;

   if FrmLocacao.Tag=VENDAS_EXTERNAS then
      cdsItensVendasTmp.FieldByName('SetorId').asInteger   := gParametros.Ler( '', '[GERAL]', 'EstoqueVendaExterna', '1' );
   cdsItensVendasTmp.Post;

   lrTotalVenda         := (lrTotalVenda +  StrToFloat(edtTotal.Text));
   edtTotalLiquido.Text := FormatFloat('0.00', Strtofloat( edtTotalLiquido.Text ) + lrTotalVenda);
   edtValorCaucao.Text  := FormatFloat('0.00', Strtofloat( edtValorCaucao.Text ) + (cdsCadProdutos.FieldByName('PrecoVendaExterna').AsFloat*StrToFloat(edtQtde_Venda.Text)));
   edtTotPecas.Text     := FormatFloat('0.00', StrToFloat (edtTotPecas.Text) + StrToFloat (edtQtde_Venda.Text));

   edtCod_Produto.Text := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text  := '0';
   edtPco_Venda.Text   := '0,00';
   edtPco_Tabela.Text  := '0,00';
   edtTotal.Text       := '0,00';
   edtVlr_Desconto.text:= '0,00';
   pvrvlr_TotalAnt     := 0;
   edtCod_Produto.Enabled  := True;
   cmbNome_Produto.Enabled := True;
   btnCadProdutos.Enabled  := True;

   btnOkprod.Enabled        := True;
   btnCancelar.Enabled      := True;
   btnExcluir.Enabled       := True;
   btnAdicionar.Enabled     := False;
   btnAlterar.Enabled       := False;
   VerLimite();
   AtaulizaLucroBruto;
   btnadicionarClick(btnadicionar);
end;
procedure TfrmLocacao.btnReciboClick(Sender: TObject);
Var RvRecibo   : TRvProject;
    edtMascara : TbsSkinEdit;
    sdtsBuscaDados : TsimpleDataSet;
    sdtsBuscaServico : TsimpleDataSet;
    lsTelefone1 : String;
    lsTelefone2 : String;
    lscnpj      : String;
    lsSeparador : String;
    lrTotalPago : Double;
    lrSaldoDevedor : Double;
    lsPagamentos : String;
    dados_Recibo : TRvDataSetConnection;
    lstContrato : TStringList;
    lsProdutos : String;
    lsVirgula : String;
begin
   Try
      sdtsBuscaDados := TsimpleDataSet.create(Application);
      sdtsBuscaDados.Connection := gConexao.conection;
      sdtsBuscaDados.DataSet.CommandText := ' Select * from Empresa ';
      sdtsBuscaDados.Open;

      dados_Recibo := TRvDataSetConnection.Create(Application);
      dados_Recibo.Name :='Dados_Recibo';
      dados_Recibo.dataSet := sdtsBuscaDados;
      RvRecibo := TRvProject.Create(Application);
      rvRecibo.ProjectFile :=gsPath+'Relatorios\recibo.rav';
      rvRecibo.Open;

      edtMascara := TbsSkinEdit.Create(Application);
      edtMascara.EditMask := '##.###.###/####-##;0;_';
      edtMascara.Text :=  sdtsBuscaDados.FieldByName('cnpjcpf').AsString;
      lsCnpj := edtMascara.EditText;

      edtMascara.EditMask :=' (##)####-####;0;_';
      edtMascara.Text :=  sdtsBuscaDados.FieldByName('Telefone').AsString;
      lsTelefone1 := edtMascara.EditText;

      edtMascara.Text :=  sdtsBuscaDados.FieldByName('Fax').AsString;
      lsTelefone2 := edtMascara.EditText;

      rvRecibo.SetParam('Aluno01', cmbNome_Cliente.Text );
      rvRecibo.SetParam('Numero', 'Nº '+ edtcod_Cliente.Text );
      rvRecibo.SetParam('CPF2','C.P.F. '+edtCnpjCpf.Text );


      rvRecibo.SetParam('Empresa', sdtsBuscaDados.FieldByName('Nome_Fantasia').AsString );
      rvRecibo.SetParam('endereco',sdtsBuscaDados.FieldByName('Endereco').AsString+' '+
                                   sdtsBuscaDados.FieldByName('Bairro').AsString+' '+
                                   sdtsBuscaDados.FieldByName('Cidade').AsString+'-'+
                                   sdtsBuscaDados.FieldByName('UF').AsString+' Cep '+sdtsBuscaDados.FieldByName('Cep').AsString );
      rvRecibo.SetParam('CNPJ','C.N.P.J.: '+lsCnpj+' - Telefones '+lsTelefone1+' - '+lsTelefone2 );
      rvRecibo.SetParam('email','E-MAIL.: '+sdtsBuscaDados.FieldByName('Email').AsString);

      sdtsBuscaServico := TsimpleDataSet.create(Application);
      sdtsBuscaServico.Connection := gConexao.conection;
      cdsItensVendasTMP.first;
      while not cdsItensVendasTMP.Eof do
      begin
        lsProdutos := lsProdutos+lsVirgula+cdsItensVendasTMP.fieldByname('Descricao').AsString;
        lsVirgula := ',';
        cdsItensVendasTMP.Next;
      end;
      

      rvRecibo.SetParam('obs','          Recebemos de '+cmbNome_Cliente.text+' CPF/CNPJ '+edtCnpjCpf.Text + ' a importância de R$ '+edtPrePagamento.text+'( '+
                        valorPorExtenso(StrToFloat(edtPrePagamento.text))+' ) '+'referente ao pagamento da locação de '+lsProdutos+' durante o '+
                        'periodo de '+edtDataVenda.Text+' a '+FormatDateTime('dd/mm/yyyy',cdsItensVendasTMP.fieldByName('Previsao_Entrega').AsDateTime)+' '+
                        'pelo que firmo e dou plena quitação' );
                        
      rvRecibo.SetParam('Valor','R$ '+FormatFloat('0.00',StrTofloat(edtPrePagamento.Text)));
      rvRecibo.SetParam('Data','Natal '+FormatDateTime('dd',now)+' de '+FormatDateTime('mmmm',now)+' de '+FormatDateTime('yyyy',now));
      rvRecibo.Execute;
                 

    Finally
      FreeAndNil(RvRecibo);
      FreeAndNil(edtMascara);
      FreeAndNil(sdtsBuscaDados);
      FreeAndNil(edtMascara);
      FreeAndNil(dados_Recibo);
   End;
end;

procedure  TfrmLocacao.AtaulizaLucroBruto;
var PerLucroBruto : real;
    LucroBruto : Real;
    ValorTotal : real;
    CustoTotal : Real;
begin
  cdsItensVendasTmp.first;
  ValorTotal := 0;
  CustoTotal := 0;
  while not cdsItensVendasTmp.eof do
  begin
     ValorTotal := ValorTotal +   cdsItensVendasTmp.FieldByName('vlr_Total').asFloat;
     CustoTotal := CustoTotal + ( cdsItensVendasTmp.FieldByName('PrecoCusto').asFloat * cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat );
     cdsItensVendasTmp.next;
  end;
  PerLucroBruto := 0;
  if ValorTotal>0 then
     PerLucroBruto := ((ValorTotal - CustoTotal)/ ValorTotal)*100;
  LucroBruto := ValorTotal - CustoTotal;
  panelstatus.Caption := ' Lucru Bruto % ..: '+FormatFloat('0.0000', PerLucroBruto)+' | Lucro Bruto R$ ... : '+FormatFloat('0.00', LucroBruto);
end;


procedure TfrmLocacao.btnokClick(Sender: TObject);
Var liSeqvenda     : integer;
    I              : Integer;
    liseqParcela   : Integer;
    liCont         : Integer;
    liqtde_Parcelas: Integer;
    lsPrazo        : String;
    ldPrePagamento : Double;
    lrTot_Produtos : Double;
    lrTot_Desconto : Double;
    vlr_anterior   : Double;
    vlr_Atual      : Double;
    lrVlr_DescProd : Double;
    trdNrTransacao : TDBXTransaction;
    DadosContaCorrente : TContaCorrente;
    GravaContaCorrente : TDaoContaCorrente;
    lsContrato : String;
    DaoRemessa : TDaoRemessa;
    Texto: string;
    F: TextFile;
    loVenda : TVenda;
    DaoVenda: TDaoVenda;
    loItemVenda : TItemVenda;
    DaoItemVenda : TDaoItemVenda;
    DaoFuncionario: TdaoFuncionario;
    liCaixaFinalizado : Integer;
    lbServicoPago : Boolean;
    lrCustoTotal: real;
    ValorPromissoria : Real;
begin

   {$REGION 'Criticas e Validação das Informações'}
   lsContrato := '';
   If cdsItensVendasTMP.IsEmpty Then
   Begin
      CaixaMensagem( 'Venda Sem item digitado ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   If cmbCod_Funcionario.KeyValue = Null Then
   Begin
      CaixaMensagem( 'Informe o funcionario ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   If cmbCod_Funcionario.KeyValue = Null Then
   Begin
      CaixaMensagem( 'Informe a forma de pagamento ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if StrTOFloat(edtPrePagamento.Text) > StrTOFloat(edtTotalLiquido.Text) then
   begin
      CaixaMensagem( 'O Pre-Pagamento não pode ser maior que o valor da locação', ctAviso, [ cbOk ], 0 );
      Exit;
   end;



   sdtsConsultaCli.close;
   sdtsConsultaCli.DataSet.CommandText := 'Select Count(seqvenda) as Qtde, Sum(vlr_areceber) As Total From T_Ctasreceber '+
                                          'where cod_Cliente=:parCod_Cliente and Status=:parStatus';
   sdtsConsultaCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToInt(edtcod_Cliente.Text);
   sdtsConsultaCli.DataSet.ParamByName('parStatus').AsInteger      := 0;
   sdtsConsultaCli.Open;
   cdsCadClientes.Locate('codigo',edtcod_Cliente.Text,[]);
   if cdsCadClientes.FieldByName('Status').AsString = '1' then
   Begin
      CaixaMensagem( 'Este Cliente esta em Cobrança ', ctAviso, [ cbOk ], 0 );
      edtcod_Cliente.SetFocus;
   End;
   if cdsCadClientes.FieldByName('Status').AsString = '2' then
   Begin
      CaixaMensagem( 'Este Cliente foi bloqueado para venda/serviço ', ctAviso, [ cbOk ], 0 );
      edtcod_Cliente.SetFocus;
   End;
   edtLimite_Credito.Text := FormatFloat('0.00',(cdsCadClientes.FieldByName('Limite_Credito').AsFloat-sdtsConsultaCli.FieldByName('Total').AsFloat));

    VerLimite();

   if (sdtsConsultaCli.FieldByName('Qtde').AsInteger>=cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger) and ( FrmLocacao.Tag <> 4 ) then
   begin
      CaixaMensagem( 'O cliente possui '+sdtsConsultaCli.FieldByName('Qtde').asString+' pedidos em aberto !', ctAviso, [ cbOk ], 0 );
      Try
         edtcod_Cliente.SetFocus;
      Except

      End;

      exit;
   end;
{$ENDREGION}

   lrVlr_DescProd := 0;
   if not frmPrincipal.dbxPrincipal.InTransaction then
      //trdNrTransacao := frmPrincipal.dbxPrincipal.BeginTransaction;

   {$REGION 'Gravando os Itens da Venda'}

   qryItensVendas.Close;
   qryItensVendas.SQL.Text :='Select * from T_ItensVendas where 1=2';

   If FrmLocacao.tag = 4 then
   Begin
      qryModific.Close;
      qryModific.SQL.Text :='Delete from T_ItensVendas Where SeqVenda=:parSeqVenda ';
      qryModific.ParamByName('parSeqVenda').AsInteger := liSeqVendaAtu ;
      qryModific.ExecSql;
      liSeqvenda := liSeqVendaAtu;
   End
   Else
      liSeqvenda := StrToInt(Sequencia('SeqVenda',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));

   cdsItensVendas.Close;
   cdsItensVendas.ProviderName := dspItensVendas.Name;
   cdsItensVendas.Open;

   cdsItensVendasTMP.First;
   while not cdsItensVendasTMP.Eof Do
   Begin

      {$REGION 'Controle de Saldo de estoque (Valor)'}

      if cdsItensVendasTmp.FieldByName('Pco_Tabela').asFloat > (cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat-cdsItensVendasTmp.FieldByName('Vlr_Desconto').asFloat ) then
      Begin
         vlr_anterior := ( cdsItensVendasTmp.FieldByName('Pco_Tabela').asFloat * cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat ) ;
         vlr_Atual   := ( (cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat-cdsItensVendasTmp.FieldByName('Vlr_Desconto').asFloat ) * cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat ) ;
         try
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
            cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsItensVendasTmp.FieldByName('Codigo').asInteger;
            cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Anterior-vlr_Atual);
            cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
            cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
            cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
            cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
            cdsSaldos.FieldByName('Historico').AsString    := 'Baixa de Preço de venda de '+FormatFloat('0.00',cdsItensVendasTmp.FieldByName('Pco_Tabela').asFloat)+ ' Para '+FormatFloat(',0.00',cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat-cdsItensVendasTmp.FieldByName('Vlr_Desconto').asFloat);
            cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'DESCONTOS CONCEDIDOS';
            cdsSaldos.Post;
            cdsSaldos.ApplyUpdates(-1);
         except
            on E: Exception do
            Begin
               //frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
               CaixaMensagem( 'Um erro Aconteceu " '+E.Message+'"', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;
      End;
{$ENDREGION}

      lrVlr_DescProd  := lrVlr_DescProd  + cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat;
      cdsItensVendasTMP.Next;
   End;



{$ENDREGION}

   {$REGION 'Gravando Registro da venda'}

   qryVenda.Close;
   qryVenda.Params.Clear;
   qryVenda.SQL.Text :='Select * from T_Vendas where 1=2';

   If FrmLocacao.tag = 4 then
   Begin
      qryVenda.Close;
      qryVenda.SQL.Text :='Select * from T_Vendas Where SeqVenda=:parSeqVenda ';
      qryVenda.ParamByName('parSeqVenda').AsInteger := liSeqVendaAtu ;
   End;


   cdsVenda.Close;
   cdsVenda.ProviderName := dspVenda.Name;
   cdsVenda.Open;

   If FrmLocacao.tag = OS_FINALIZADA then
      liCaixaFinalizado := cdsVenda.FieldByname('Cod_Caixa').Asinteger;

   If FrmLocacao.tag = 4 then
      cdsVenda.Edit
   else
      cdsVenda.Append;

   cdsVenda.FieldByname('SeqVenda').Asinteger        := liSeqvenda;
   cdsVenda.FieldByname('Cod_Cliente').Asinteger     := StrToInt(cmbCod_Cliente.KeyValue);
   cdsVenda.FieldByname('Cod_Funcionario').Asinteger := StrToInt(cmbCod_Funcionario.KeyValue);
   cdsVenda.FieldByname('Cod_FormaPagamento').Asinteger := 1;
   if cmbCod_formaPagamento.KeyValue <> null then
      cdsVenda.FieldByname('Cod_FormaPagamento').Asinteger := StrToInt(cmbCod_formaPagamento.KeyValue);
   cdsVenda.FieldByname('Vlr_Total').AsFloat         := (StrToFloat( edtTotalLiquido.Text ));
   cdsVenda.FieldByname('CustoTotal').AsFloat        := lrCustoTotal;
   cdsVenda.FieldByname('LucroBruto').AsFloat        := ((( cdsVenda.FieldByname('Vlr_Total').AsFloat - lrCustoTotal ) / cdsVenda.FieldByname('Vlr_Total').AsFloat)*100);
   cdsVenda.FieldByname('Vlr_Desconto').AsFloat      := 0;
   cdsVenda.FieldByname('Status').AsString           := '1';
   cdsVenda.FieldByname('Operador').AsString         := gsOperador;
   cdsVenda.FieldByname('Cod_Emp').AsString          := gsCod_emp;
   cdsVenda.FieldByName('Data_Mov').asDateTime       := gsData_Mov;
   cdsVenda.FieldByName('Data_venda').asDateTime     := edtDataVenda.Date;

   If FrmLocacao.tag <> 4 then
      cdsVenda.FieldByName('Data_Cad').asDateTime    := now;
   cdsVenda.FieldByname('Vlr_DescProd').AsFloat      := lrVlr_DescProd;
   cdsVenda.FieldByname('Controle').AsString         := '0';
   cdsVenda.FieldByname('Tipo_Venda').AsString       := 'P';
   cdsVenda.FieldByName('Nome_Cliente').asString     := cmbNome_Cliente.Text;
   cdsVenda.FieldByname('PagouSinal').AsBoolean      := True;
   if liseqOs <> 0 then
      cdsVenda.FieldByname('SeqOs').AsInteger        := liseqos;
   If FrmLocacao.tag = 4 then
      cdsVenda.FieldByname('Etiqueta').AsInteger     := 1;
   If FrmLocacao.tag = SERVICOS then
   Begin
      cdsVenda.FieldByname('Tipo_Venda').AsString    := 'S';
      cdsVenda.FieldByname('PagouSinal').AsBoolean   := False;
      cdsVenda.FieldByName('Cod_caixa').asInteger    := 1;
      if licaixa<>0 then
         cdsVenda.FieldByname('Cod_Caixa').AsInteger := licaixa;
   End;
   cdsVenda.FieldByname('AnimalID').AsInteger        := pAnimalId;
   cdsVenda.Post;

   Try
      cdsVenda.ApplyUpdates(-1);
  except on E: Exception do
  begin
      //frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
      CaixaMensagem( 'Não foi possivel gravar a venda '+e.Message, ctAviso, [ cbOk ], 0 );
      Exit;
  end;
   End;
{$ENDREGION}

   {$REGION 'Item da Venda'}

   loItemVenda := TItemVenda.Create;
   loItemVenda.Operador := gsOperador;
   loItemVenda.DataMovimento := edtDataVenda.Date;
   loItemVenda.CodigoEmpresa := StrTOInt(gsCod_Emp);
   loItemVenda.VendaID := liSeqvenda;
   DaoItemVenda := TdaoItemVenda.Create(gConexao);
   DaoItemVenda.Connection := frmPrincipal.dbxPrincipal;
   DaoItemVenda.Inserir(cdsItensVendasTMP,loItemVenda);

   lbServicoPago := False;

{$ENDREGION}

   {$REGION 'Lancamento do Financeiro'}

    if StrTOFloat(edtPrePagamento.Text) > 0 then
    Begin
      qryModific.Close;
      qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento,Data_Cad,PrePagamento ) Values '+
                             '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                             '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento,:parData_Cad,:parPrePagamento ) ';
      qryModific.ParamByName('parCod_Caixa').AsInteger            := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
      qryModific.ParamByName('parValor').asFloat                  := StrTOFloat(edtPrePagamento.Text);
      qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Pre-Pagamento Venda nº '+IntToStr(liSeqvenda);
      qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(gsData_Mov);
      qryModific.ParamByName('parData_Cad').AsSqlTimeStamp        := datetimeToSqlTimeStamp(now);
      qryModific.ParamByName('parPrePagamento').asString          := 'S';
      qryModific.ParamByName('parD_C').AsString                   := 'C';
      qryModific.ParamByName('parSeqVenda').asInteger             :=  liSeqvenda;
      qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
      qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
      qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := strToInt(edtCod_FormaPagamento.Text);
      qryModific.ExecSQL;
    End;

   {
   Try
      if ( (FrmLocacao.Tag<>3) and ( FrmLocacao.Tag<>5 ) ) then // So Entra nesta rotina se for Venda oi finalização de OS
      Begin
         ldPrepagamento := 0;
         // --> Verifica se teve prepagamento da  OS
         if FrmLocacao.tag=4 then
         Begin
            sdtsPesqPrepagamento.Close;
            sdtsPesqPrepagamento.Params.Clear;
            sdtsPesqPrepagamento.DataSet.CommandText := 'Select sum(Valor) as Total from t_Movcaixa '+
                                                        'Where PrePagamento=:parPrePagamento and Seqvenda=:parSeqVenda ';
            sdtsPesqPrepagamento.DataSet.ParamByName('parPrePagamento').AsString  := 'S';
            sdtsPesqPrepagamento.DataSet.ParamByName('parSeqvenda').AsInteger     :=  liSeqVendaAtu;
            sdtsPesqPrepagamento.Open;
            ldPrepagamento := sdtsPesqPrepagamento.fieldByName('Total').AsFloat;
         End;
         // <-- Verifica se teve prepagamento da  OS

         QryPagamento.Close;
         qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';

         cdsPagamento.Close;
         cdsPagamento.ProviderName := dspPagamento.name;
         cdsPagamento.Open;

         lsPrazo         := '0';
         liseqParcela    := 1;
         if Arredondar(ldPrepagamento,2)<arredondar(StrToFloat(edtTotalLiquido.text),2) then
         Begin
            Case cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger Of
               0,1,2 : // 0 - Lancamento no Caixa  1 - Lancamento no contas a recber 2 - Lancamento no conta Corrente
               Begin
                  liqtde_Parcelas := 1;
                  for I := 1 to Length(Trim(cdsCadFormasPagamento.fieldByName('Prazo').AsString)) do
                  Begin
                     if copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)= '/' then
                       liqtde_Parcelas := liqtde_Parcelas + 1;
                  End;

                  If (edtdata_Vencimento.Visible) OR ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 0 )
                     OR ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 2 ) then  // se for Vencimento informado so é uma parcela
                     liqtde_Parcelas := 1;

                  for I := 1 to Length(Trim(cdsCadFormasPagamento.fieldByName('Prazo').AsString)) do
                  Begin
                     if copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)<>'/' then
                       lsPrazo := lsPrazo + copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)
                     Else
                     Begin
                        cdsPagamento.Append;
                        cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
                        cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := (StrToFloat( edtTotalLiquido.Text )-ldPrePagamento)/liqtde_Parcelas;
                        cdsPagamento.FieldByName('Vlr_Recebido').AsFloat          := (ldPrePagamento/liqtde_Parcelas);
                        cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (StrToFloat( edtTotalLiquido.Text )-ldPrePagamento)/liqtde_Parcelas;
                        cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(edtDataVenda.Date+strtoint(lsPrazo));
                        If edtdata_Vencimento.Visible then
                           cdsPagamento.FieldByName('Data_Vencimento').AsDateTime := SoData(edtdata_Vencimento.Date);
                        cdsPagamento.FieldByName('Data_cad').AsDateTime           := (now);
                        cdsPagamento.FieldByName('Data_Emissao').AsDateTime       := Sodata(edtDataVenda.Date);
                        cdsPagamento.FieldByName('Historico').AsString            := 'Titulo Referente a venda '+IntToStr(liSeqvenda);
                        cdsPagamento.FieldByName('Cod_Cliente').AsInteger         := StrToInt(cmbCod_Cliente.KeyValue);
                        cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger  := StrToInt(cmbCod_formaPagamento.KeyValue);
                        cdsPagamento.FieldByName('SeqVenda').AsInteger            := liSeqvenda;
                        cdsPagamento.FieldByname('Cod_Emp').AsString              := gsCod_emp;
                        cdsPagamento.FieldByname('Tipo_Baixa').AsString           := 'AB';
                        cdsPagamento.FieldByname('Operador').AsString             := gsOperador;
                        cdsPagamento.FieldByname('Documento').AsString            := inczero(intToStr(liSeqvenda),8)+incZero(intToStr(liseqParcela),3);
                        cdsPagamento.FieldByName('Status').AsInteger              := 0;
                        cdsPagamento.FieldByname('Repasse').AsString              := 'N';
                        cdsPagamento.FieldByname('Cod_Caixa').AsInteger           := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
                        if FrmLocacao.Tag = VENDAS_EXTERNAS then
                           cdsPagamento.FieldByname('Cod_Caixa').AsInteger        := gParametros.Ler( '', '[GERAL]', 'CaixaVendasExternas', '0001' );
                        if (FrmLocacao.Tag = SERVICOS )  then
                           cdsPagamento.FieldByname('Cod_Caixa').AsInteger        := 1;
                        if licaixa<>0 then
                           cdsPagamento.FieldByname('Cod_Caixa').AsInteger        := licaixa;
                        if (FrmLocacao.Tag = OS_FINALIZADA ) then
                           cdsPagamento.FieldByname('Cod_Caixa').AsInteger        := liCaixaFinalizado;

                        cdsPagamento.Post;
                        cdsPagamento.ApplyUpdates(-1);
                        lsPrazo :='';
                        liseqParcela := liseqParcela+1;
                     End;
                  End;
                  if Trim(lsPrazo)<>'' then
                  Begin
                     cdsPagamento.Append;
                     cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
                     cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := (StrToFloat( edtTotalLiquido.Text )-ldPrePagamento)/liqtde_Parcelas;
                     cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (StrToFloat( edtTotalLiquido.Text )-ldPrePagamento)/liqtde_Parcelas;
                     cdsPagamento.FieldByName('Vlr_Recebido').AsFloat          := (ldPrePagamento/liqtde_Parcelas);
                     cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(edtDataVenda.Date+strtoint(lsPrazo));
                     If edtdata_Vencimento.Visible then
                        cdsPagamento.FieldByName('Data_Vencimento').AsDateTime := SoData(edtdata_Vencimento.Date);
                     cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
                     cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := Sodata(edtDataVenda.Date);
                     cdsPagamento.FieldByName('Historico').AsString           := 'Titulo Referente a venda '+IntToStr(liSeqvenda);
                     cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := StrToInt(cmbCod_Cliente.KeyValue);
                     cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger := StrToInt(cmbCod_formaPagamento.KeyValue);
                     cdsPagamento.FieldByName('SeqVenda').AsInteger           := liSeqvenda;
                     cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
                     cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
                     cdsPagamento.FieldByname('Documento').AsString           := inczero(intToStr(liSeqvenda),8)+incZero(intToStr(liseqParcela),3);
                     cdsPagamento.FieldByName('Status').AsInteger             := 0;
                     cdsPagamento.FieldByname('Repasse').AsString             := 'N';
                     cdsPagamento.FieldByname('Tipo_Baixa').AsString          := 'AB';
                     If ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 0 ) OR
                        ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 2 ) then  // se for Vencimento informado so é uma parcela
                     Begin
                        cdsPagamento.FieldByName('Status').AsInteger          := 1;
                        cdsPagamento.FieldByName('Historico').AsString        := 'Pagamento A vista';
                        cdsPagamento.FieldByName('Vlr_Recebido').AsFloat      := (StrToFloat( edtTotalLiquido.Text )-ldPrePagamento)/liqtde_Parcelas;
                        cdsPagamento.FieldByName('Data_Pagamento').AsDateTime := Sodata(edtDataVenda.Date);
                        cdsPagamento.FieldByname('Tipo_Baixa').AsString       := 'PT';
                        If ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 2 ) Then
                        Begin
                           cdsPagamento.FieldByName('Historico').AsString        := 'Debitado em Conta Corrente';
                           cdsPagamento.FieldByname('Tipo_Baixa').AsString       := 'DC';
                        End;
                     End;
                     cdsPagamento.FieldByname('Cod_Caixa').AsInteger       := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
                     if FrmLocacao.Tag = VENDAS_EXTERNAS then
                        cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := gParametros.Ler( '', '[GERAL]', 'CaixaVendasExternas', '0001' );
                     if (FrmLocacao.Tag = SERVICOS ) then
                         cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := 1;
                     if licaixa<>0 then
                         cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := licaixa;
                     if (FrmLocacao.Tag = OS_FINALIZADA ) then
                         cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := liCaixaFinalizado;
                     cdsPagamento.Post;
                     cdsPagamento.ApplyUpdates(-1);
                  End;
               End;
            End;
         End
         Else
         Begin
            cdsPagamento.Append;
            cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
            cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := ldPrePagamento;
            cdsPagamento.FieldByName('Vlr_Recebido').AsFloat          := ldPrePagamento;
            cdsPagamento.FieldByName('Vlr_Original').AsFloat          := ldPrePagamento;
            cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(edtDataVenda.Date+strtoint(lsPrazo));
            If edtdata_Vencimento.Visible then
               cdsPagamento.FieldByName('Data_Vencimento').AsDateTime := SoData(edtdata_Vencimento.Date);
            cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
            cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := Sodata(edtDataVenda.Date);
            cdsPagamento.FieldByName('Historico').AsString           := 'Quitação por pre-pagamento';
            cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := StrToInt(cmbCod_Cliente.KeyValue);
            cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger := StrToInt(cmbCod_formaPagamento.KeyValue);
            cdsPagamento.FieldByName('SeqVenda').AsInteger           := liSeqvenda;
            cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
            cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
            cdsPagamento.FieldByname('Documento').AsString           := inczero(intToStr(liSeqvenda),8)+incZero(intToStr(liseqParcela),3);
            cdsPagamento.FieldByName('Status').AsInteger             := 1;
            cdsPagamento.FieldByname('Repasse').AsString             := 'N';
            cdsPagamento.FieldByname('Cod_Caixa').AsInteger       := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
            if FrmLocacao.Tag = VENDAS_EXTERNAS then
               cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := gParametros.Ler( '', '[GERAL]', 'CaixaVendasExternas', '0001' );
            if (FrmLocacao.Tag = SERVICOS )  then
               cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := 1;
            if licaixa<>0 then
                cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := licaixa;
            if (FrmLocacao.Tag = OS_FINALIZADA ) then
                cdsPagamento.FieldByname('Cod_Caixa').AsInteger    := liCaixaFinalizado;
            cdsPagamento.Post;
            cdsPagamento.ApplyUpdates(-1);
         End;
         Case cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger Of
            0 : // Lancamento no caixa
            Begin
               qryModific.Close;
               qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento,Data_Cad ) Values '+
                                      '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                      '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento,:parData_Cad ) ';
               qryModific.ParamByName('parCod_Caixa').AsInteger            := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
               if FrmLocacao.Tag = VENDAS_EXTERNAS then
                  qryModific.ParamByName('parCod_Caixa').AsInteger         := gParametros.Ler( '', '[GERAL]', 'CaixaVendasExternas', '0001' );
               if (FrmLocacao.Tag = SERVICOS ) and  (FrmLocacao.Tag = OS_FINALIZADA )  then
                  qryModific.ParamByName('parCod_Caixa').AsInteger         := 1;
               qryModific.ParamByName('parValor').asFloat                  := (StrTOFloat(edtTotalLiquido.Text)-ldPrePagamento);
               qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Venda A vista nº '+IntToStr(liSeqvenda);
               qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(gsData_Mov);
               qryModific.ParamByName('parData_Cad').AsSqlTimeStamp        := datetimeToSqlTimeStamp(now);
               qryModific.ParamByName('parD_C').AsString                   := 'C';
               qryModific.ParamByName('parSeqVenda').asInteger             :=  liSeqvenda;
               qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
               qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
               qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := strToInt(edtCod_FormaPagamento.Text);
               qryModific.ExecSQL;
               lbServicoPago := True;
            End;
            2 :
            Begin
               DadosContaCorrente := TContaCorrente.Create;
               GravaContaCorrente := TDaoContaCorrente.Create;
               DadosContaCorrente.D_C         := 'D';
               DadosContaCorrente.Valor       := (StrTOFloat(edtTotalLiquido.Text)-ldPrePagamento);
               DadosContaCorrente.Cod_Cliente := StrToInt(cmbCod_Cliente.KeyValue);
               DadosContaCorrente.Historico   := 'Debito referente a Venda nº '+IntToStr(liSeqvenda);
               DadosContaCorrente.Documento   := liSeqvenda;
               IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
               Begin
                  CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
                  frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
                  Exit;
               End;
            End;
         End;
      End;
   except
      on E: Exception do
      Begin
         frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
         CaixaMensagem( 'Um erro Aconteceu " '+E.Message+'"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;
   }
{$ENDREGION}

   {$REGION 'Efetuando Registro de Materia Prima'}

   if (FrmLocacao.tag = 4) or (FrmLocacao.tag = 5) or (FrmLocacao.tag = 0)then
   Begin
      qryItensMateriaPrima.Close;
      qryItensMateriaPrima.Params.Clear;
      qryItensMateriaPrima.SQL.Text :='Select * from T_ItensMateriaPrima where 1=2';

      cdsItensMateriaPrima.Close;
      cdsItensMateriaPrima.ProviderName := dspItensMateriaPrima.Name;
      cdsItensMateriaPrima.Open;

      cdsItensVendasTMP.First;
      while not cdsItensVendasTMP.Eof Do
      Begin
         Try
            If cdsCadFichaTecnica.Locate('Cod_Produto',cdsItensVendasTmp.FieldByName('Codigo').asInteger,[]) Then
            Begin
               while (cdsItensVendasTmp.FieldByName('Codigo').asInteger=cdsCadFichaTecnica.FieldByName('Cod_Produto').AsInteger) And (Not cdsCadFichaTecnica.Eof) do
               Begin
                  cdsItensMateriaPrima.Append;
                  cdsItensMateriaPrima.FieldByName('Cod_MateriaPrima').asInteger  := cdsCadFichaTecnica.FieldByName('Cod_MateriaPrima').asInteger;
                  cdsItensMateriaPrima.FieldByName('Qtde_Utilizada').asFloat     := cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat*cdsCadFichaTecnica.FieldByName('Qtde').asFloat;
                  cdsItensMateriaPrima.FieldByName('Pco_Custo').asFloat          := cdsCadFichaTecnica.FieldByName('Pco_Custo').asFloat;
                  cdsItensMateriaPrima.FieldByName('Custo_Total').asFloat        := ( cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat*cdsCadFichaTecnica.FieldByName('Qtde').asFloat)*cdsCadFichaTecnica.FieldByName('Pco_Custo').asFloat;

                  cdsItensMateriaPrima.FieldByName('Cod_Produto').asInteger  := cdsItensVendasTmp.FieldByName('Codigo').asInteger;
                  cdsItensMateriaPrima.FieldByName('Qtde_Venda').asFloat     := cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat;
                  cdsItensMateriaPrima.FieldByName('Pco_Venda').asFloat      := cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat;
                  cdsItensMateriaPrima.FieldByName('vlr_Total').asFloat      := cdsItensVendasTmp.FieldByName('vlr_Total').asFloat;
                  cdsItensMateriaPrima.FieldByName('Operador').asString      := gsOperador;
                  cdsItensMateriaPrima.FieldByName('Data_Cad').asDateTime    := now;
                  cdsItensMateriaPrima.FieldByName('Data_Mov').asDateTime    := gsdata_Mov;
                  cdsItensMateriaPrima.FieldByName('Complemento').asString   := '';
                  cdsItensMateriaPrima.FieldByName('Cod_emp').asString       := gsCod_Emp;
                  cdsItensMateriaPrima.FieldByName('SeqVenda').asInteger     := liSeqvenda;
                  cdsItensMateriaPrima.Post;
                  cdsItensMateriaPrima.ApplyUpdates(-1);

                  cdsCadFichaTecnica.Next;
               End;
            End;
         except
            on E: Exception do
            Begin
               //frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
               CaixaMensagem( 'Um erro Aconteceu " '+E.Message+'"', ctErro, [ cbOk ], 0 );
               Exit;
            End;
         End;
         cdsItensVendasTMP.Next;
      End;
   End;
   {$ENDREGION}

   {$REGION 'Atualiza Rota informada'}

   if Trim(lsContrato)<>'' then
   Begin
      qryModific.Close;
      qryModific.Sql.text                             := 'Update T_Clientes Set Contrato=:parContrato where Codigo=:parCodigo ';
      qryModific.ParamByName('parContrato').asString := lsContrato;
      qryModific.ParamByName('parCodigo').AsInteger   := StrToInt(edtcod_Cliente.Text);
      qryModific.ExecSQL;
   End;

{$ENDREGION}

   {$REGION 'Atualizando Valor Total da Ordem de Servico'}
   if liseqOs <> 0 then
   Begin
      qryModific.Close;
      qryModific.Params.Clear;
      qryModific.Sql.text  := 'Update T_OrdemServico Set Vlr_Os = vlr_Os + :parVlr_Os '+
                              'where SeqOs=:parSeqOs ';
      qryModific.ParamByName('parVlr_Os').asFloat  := StrToFloat( edtTotalLiquido.Text );
      qryModific.ParamByName('parSeqOs').AsInteger := liseqOs ;
      qryModific.ExecSQL;
   End;
{$ENDREGION}

   //frmPrincipal.dbxPrincipal.CommitFreeAndNil( trdNrTransacao );

   {$REGION 'Impressao do comprovante de Venda'}
   IF ( RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteVenda','0',gsOperador )) and
       (FrmLocacao.Tag=VENDAS_NORMAIS) Or (FrmLocacao.Tag=VENDAS_EXTERNAS) ) Or
      ( RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteServico','0',gsOperador )) and
       (FrmLocacao.Tag=SERVICOS) )  Then
   Begin

      DaoVenda := TDaoVenda.Create(gConexao);
      loVenda  := DaoVenda.CarregarVenda(cdsVenda);
      DaoFuncionario    := TDaoFuncionario.Create(gConexao);
      lovenda.Funcionario := Daofuncionario.Buscar(cdsVenda.FieldByName('Cod_Funcionario').AsInteger);
      lovenda.Empresa := gEmpresa;
      loVenda.VendaID := 1;
      loVenda.Imprimir(cdsVenda,cdsItensVendasTMP,
                       gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),0,
                       StrToint(gsParametros.ReadString('IMPRESSAO', 'TipoImpressora', '0')));
      FreeAndNil(DaoVenda);
      FreeAndNil(lovenda);
   End;
   DaoVenda := TDaoVenda.Create(gConexao);
   if Formatfloat('0.00',liTotalLiquido)<>FormatFloat('0.00',StrTofloat(edtTotalLiquido.Text)) then
      DaoVenda.MarcarComoNaoServicoPago(liSeqvenda);

   if lbServicoPago then
      DaoVenda.MarcarComoServicoPago(liSeqvenda);
   FreeAndNil(DaoVenda);

{$ENDREGION}

   {$REGION 'Mensagem Final ao Usuario'}

   If FrmLocacao.tag = SERVICOS then
      CaixaMensagem( 'Serviço Numero  '+IntToStr(liSeqvenda), ctAviso, [ cbOk ], 0 )
   else if FrmLocacao.tag = OS_FINALIZADA then
   Begin
      CaixaMensagem( 'Serviço Finalizado', ctAviso, [ cbOk ], 0 );
      Close;
   End
   Else
     CaixaMensagem( 'Venda Numero  '+IntToStr(liSeqvenda), ctAviso, [ cbOk ], 0 );

{$ENDREGION}

   BtnCancelaClick(BtnCancela);
end;

procedure TfrmLocacao.edtTotalExit(Sender: TObject);
begin
   btnOkProdClick(btnOkProd);
end;

procedure TfrmLocacao.btnincluirClick(Sender: TObject);
begin
   btnok.Enabled            := True;
   BtnCancela.Enabled       := True;
   btnincluir.Enabled       := False;
   btnAdicionar.Enabled     := False;
   btnExcluir.Enabled       := False;
   btnAlterar.Enabled       := False;
   btnOk.Enabled            := True;
   pnlProdutos.Enabled      := True;
   pnlDadosClientes.Enabled := True;
   btnCadProdutos.Enabled   := True;
   edtPrevisaoEntrega.Date  := gsdata_Mov+1;
   edtDiasLocacao.text      := '1';

   AtualizaTabelas;
   btnadicionarClick(btnadicionar);

   LimpaCampos();

   edtDataVenda.Date        := gsdata_Mov;
   If ( FrmLocacao.tag <> OS_FINALIZADA ) then
   Begin
      Try
         If edtdata_Vencimento.Visible then
            edtdata_Vencimento.SetFocus
         else
            edtcod_Cliente.SetFocus;
      except
      End;
   End;
   if pAtendimento then
   begin
      edtcod_Cliente.text := intToStr(pliCliente);
      edtcod_ClienteExit(edtcod_Cliente);
   end;


end;

procedure TfrmLocacao.BtnCancelaClick(Sender: TObject);
begin

   btnAdicionar.Enabled  := False;
   btnExcluir.Enabled    := False;
   pnlProdutos.Enabled   := False;
   pnlDadosClientes.Enabled := False;
   cdsItensVendasTMP.EmptyDataSet;
   btnCadProdutos.Enabled   := False;

   btnok.Enabled         := False;
   BtnCancela.Enabled    := False;
   btnincluir.Enabled    := True;

   LimpaCampos();
   if (FrmLocacao.tag = 4) or (FrmLocacao.tag = 5) then
      Close;

end;

procedure TfrmLocacao.cdsItensVendasTMPAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmLocacao.cdsItensVendasTMPBeforeOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmLocacao.btnCancelarClick(Sender: TObject);
begin

   edtCod_Produto.Text := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text  := '0';
   edtPco_Venda.Text   := '0,00';
   edtTotal.Text       := '0,00';
   edtVlr_Desconto.text:= '0,00';

   edtCod_Produto.Enabled  := True;
   cmbNome_Produto.Enabled := True;
   btnCadProdutos.Enabled  := True;


   btnAdicionar.Enabled     := True;
   btnExcluir.Enabled       := True;
   btnAlterar.Enabled       := True;
   btnOkProd.Enabled        := False;
   btnCancelar.Enabled      := False;;

end;

procedure TfrmLocacao.btnContratoClick(Sender: TObject);
begin
  cdsCliente.open;
  cdsEmpresa.open;
  cdsCliente.locate('Codigo', edtcod_Cliente.Text,[] );
  frxContrato.Variables['CNPJEmpresa']   := QuotedStr( FormatarCNPJ_CPF( cdsEmpresa.fieldByname('cnpjcpf').AsString ) );
  frxContrato.Variables['cnpjCliente']   := QuotedStr(edtCnpjCpf.Text);
  frxContrato.Variables['TotalCaucao']   := QuotedStr( edtValorCaucao.Text );
  frxContrato.Variables['TotalLocacao']  := QuotedStr( edtTotalLiquido.Text );
  frxContrato.Variables['ExtensoValor']  := QuotedStr( valorPorExtenso(StrTofloat(edtValorCaucao.Text)));
  frxContrato.Variables['ExtensoData']  := QuotedStr( 'Ao(s) '+NumeroPorExtenso(StrToint(FormatDateTime('dd',now)))+' dia(s) do mês de '+FormatDateTime('mmm',now)+
                                                      ' de '+NumeroPorExtenso(StrToFloat(formatDatetime('yyyy',now))));
  frxContrato.ShowReport(true);
  cdsCliente.Close;
  cdsEmpresa.Close;
end;

procedure TfrmLocacao.btnExcluirClick(Sender: TObject);
begin
  IF cdsItensVendasTMP.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Excluir o Produto '+cdsItensVendasTMP.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtTotPecas.Text      := FormatFloat('0.00',StrToFloat(edtTotPecas.Text) -  cdsItensVendasTMP.FieldByname('Qtde_Venda').AsFloat );
      edtTotalLiquido.Text  := FormatFloat('0.00',StrToFloat(edtTotalLiquido.Text) -  cdsItensVendasTMP.FieldByname('Vlr_total').asFloat);
      edtValorCaucao.Text  := FormatFloat('0.00',StrToFloat(edtValorCaucao.Text) -  cdsItensVendasTMP.FieldByname('Valor_Pagamento').asFloat);
      cdsItensVendasTMP.Delete;
   End;
   VerLimite();
   AtaulizaLucroBruto;
end;

procedure TfrmLocacao.btnAdicionarClick(Sender: TObject);
begin

   pvQualBotao := 'Incluir';

   edtCod_Produto.Enabled  := True;
   cmbNome_Produto.Enabled := True;
   btnCadProdutos.Enabled  := True;

   btnAdicionar.Enabled     := False;
   btnExcluir.Enabled       := False;
   btnAlterar.Enabled       := False;
   btnOkProd.Enabled        := True;
   btnCancelar.Enabled      := True;
   btnCadProdutos.Enabled   := True;
   If FrmLocacao.tag <> 4 then
   Begin
      Try
         edtCod_Produto.SetFocus;
      Except
      End;
   End;

end;

Function TfrmLocacao.FormatarCNPJ_CPF(lsCnpjCPf : String)  : String;
begin
   if Length( lsCnpjCPf ) <= 11 then
      Result := MascaraCpF(lsCnpjCPf)
   else
      result := MascaraCNPJ(lsCnpjCPf)
end;

procedure TfrmLocacao.btnAlterarClick(Sender: TObject);
begin
   pvQualBotao := 'Alterar';

   edtCod_Produto.Text := cdsItensVendasTMP.FieldByName('Codigo').AsString;
   edtCod_ProdutoExit(edtCod_Produto);
   edtCod_Produto.Enabled := False;
   cmbNome_Produto.Enabled := False;
   btnCadProdutos.Enabled := False;

   edtQtde_Venda.Text  := FormatFloat('0',cdsItensVendasTMP.FieldByName('Qtde_Venda').AsFloat);
   EdtPco_Venda.Text   := FormatFloat('0.00',cdsItensVendasTMP.FieldByName('pco_Venda').AsFloat);
   pvrvlr_TotalAnt     := cdsItensVendasTMP.FieldByName('Vlr_Total').AsFloat;

   btnOk.Enabled            := True;
   btnCancelar.Enabled      := True;
   btnExcluir.Enabled       := True;
   btnAdicionar.Enabled     := False;
   btnAlterar.Enabled       := False;

   edtQtde_Venda.SetFocus;
   AtaulizaLucroBruto;

end;

procedure TfrmLocacao.btnCadAlunosClick(Sender: TObject);
begin
   if PetShop then
   begin
      frmDelivery := TFrmDelivery.Create(Self);
      frmDelivery.ShowModal;
      Exit;
   end;
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;

   edtcod_Cliente.Text := '';
   edtcod_ClienteExit(edtcod_Cliente);

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,Cod_Rota,Contrato,'+
                           'Qtde_PedAberto,Limite_Credito from T_Clientes '+
                           'where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parativo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspVariavel.Name;
   cdsCadClientes.Open;

   if frmCadClientes.piCod_Produto<> 0 Then
   begin
      edtCod_Cliente.Text := intToStr(frmCadClientes.piCod_Produto);
      edtCod_ClienteExit(edtCod_Produto);
   End;
   edtcod_Cliente.SetFocus;
end;

procedure TfrmLocacao.edtcod_ClienteExit(Sender: TObject);
begin
   if Trim(edtCod_Cliente.text)<> '' Then
   Begin
      IF length(Trim(edtCod_Cliente.Text))<=5 Then
      Begin
         cmbCod_Cliente.KeyValue := edtCod_Cliente.text;
         if Trim(cmbNome_Cliente.Text) = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
            CaixaMensagem( 'Cliente Não Encontrado ', ctAviso, [ cbOk ], 0 );
            try
              edtCod_Cliente.SetFocus;
            Except

            End;
         End;
      End
      Else
      Begin
         cmbCNPJCPF.KeyValue  := edtCod_Cliente.Text;
         cmbCNPJCPFClick( cmbCNPJCPF );
         If cmbCod_Cliente.Text = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
         End;
     End;
   End
   else
      cmbNome_Cliente.KeyValue := Null;
end;

procedure TfrmLocacao.MostrarAnimaisCliente;
var  DaoClienteAnimal : TDaoClienteAnimal;
     cdsDados : TclientDataSet;
begin
   DaoClienteAnimal := TDaoClienteAnimal.create(gConexao);
   cdsDados :=  DaoClienteAnimal.BucarAnimalCliente(cmbNome_Cliente.KeyValue);
   if not cdsDados.IsEmpty then
   begin
      frmSelAnimal := TfrmSelAnimal.Create(application);
      frmSelAnimal.srcAnimais.DataSet := cdsDados;
      frmSelAnimal.showmodal;
      if frmselAnimal.Tag=1 then
         pAnimalId := frmselAnimal.pAnimalId
      else
         BtnCancelaClick(BtnCancela);
      FreeandNil(frmSelAnimal);
   end;
end;

procedure TfrmLocacao.cmbNome_ClienteChange(Sender: TObject);
begin
   CmbCod_Cliente.Keyvalue := cmbnome_Cliente.Keyvalue;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text   :=  cmbCod_Cliente.Text;
      try
         edtCod_Funcionario.SetFocus
      except
      end;
      MostrarAnimaisCliente;
      VerificarSaldoDevedor(StrTointDef(cmbCod_Cliente.Text,0))
   End;
end;

procedure TfrmLocacao.cmbNome_formaPagamentoChange(Sender: TObject);
begin
   cmbCod_formaPagamento.KeyValue := cmbNome_formaPagamento.KeyValue;
end;

procedure TfrmLocacao.cmbCod_ClienteChange(Sender: TObject);
begin
   cmbnome_Cliente.Keyvalue  :=  CmbCod_Cliente.Keyvalue ;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text  := cmbCod_Cliente.Text;
      edtCnpjCpf.Text      := FormatarCNPJ_CPF( Trim(cdsCadClientes.FieldByName('CnpjCpf').asString));
     { if Length( edtCNPJCPF.Text ) <= 11 then
      begin
        lblCNPJCPF.Caption   := 'C.P.F.';
        edtCNPJCPF.EditMask := '###.###.###-##;0;_';
      End
      Else
      Begin
        lblCNPJCPF.Caption   := 'C.N.P.J.';
        edtCNPJCPF.EditMask  := '##.###.###/####-##;0;_';
      End;}
      sdtsConsultaCli.close;
      sdtsConsultaCli.Connection := frmPrincipal.dbxPrincipal;
      sdtsConsultaCli.DataSet.CommandText := 'Select Count(seqvenda) as Qtde, Sum(vlr_areceber) As Total From T_Ctasreceber '+
                                             'where cod_Cliente=:parCod_Cliente and Status=:parStatus';
      sdtsConsultaCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToInt(edtcod_Cliente.Text);
      sdtsConsultaCli.DataSet.ParamByName('parStatus').AsInteger      := 0;
      sdtsConsultaCli.Open;
      cdsCadClientes.Locate('codigo',edtcod_Cliente.Text,[]);
      if cdsCadClientes.FieldByName('Status').AsString = '1' then
      Begin
         CaixaMensagem( 'Este Cliente esta em Cobrança ', ctAviso, [ cbOk ], 0 );
         edtcod_Cliente.SetFocus;
      End;
      if cdsCadClientes.FieldByName('Status').AsString = '2' then
      Begin
         CaixaMensagem( 'Este Cliente foi bloqueado para venda/serviço ', ctAviso, [ cbOk ], 0 );
         edtcod_Cliente.SetFocus;
      End;
      cdsCadClientes.Locate('Codigo',edtCod_Cliente.text,[]);
      edtLimite_Credito.Text := FormatFloat('0.00',(cdsCadClientes.FieldByName('Limite_Credito').AsFloat-sdtsConsultaCli.FieldByName('Total').AsFloat));
      VerLimite();
      if (sdtsConsultaCli.FieldByName('Qtde').AsInteger>=cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger) and ( FrmLocacao.Tag <> 4 ) then
      begin
         CaixaMensagem( 'O cliente possui '+sdtsConsultaCli.FieldByName('Qtde').asString+' pedidos em aberto !', ctAviso, [ cbOk ], 0 );
         Try
           edtcod_Cliente.SetFocus;
         Except
         End;
         exit;
      end;
   End;
end;

procedure TfrmLocacao.cmbCod_formaPagamentoChange(Sender: TObject);
begin
   cmbNome_formaPagamento.KeyValue := cmbCod_formaPagamento.KeyValue;
   if Trim(cmbCod_formaPagamento.Text) <> '' Then
      edtCod_FormaPagamento.Text      := inttostr(cmbCod_formaPagamento.KeyValue);
end;

procedure TfrmLocacao.cmbCod_FuncionarioChange(Sender: TObject);
var Daoremessa : TDaoRemessa;
begin
   cmbNome_Funcionario.KeyValue  :=  cmbCod_Funcionario.KeyValue;
   if Trim(cmbCod_Funcionario.Text)<>'' Then
   begin
      edtCod_Funcionario.Text := cmbCod_Funcionario.Text;
   end;
end;

procedure TfrmLocacao.cmbNome_FuncionarioChange(Sender: TObject);
begin
   cmbCod_Funcionario.KeyValue  :=  cmbNome_Funcionario.KeyValue;
end;

procedure TfrmLocacao.cmbCNPJCPFClick(Sender: TObject);
begin
   if Trim( cmbCNPJCPF.Text ) <> '' then
   begin
      cmbNome_Cliente.KeyValue := cmbCNPJCPF.Text;
      cmbNome_ClienteChange(cmbNome_Cliente);
   end
   else
   begin
      CaixaMensagem( 'Cliente ' + Trim( edtCod_Cliente.Text ) + ' não encontrado.', ctAviso, [ cbOk ], 0 );
      edtCod_Cliente.SetFocus;
      exit;
   end;
end;

procedure TfrmLocacao.btnCadProdutosClick(Sender: TObject);
begin
   frmCadProdutos := TfrmCadProdutos.Create(Nil);
   frmCadProdutos.Tag := 5;
   frmCadProdutos.showmodal;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text := RetornarSelectProdutos+' From T_Produtos order by Descricao ';;

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;

   if frmCadProdutos.piCod_Produto<> 0 Then
   begin
      edtCod_Produto.Text := intToStr(frmCadProdutos.piCod_Produto);
      edtCod_ProdutoExit(edtCod_Produto);
   End;
end;
function TfrmLocacao.RetornarSelectProdutos : String;
var precoDeVenda : string;
Begin
   precoDeVenda:= 'Pco_Venda,PrecoVendaExterna,ValorMes';
   if FrmLocacao.tag = VENDAS_EXTERNAS then
      precoDeVenda:= 'PrecoVendaExterna as Pco_Venda';
   Result :=  'Select BloqueiaNegativo,ComissaoSecundaria,MargemSecundaria,Pco_Custo,PesoBruto,PesoLiquido,Cod_Barras,Unid,Codigo,Descricao,'+precoDeVenda+',Saldo,Tipo_Produto,M2,MetroLinear,Perc_Comissao,QtdeEmbalagem ';
end;
procedure TfrmLocacao.edtCod_FormaPagamentoExit(Sender: TObject);
begin
   if trim(edtCod_FormaPagamento.text)<>'' then
   Begin
      cmbCod_FormaPagamento.KeyValue := strToInt(edtCod_FormaPagamento.text);
      cmbCod_FormaPagamentoChange(cmbCod_FormaPagamento);
      if Trim(cmbNome_FormaPagamento.Text) = '' Then
      Begin
         cmbNome_FormaPagamento.KeyValue := Null;
         edtCod_FormaPagamento.Text      := '';
         CaixaMensagem( 'Forma de pagamento não encontrada ', ctAviso, [ cbOk ], 0 );
         try
           edtCod_FormaPagamento.SetFocus
         Except

         end;
      End;
   End;
end;

procedure TfrmLocacao.edtCod_FuncionarioExit(Sender: TObject);
begin
   if trim(edtCod_Funcionario.text)<>'' then
   Begin
      cmbCod_Funcionario.KeyValue := StrToInt(edtCod_Funcionario.text);
      cmbCod_FuncionarioChange(cmbCod_Funcionario);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtCod_Funcionario.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
         try
           edtCod_Funcionario.SetFocus
         Except

         end;
      End;
   End;
end;

end.
