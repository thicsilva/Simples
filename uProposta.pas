{
 Status
        1 - Aberto
        2 - Pago
        3 - Cortesia
        4 - Devolvido
        5 - Perdido
 Situacao
        1 - Pendente
        2 - Entregue
 Tag da venda

    Tag = 4 : Finalizaçao de OS
    Tag = 3 : Serviço
    Tag = 0 : Vendas normais

}
unit uProposta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Provider, ADODB, StdCtrls, bsSkinCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, ComCtrls, bsSkinTabs, ExtCtrls,
  ToolWin, BusinessSkinForm, Buttons, bsdbctrls, EditNew, FMTBcd, SqlExpr,
  SimpleDS, sqltimst, RDprint;

type
  TfrmProposta = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    BtnCancela: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    dspItensVendas: TDataSetProvider;
    cdsCadClientes: TClientDataSet;
    srcCadClientes: TDataSource;
    dspVariavel: TDataSetProvider;
    SkinForm: TbsBusinessSkinForm;
    bsSkinStatusBar1: TbsSkinStatusBar;
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
    bsSkinStdLabel7: TbsSkinStdLabel;
    cdsItensVendasTMP: TClientDataSet;
    srcItensVendasTMP: TDataSource;
    cdsItensVendasTMPCodigo: TIntegerField;
    cdsItensVendasTMPDescricao: TStringField;
    cdsItensVendasTMPPco_Venda: TFloatField;
    cdsItensVendasTMPqtde_Venda: TFloatField;
    cdsItensVendasTMPvlr_Total: TFloatField;
    bsSkinScrollBar1: TbsSkinScrollBar;
    cdsItensVendasTMPComplemento: TStringField;
    dspVenda: TDataSetProvider;
    cdsVenda: TClientDataSet;
    srcVenda: TDataSource;
    bsSkinBevel5: TbsSkinBevel;
    edtDesconto: TbsSkinEdit;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtVlr_Desconto: TbsSkinEdit;
    cdsItensVendasTMPvlr_Desconto: TFloatField;
    edtTotalVenda: TEditN;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtTotDesconto: TEditN;
    edtTotalLiquido: TEditN;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    btnCadAlunos: TbsSkinSpeedButton;
    cmbNome_Cliente: TbsSkinDBLookupComboBox;
    cmbCod_Cliente: TbsSkinDBLookupComboBox;
    edtcod_Cliente: TbsSkinEdit;
    bsSkinStdLabel12: TbsSkinStdLabel;
    btnCadProdutos: TbsSkinSpeedButton;
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
    cmbTipoDesconto: TbsSkinComboBox;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtDataVenda: TbsSkinDateEdit;
    cmbCNPJCPF: TbsSkinDBLookupComboBox;
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
    edtNome_Cliente: TbsSkinEdit;
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
    bsSkinStdLabel6: TbsSkinStdLabel;
    bsSkinEdit1: TbsSkinEdit;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    bsSkinSpeedButton3: TbsSkinSpeedButton;
    bsSkinBevel8: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    memoTitulo: TMemo;
    bsSkinSpeedButton4: TbsSkinSpeedButton;
    cdstempProdutos: TClientDataSet;
    cdstempProdutosCod_Produto: TIntegerField;
    cdstempProdutosDescricao: TStringField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure EdtPco_VendaExit(Sender: TObject);
    procedure edtQtde_VendaExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edtTotalExit(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure cdsItensVendasTMPAfterOpen(DataSet: TDataSet);
    procedure edtDescontoExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCadAlunosClick(Sender: TObject);
    procedure edtcod_ClienteExit(Sender: TObject);
    procedure cmbNome_ClienteChange(Sender: TObject);
    procedure cmbCod_ClienteChange(Sender: TObject);
    procedure limpacampos();
    procedure cmbCod_FuncionarioChange(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure cmbCNPJCPFClick(Sender: TObject);
    procedure btnCadProdutosClick(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnOkProdClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure VerLimite();
    procedure AtualizaTabelas();
    procedure btnEntradaClick(Sender: TObject);
    procedure cdsItensVendasTMPBeforeOpen(DataSet: TDataSet);
    procedure bsSkinSpeedButton4Click(Sender: TObject);

  private
     pvQualBotao     : String;
     pvrvlr_TotalAnt : Real;
     pviLinha        : Integer;
    { Private declarations }
  public
     liSeqVendaAtu : Integer;
     liSeqOs       : Integer;
    { Public declarations }
  end;

var
  frmProposta: TfrmProposta;

implementation

uses uPrincipal,ufuncoes, uCadClientes, uCadProdutos, uBaixaNormal,
  uProdDescricaoComplementar;

{$R *.dfm}
procedure tfrmProposta.AtualizaTabelas();
Begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select COd_Barras,Unid,Codigo,Descricao,Pco_Venda,Saldo,Tipo_Produto '+
                          'From T_Produtos Order by Descricao  ';
   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;
End;
procedure tfrmProposta.VerLimite();
Begin
    if StrToFloat(edtTotalLiquido.Text)>StrTOfloat(edtLimite_Credito.Text) then
   Begin
     //  CaixaMensagem( 'O cliente ultrapassou o limite de credito ', ctAviso, [ cbOk ], 0 );
     // btnok.Enabled          :=False;
      edtTotalLiquido.Color := clred;
   End
   Else
   Begin
      btnok.Enabled         := True;
      edtTotalLiquido.Color := clInfoBk;
   End;
End;

procedure TfrmProposta.limpacampos();
Begin
   edtcod_Cliente.Text         := '';
   edtTotalVenda.Text          := '0,00';
   edtQtde_Venda.Text          := '0';
   edtPco_Venda.Text           := '0,00';
   edtTotal.Text               := '0,00';
   edtDesconto.Text            := '0,00';
   edtTotDesconto.Text         := '0,00';
   edtVlr_Desconto.Text        := '0,00';
   edtTotalLiquido.Text        := '0,00';
   edtCod_Produto.Text         := '';
   edtCnpjCpf.Text             := '';
   edtCod_Funcionario.Text     := '';
   cmbCod_Funcionario.KeyValue     := Null;
   cmbNome_Funcionario.KeyValue    := Null;
   cmbCod_Cliente.KeyValue         := Null;
   edtLimite_Credito.Text          := '0,00';
   cmbNome_Cliente.KeyValue        := Null;
End;
procedure TfrmProposta.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmProposta.FormCreate(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,'+
                           'Qtde_PedAberto,Limite_Credito,Cod_Rota from T_Clientes '+
                           'where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parativo').AsString := 'S';

   cdsCadClientes.Close;
   cdsCadClientes.ProviderName := dspVariavel.Name;
   cdsCadClientes.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoPagamento,Prazo from T_formasPagamento order by Descricao ';

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios order by Descricao ';

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

   liseqos := 0;

end;

procedure TfrmProposta.FormShow(Sender: TObject);
begin
   AtualizaTabelas();

   If (frmProposta.tag = 3)  Then
   Begin
      frmProposta.Caption    := 'Cadastro e manuteção de vendas de serviços';
      btnincluir.Caption   := '&Novo Serviço';
   End
   Else if (frmProposta.tag = 4 ) then
   Begin
      frmProposta.Caption  := 'Finalização de Serviço';
      btnok.Caption      := '&Finalizar';
   End
   Else if (frmProposta.tag = 5 ) then
   Begin
      frmProposta.Caption  := 'Inclusão de Material e Serviços executados ';
      btnincluir.Caption := '&Nova Venda';
   End
   Else
   Begin
      frmProposta.Caption  := 'Cadastro e manuteção de vendas ';
      btnincluir.Caption := '&Nova Venda';
   End;

   EdtPco_Venda.Enabled := gsPerfilacesso.VerificaAcesso('Movimento','Vendas','Altera Preco de Venda',gbMaster);

   pnlDadosClientes.Enabled := False;

end;

procedure TfrmProposta.edtCod_ProdutoExit(Sender: TObject);
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

procedure TfrmProposta.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);
      edtDesconto.Enabled := True;
      if ( cdsCadProdutos.fieldbyname('Saldo').asInteger <= 0 ) And
         (Uppercase( gParametros.Ler( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' )) = 'SIM') AND
         ( (frmProposta.Tag= 0 ) OR (frmProposta.Tag= 5 ) ) And
         (cdsCadProdutos.fieldbyname('Tipo_Produto').asInteger=0) Then
      Begin
         CaixaMensagem( 'Produto Sem Estoque ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.SetFocus;
         exit;
      End;
   End;
end;

procedure TfrmProposta.EdtPco_VendaExit(Sender: TObject);
begin
   EdtPco_Venda.text := SubstString(EdtPco_Venda.text,'.', ',', True );
   EdtPco_Venda.text := formatFloat( '0.00',StrTofloat(EdtPco_Venda.text));
   edtTotal.Text     := Formatfloat( '0.00',StrToint(edtQtde_Venda.Text) * ( StrToFloat(EdtPco_Venda.text)- StrToFloat(edtVlr_Desconto.text) ));
  // edtTotal.Text     := Formatfloat( '0.00',StrToFloat(edtTotal.Text) - );
end;

procedure TfrmProposta.edtQtde_VendaExit(Sender: TObject);
begin
   edtTotal.Text := Formatfloat ( '0.00',StrToint(edtQtde_Venda.Text) * StrToFloat(EdtPco_Venda.text));
   sdtsPesqDescCli.Close;
   sdtsPesqDescCli.DataSet.CommandText := 'Select * from T_ClientesDescontos where Cod_Cliente=:parCod_Cliente and Cod_Produto=:parcod_Produto';
   sdtsPesqDescCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToint(edtcod_Cliente.Text);
   sdtsPesqDescCli.DataSet.ParamByName('parCod_Produto').AsInteger := StrToint(edtCod_Produto.Text);
   sdtsPesqDescCli.Open;
   edtDesconto.Enabled := True;
   if Not sdtsPesqDescCli.IsEmpty then
   Begin
      If sdtsPesqDescCli.FieldByname('Qtde_Minima').asInteger<=StrToint(edtQtde_Venda.text) Then
      Begin
         cmbTipoDesconto.ItemIndex := 1;
         edtDesconto.Text :=Formatfloat('0.00', sdtsPesqDescCli.FieldByname('Perc_Desconto').asFloat);
         edtDescontoExit(edtDesconto);
         edtDesconto.Enabled := False;
         EdtPco_Venda.SetFocus;
      End;
   End;
   If ( cdsCadProdutos.FieldByname('Saldo').asInteger<StrToint(edtQtde_Venda.text))  And
      ( Uppercase( gParametros.Ler( '', '[CADASTRO]', 'BloqueioEstoque', 'NAO' )) = 'SIM') AND
      ( (frmProposta.Tag= 0 ) OR (frmProposta.Tag= 5 ) ) And
      (cdsCadProdutos.fieldbyname('Tipo_Produto').asInteger=0) Then
   Begin
      CaixaMensagem( 'Produto com estoque insuficiente ',ctAviso, [ cbOk ], 0 );
      edtCod_Produto.SetFocus;
      exit;
   End;
end;

procedure TfrmProposta.btnOkProdClick(Sender: TObject);
begin
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
      edtTotalVenda.Text := FormatFloat('0.00', StrToFloat(edtTotalVenda.Text)-pvrvlr_TotalAnt);
   End;
   cdsItensVendasTmp.FieldByName('Codigo').asInteger      := StrToInt(edtCod_Produto.Text);
   cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat    := StrToInt (edtQtde_Venda.Text);
   cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat     := StrToFloat (edtPco_Venda.Text);
   cdsItensVendasTmp.FieldByName('vlr_Total').asFloat     := StrToFloat ( edtTotal.Text);
   cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat  := StrToFloat ( edtVlr_Desconto.Text);
   cdsItensVendasTmp.FieldByName('Descricao').asString    := cmbNome_Produto.Text;
   cdsItensVendasTmp.Post;

   edtTotDesconto.Text  := FormatFloat('0.00', StrToFloat(edtTotDesconto.Text)+( StrToFloat(edtVlr_Desconto.Text)*StrToInt(edtQtde_Venda.Text)) );
   edtTotalVenda.Text   := FormatFloat('0.00', StrToFloat(edtTotalVenda.Text)+ ( StrToFloat(edtTotal.Text) + StrToFloat(edtTotDesconto.Text))  );
   edtTotalLiquido.Text := FormatFloat('0.00', StrToFloat(edtTotalVenda.Text)-StrToFloat(edtTotDesconto.Text));

   edtCod_Produto.Text := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text  := '0';
   edtPco_Venda.Text   := '0,00';
   edtTotal.Text       := '0,00';
   edtVlr_Desconto.text:= '0,00';
   edtDesconto.text    := '0,00';
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
   btnadicionarClick(btnadicionar);

end;

procedure TfrmProposta.bsSkinSpeedButton4Click(Sender: TObject);
begin
   frmProdDescricaoComplementar := TfrmProdDescricaoComplementar.create(Self);
   frmProdDescricaoComplementar.edtCod_Produto.text    := inczero(edtCod_Produto.Text,6);
   frmProdDescricaoComplementar.edtProd_Descricao.text := cmbNome_Produto.Text;
   frmProdDescricaoComplementar.Showmodal;
   FreeAndNil(frmProdDescricaoComplementar);
end;

procedure TfrmProposta.btnAdicionarClick(Sender: TObject);
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
   If frmProposta.tag <> 4 then
   Begin
      Try
         edtCod_Produto.SetFocus;
      Except
      End;
   End;
end;


procedure TfrmProposta.btnokClick(Sender: TObject);
Var liSeqvenda : integer;
    lrVlr_DescProd : Real;
    I: Integer;
    lsPrazo      : String;
    liseqParcela : Integer;
    liCont       : Integer;
    liqtde_Parcelas : Integer;
    trdNrTransacao: TTransactionDesc;
    ldPrePagamento : Double;
    lrTot_Produtos : Double;
    lrTot_Desconto : Double;
begin

{$REGION 'Criticas e Validação das Informações'}

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
   if (sdtsConsultaCli.FieldByName('Qtde').AsInteger>=cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger) and ( frmProposta.Tag <> 4 ) then
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
   begin
      trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
      frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
   end;

{$REGION 'Gravando os Itens da Venda'}

   qryItensVendas.Close;
   qryItensVendas.SQL.Text :='Select * from T_ItensVendas where 1=2';

   If frmProposta.tag = 4 then
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
      Try

        cdsItensVendas.Append;
        cdsItensVendas.FieldByName('Cod_Produto').asInteger  := cdsItensVendasTmp.FieldByName('Codigo').asInteger;
        cdsItensVendas.FieldByName('Qtde_Venda').asFloat     := cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat;
        cdsItensVendas.FieldByName('Pco_Venda').asFloat      := cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat;
        cdsItensVendas.FieldByName('vlr_Desconto').asFloat   := cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat;
        cdsItensVendas.FieldByName('vlr_Total').asFloat      := cdsItensVendasTmp.FieldByName('vlr_Total').asFloat;
        cdsItensVendas.FieldByName('Operador').asString      := gsOperador;
        cdsItensVendas.FieldByName('Data_Cad').asDateTime    := now;
        cdsItensVendas.FieldByName('Data_Mov').asDateTime    := gsdata_Mov;
        cdsItensVendas.FieldByName('Complemento').asString   := cdsItensVendasTmp.FieldByName('Complemento').asString;
        cdsItensVendas.FieldByName('Cod_emp').asString       := gsCod_Emp;
        cdsItensVendas.FieldByName('SeqVenda').asInteger     := liSeqvenda;
        cdsItensVendas.Post;
      except
         frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
         Exit;
      End;

      lrVlr_DescProd  := lrVlr_DescProd  + cdsItensVendasTmp.FieldByName('vlr_Desconto').asFloat;

      cdsItensVendasTMP.Next;
   End;

{$ENDREGION}

{$REGION 'Gravando Registro da venda'}

   qryVenda.Close;
   qryVenda.Params.Clear;
   qryVenda.SQL.Text :='Select * from T_Vendas where 1=2';

   If frmProposta.tag = 4 then
   Begin
      qryVenda.Close;
      qryVenda.SQL.Text :='Select * from T_Vendas Where SeqVenda=:parSeqVenda ';
      qryVenda.ParamByName('parSeqVenda').AsInteger := liSeqVendaAtu ;
   End;


   cdsVenda.Close;
   cdsVenda.ProviderName := dspVenda.Name;
   cdsVenda.Open;
   If frmProposta.tag = 4 then
      cdsVenda.Edit
   else
      cdsVenda.Append;

   cdsVenda.FieldByname('SeqVenda').Asinteger        := liSeqvenda;
   cdsVenda.FieldByname('Cod_Cliente').Asinteger     := StrToInt(cmbCod_Cliente.KeyValue);
   cdsVenda.FieldByname('Cod_Funcionario').Asinteger := StrToInt(cmbCod_Funcionario.KeyValue);
   cdsVenda.FieldByname('Vlr_Total').AsFloat         := StrToFloat( edtTotalVenda.Text );
   cdsVenda.FieldByname('Vlr_Desconto').AsFloat      := StrToFloat( edtTotDesconto.Text );
   cdsVenda.FieldByname('Status').AsString           := 'N';
   cdsVenda.FieldByname('Operador').AsString         := gsOperador;
   cdsVenda.FieldByname('Cod_Emp').AsString          := gsCod_emp;
   cdsVenda.FieldByname('Operador').AsString         := gsOperador;
   cdsVenda.FieldByName('Data_Mov').asDateTime       := gsData_Mov;
   cdsVenda.FieldByName('Data_venda').asDateTime     := edtDataVenda.Date;
   cdsVenda.FieldByName('Data_Cad').asDateTime       := now;
   cdsVenda.FieldByname('Vlr_DescProd').AsFloat      := lrVlr_DescProd;
   cdsVenda.FieldByname('Tipo_Venda').AsString       := 'P';
   cdsVenda.FieldByName('Nome_Cliente').asString     := edtNome_Cliente.text;
   if liseqOs <> 0 then
      cdsVenda.FieldByname('SeqOs').AsInteger        := liseqos;


   If frmProposta.tag = 3 then
   Begin
      cdsVenda.FieldByname('Tipo_Venda').AsString    := 'S';
      cdsVenda.FieldByname('Status').AsString        := '1';
   End;
   If frmProposta.tag = 4 then
   Begin
      cdsVenda.FieldByname('Tipo_Venda').AsString    := 'S';
      cdsVenda.FieldByname('Status').AsString        := '3';
   End;

   cdsVenda.Post;

   Try
      cdsVenda.ApplyUpdates(-1);
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      CaixaMensagem( 'Não foi possivel gravar a venda', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   Try
      cdsItensVendas.ApplyUpdates(-1);
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      CaixaMensagem( 'Não foi possivel gravar a venda', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

{$ENDREGION}

{$REGION 'Lancamento do Financeiro'}

   Try
      if ( (frmProposta.Tag<>3) and ( frmProposta.Tag<>5 ) ) then
      Begin
         ldPrepagamento := 0;
         // --> Verifica se teve prepagamento da  OS
         if frmProposta.tag=4 then
         Begin
            sdtsPesqPrepagamento.Close;
            sdtsPesqPrepagamento.Params.Clear;
            sdtsPesqPrepagamento.DataSet.CommandText := 'Select sum(Valor) as Total from t_Movcaixa '+
                                                        'Where PrePagamento=:parPrePagamento and Seqvenda=:parSeqVenda ';
            sdtsPesqPrepagamento.DataSet.ParamByName('parPrePagamento').AsString := 'S';
            sdtsPesqPrepagamento.DataSet.ParamByName('parSeqvenda').AsInteger :=  liSeqVendaAtu;
            sdtsPesqPrepagamento.Open;
            ldPrepagamento := sdtsPesqPrepagamento.fieldByName('Total').AsFloat;
         End;
         // <-- Verifica se teve prepagamento da  OS

         if ldPrepagamento<StrToFloat(edtTotalLiquido.text) then
         Begin
            if cdsCadFormasPagamento.fieldByName('TipoPagamento').AsString = '1' Then
            Begin
               QryPagamento.Close;
               qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';

               cdsPagamento.Close;
               cdsPagamento.ProviderName := dspPagamento.name;
               cdsPagamento.Open;
               liseqParcela    := 1;
               liqtde_Parcelas := 1;
               for I := 1 to Length(Trim(cdsCadFormasPagamento.fieldByName('Prazo').AsString)) do
               Begin
                  if copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)= '/' then
                    liqtde_Parcelas := liqtde_Parcelas + 1;
               End;

               for I := 1 to Length(Trim(cdsCadFormasPagamento.fieldByName('Prazo').AsString)) do
               Begin
                  if copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)<>'/' then
                    lsPrazo := lsPrazo + copy(cdsCadFormasPagamento.fieldByName('Prazo').AsString,I,1)
                  Else
                  Begin
                     cdsPagamento.Append;
                     cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
                     cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := (StrToFloat( edtTotalVenda.Text )-ldPrePagamento)/liqtde_Parcelas;
                     cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (StrToFloat( edtTotalVenda.Text )-ldPrePagamento)/liqtde_Parcelas;
                     cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(edtDataVenda.Date+strtoint(lsPrazo));
                     cdsPagamento.FieldByName('Data_cad').AsDateTime           := (now);
                     cdsPagamento.FieldByName('Data_Emissao').AsDateTime       := Sodata(edtDataVenda.Date);
                     cdsPagamento.FieldByName('Historico').AsString            := 'Titulo Referente a venda '+IntToStr(liSeqvenda);
                     cdsPagamento.FieldByName('Cod_Cliente').AsInteger         := StrToInt(cmbCod_Cliente.KeyValue);
                     cdsPagamento.FieldByName('SeqVenda').AsInteger            := liSeqvenda;
                     cdsPagamento.FieldByname('Cod_Emp').AsString              := gsCod_emp;
                     cdsPagamento.FieldByname('Operador').AsString             := gsOperador;
                     cdsPagamento.FieldByname('Documento').AsString            := inczero(intToStr(liSeqvenda),8)+incZero(intToStr(liseqParcela),3);
                     cdsPagamento.FieldByName('Status').AsInteger              := 0;
                     cdsPagamento.FieldByname('Repasse').AsString              := 'N';
                     cdsPagamento.Post;
                     cdsPagamento.ApplyUpdates(-1);
                     lsPrazo :='';
                     liseqParcela := liseqParcela+1;
                   End;
               End;
               if Trim(lsPrazo)<>'' then
               Begin
                  cdsPagamento.Append;
                  cdsPagamento.FieldByName('Sequencia').AsInteger          := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
                  cdsPagamento.FieldByName('Vlr_Areceber').AsFloat         := (StrToFloat( edtTotalVenda.Text )-ldPrePagamento)/liqtde_Parcelas;
                  cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (StrToFloat( edtTotalVenda.Text )-ldPrePagamento)/liqtde_Parcelas;
                  cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(edtDataVenda.Date+strtoint(lsPrazo));
                  cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
                  cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := Sodata(edtDataVenda.Date);
                  cdsPagamento.FieldByName('Historico').AsString           := 'Titulo Referente a venda '+IntToStr(liSeqvenda);
                  cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := StrToInt(cmbCod_Cliente.KeyValue);
                  cdsPagamento.FieldByName('SeqVenda').AsInteger           := liSeqvenda;
                  cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
                  cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
                  cdsPagamento.FieldByname('Documento').AsString           := inczero(intToStr(liSeqvenda),8)+incZero(intToStr(liseqParcela),3);
                  cdsPagamento.FieldByName('Status').AsInteger             := 0;
                  cdsPagamento.FieldByname('Repasse').AsString             := 'N';
                  cdsPagamento.Post;
                  cdsPagamento.ApplyUpdates(-1);
               End;
            End
            else
            Begin
               qryModific.Close;
               qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento ) Values '+
                                      '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                      '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento ) ';

               qryModific.ParamByName('parCod_Caixa').AsString             := '001';
               qryModific.ParamByName('parValor').asFloat                  := (StrTOFloat(edtTotalLiquido.Text)-ldPrePagamento);
               qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Venda nº '+IntToStr(liSeqvenda);
               qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(gsData_Mov);
               qryModific.ParamByName('parD_C').AsString                   := 'C';
               qryModific.ParamByName('parSeqVenda').asInteger             :=  liSeqvenda;
               qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
               qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
               qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := 0;
               qryModific.ExecSQL;
            end;
         End;
      End;
   except
      frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
      Exit;
   End;
{$ENDREGION}

{$REGION 'Efetuando Registro de Materia Prima'}
   
   if (frmProposta.tag = 4) or (frmProposta.tag = 5) then
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
            frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
            Exit;
         End;
         cdsItensVendasTMP.Next;
      End;
   End;
   {$ENDREGION}

{$REGION 'Atualizando Valor Total da Ordem de Servico'}
   if liseqOs <> 0 then
   Begin
      qryModific.Close;
      qryModific.Params.Clear;
      qryModific.Sql.text  := 'Update T_OrdemServico Set Vlr_Os = vlr_Os + :parVlr_Os '+
                              'where SeqOs=:parSeqOs ';
      qryModific.ParamByName('parVlr_Os').asFloat  := StrToFloat( edtTotalVenda.Text );
      qryModific.ParamByName('parSeqOs').AsInteger := liseqOs ;
      qryModific.ExecSQL;
   End;
{$ENDREGION}

   frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );

{$REGION 'Impressao do comprovante de Venda'}

   If ( frmProposta.tag <> 4 ) and ( frmProposta.tag <> 5 )  Then
   Begin
      impMatricial.PortaComunicacao          := 'LPT1';
      impMatricial.OpcoesPreview.Preview     := True;
      impMatricial.OpcoesPreview.PreviewZoom := 100;
      impMatricial.TamanhoQteLinhas          := 1;
      impMatricial.TamanhoQteColunas         := 39;
      impMatricial.FonteTamanhoPadrao        := s17cpp;
      impMatricial.UsaGerenciadorImpr        := True;
      //impMatricial.Impressora             :=
      impMatricial.Abrir;

      pviLinha := 01;
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,IncDigito( '_','_',39,0));
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha, 001, 'Versao '+ copy(gsVersis,5,6)+' Data:' + FormatDatetime( 'dd/mm/yyyy hh:mm:ss', Now ) );
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,IncDigito( '-','-',39,0));
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,Copy(gsNomeEmp,1,39));
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,IncDigito( '-','-',39,0));
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,010,Copy('Nota de Pagamento',1,39));
      pviLinha := pviLinha + 1;

      impMatricial.Imp(pviLinha,001,IncDigito( '-','-',39,0));
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,Copy(inczero(edtcod_Cliente.text,5)+' - '+ EdtNome_Cliente.text,1, 39 ) );
      pviLinha := pviLinha + 1;

      impMatricial.Imp(pviLinha,001,'Emissao...: '+formatdateTime('dd/mm/YYYY',edtDataVenda.date)+' Orc.: '+incZero(IntToStr(liSeqVenda),8) );
      pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,'Vendedor..: '+Copy(inczero(edtCod_Funcionario.Text,3)+'-'+cmbNome_Funcionario.text,1,25));
      pviLinha := pviLinha + 1;
      //impMatricial.Imp(pviLinha,001,'Celular...: '+lsdtsTempRep.FieldByname('Celular').AsString);
      //pviLinha := pviLinha + 1;
      impMatricial.Imp(pviLinha,001,IncDigito( '=','=',39,0));
      pviLinha := pviLinha + 1;
      //                                          1         2         3         4          5
      //                                123456789.123456789.123456789.123456789.123456789.1234
      //                                123456  123456789.123456789.123456789.123456789.123456789.
      //                                         1         2         3         4          5
      //                                123456789.123456789.123456789.123456789.123456789.1234
      impMatricial.Imp( pviLinha, 001, 'Codigo |P R O D U T O S           |Und|' );
      pviLinha := pviLinha + 1;
      //impMatricial.Imp( pviLinha, 001, '      Embalagem      Compleme.    |Und|' );
      //pviLinha := pviLinha + 1;
      impMatricial.Imp( pviLinha, 001, 'Quatidade|Pc. Unit| Desc.|   Vlr Total|' );
      pviLinha := pviLinha + 1;
      impMatricial.Imp( pviLinha, 001, IncDigito( '=', '=', 39, 0 ) );
      pviLinha := pviLinha + 1;

      cdsItensVendasTMP.First;
      lrTot_Produtos := 0;
      lrTot_Desconto := 0;

      licont := 0;
      While Not cdsItensVendasTMP.Eof Do
      Begin
         impMatricial.Imp ( pviLinha, 001, inczero(cdsItensVendasTMP.FieldByName( 'Codigo' ).AsString,5) + ' ' +
                                           Copy( cdsItensVendasTMP.FieldByName( 'Descricao' ).AsString, 1, 30 ) );

         impMatricial.Imp ( pviLinha, 037, 'UND'); // cdsItensVendasTMP.FieldByName( 'Unid' ).AsString );
         pviLinha := pviLinha + 1;
         impMatricial.ImpD( pviLinha, 008, FormatFloat( '#,##0',    cdsItensVendasTMP.FieldByName( 'Qtde_venda').AsFloat), [ Comp17 ] );
         impMatricial.ImpD( pviLinha, 019, FormatFloat( '#,##0.00', Arredondar( cdsItensVendasTMP.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) ), [ Comp17 ] );
         impMatricial.ImpD( pviLinha, 027, FormatFloat( '#,##0.00', cdsItensVendasTMP.FieldByName( 'Vlr_Desconto' ).AsFloat * cdsItensVendasTMP.FieldByName( 'Qtde_venda').AsFloat ), [ Comp17 ] );
         impMatricial.ImpD( pviLinha, 039, FormatFloat( '#,##0.00',  Arredondar ( cdsItensVendasTMP.FieldByName( 'Qtde_Venda' ).AsFloat *
                                                                                ( cdsItensVendasTMP.FieldByName( 'Pco_Venda' ).AsFloat -
                                                                                   cdsItensVendasTMP.FieldByName( 'Vlr_Desconto' ).AsFloat ), 2 ) ) , [ Comp17 ] );
         lrTot_Produtos := lrTot_Produtos + ( cdsItensVendasTMP.FieldByName( 'Qtde_Venda' ).AsFloat * Arredondar( cdsItensVendasTMP.FieldByName( 'Pco_Venda' ).AsFloat, 2 ) );
         lrTot_Desconto := lrTot_Desconto + ( cdsItensVendasTMP.FieldByName( 'Vlr_Desconto' ).AsFloat * cdsItensVendasTMP.FieldByName( 'Qtde_venda').AsFloat );

         liCont := liCont + 1;
         pviLinha := pviLinha + 1;
         cdsItensVendasTMP.Next;
      end;
      impMatricial.Imp ( pviLinha, 001, IncDigito( '-', '-', 39, 0 ) );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, 'Total de Produtos Listado.: ' );
      impMatricial.ImpD( pviLinha, 039, IntToStr( liCont ), [ Comp17 ] );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, 'Total dos Produtos........:' );
      impMatricial.ImpD( pviLinha, 039, FormatFloat( '#,##0.00', lrTot_Produtos ), [ Comp17 ] );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, 'Desconto Total ...........:' );
      impMatricial.ImpD( pviLinha, 039, FormatFloat( '#,##0.00', lrTot_Desconto ), [ Comp17 ] );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, 'Valor Total...............:');
      impMatricial.ImpD( pviLinha, 039, FormatFloat( '#,##0.00', ( lrTot_Produtos - lrTot_Desconto ) ), [ Comp17 ] );
      pviLinha := pviLinha + 1;

      impMatricial.Imp ( pviLinha, 001, IncDigito( '=', '=', 39, 0 ) );
      {
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, gIniParam.ReadString( 'Orcamento', 'msg1', 'Obrigado!' ) );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, gIniParam.ReadString( 'Orcamento', 'msg2', 'Volte sempre!' ) );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, IncDigito( '-','-',39,0));
      pviLinha := pviLinha + 1;
       }
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, '    DOCUMENTO SEM VALOR FISCAL        ' );
      impMatricial.Imp ( pviLinha, 001, '    DOCUMENTO SEM VALOR FISCAL        ' );
      impMatricial.Imp ( pviLinha, 001, '    DOCUMENTO SEM VALOR FISCAL        ' );
      pviLinha := pviLinha + 5;
      impMatricial.Imp ( pviLinha, 001, '.' );
      impMatricial.TamanhoQteLinhas          := pviLinha;
      impMatricial.Fechar;

      {
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, IncDigito( '-','-',39,0));
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, '       O R C A M E N T O              ' );
      impMatricial.Imp ( pviLinha, 001, '       O R C A M E N T O              ' );
      impMatricial.Imp ( pviLinha, 001, '       O R C A M E N T O              ' );
      pviLinha := pviLinha + 1;
      impMatricial.Imp ( pviLinha, 001, IncDigito( '-', '-', 39, 0 ) );
      If gIniParam.ReadInteger( 'Orcamento', 'spnOrc_ValidadeOrcamento', 5 ) > 0 Then
      Begin
         pviLinha := pviLinha + 1;
         impMatricial.Imp ( pviLinha, 001, ' ESTE ORCAMENTO TEM VALIDADE DE ' + IntToStr( gIniParam.ReadInteger( 'Orcamento', 'spnOrc_ValidadeOrcamento', 5 ) ) + ' DIAS' );
         pviLinha := pviLinha + 1;
         impMatricial.Imp ( pviLinha, 001, IncDigito( '-','-',39,0));
      End;
      pviLinha := pviLinha + gIniParam.ReadInteger( 'Faturamento', 'FAT_LinhasAposImpressao', 10 );
      impMatricial.Imp ( pviLinha, 001, ' ' );
      impMatricial.TamanhoQteLinhas := pviLinha;
       }
   End;
{$ENDREGION}

{$REGION 'Mensagem Final ao Usuario'}

   If frmProposta.tag = 3 then
      CaixaMensagem( 'Serviço Numero  '+IntToStr(liSeqvenda), ctAviso, [ cbOk ], 0 )
   else if frmProposta.tag = 4 then
   Begin
      CaixaMensagem( 'Serviço Finalizado', ctAviso, [ cbOk ], 0 );
      Close;
   End
   Else
     CaixaMensagem( 'Venda Numero  '+IntToStr(liSeqvenda), ctAviso, [ cbOk ], 0 );

{$ENDREGION}

   BtnCancelaClick(BtnCancela);
end;

procedure TfrmProposta.edtTotalExit(Sender: TObject);
begin
   btnOkProdClick(btnOkProd);
end;

procedure TfrmProposta.btnincluirClick(Sender: TObject);
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

   AtualizaTabelas;
   btnadicionarClick(btnadicionar);

   LimpaCampos();

   edtDataVenda.Date        := gsdata_Mov;
end;

procedure TfrmProposta.BtnCancelaClick(Sender: TObject);
begin
   btnAdicionar.Enabled  := False;
   btnExcluir.Enabled    := False;
   pnlProdutos.Enabled   := False;
   cdsItensVendasTMP.EmptyDataSet;

   btnok.Enabled         := False;
   BtnCancela.Enabled    := False;
   btnincluir.Enabled    := True;

   LimpaCampos();
   if (frmProposta.tag = 4) or (frmProposta.tag = 5) then
      Close;


end;

procedure TfrmProposta.cdsItensVendasTMPAfterOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmProposta.cdsItensVendasTMPBeforeOpen(DataSet: TDataSet);
var licont : Integer ;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmProposta.edtDescontoExit(Sender: TObject);
var lrDesconto : Real;
    lrPerc_Desconto : Double;
begin
   edtDesconto.Text :=  SubstString(edtDesconto.Text,'.', ',', True );
   EdtPco_Venda.ReadOnly := False;

   if StrToFloat(edtDesconto.Text)>0 then
   Begin
      if (cmbTipoDesconto.ItemIndex=0) then
         lrPerc_Desconto := arredondar( (StrToFloat(edtDesconto.Text)/StrToFloat(EdtPco_Venda.Text)) * 100,2)
      Else
         lrPerc_Desconto := StrToFloat(edtDesconto.Text);

      if lrPerc_Desconto > gsPerfilAcesso.Desc_Maximo then
      Begin
         CaixaMensagem( 'O valor do desconto ultrapassa sua margem de '+formatFloat('0.00',gsPerfilAcesso.Desc_Maximo), ctAviso, [ cbOk ], 0 );
         edtDesconto.SetFocus;
         Exit;
      End;
   End;

  if (Strtofloat(edtDesconto.Text)>0) and (cmbTipoDesconto.ItemIndex=1) Then
  Begin
     lrdesconto := (StrToFloat(EdtPco_Venda.Text)*Strtofloat(edtDesconto.Text)/100);
     edtVlr_Desconto.text    := FormatFloat('0.00',lrdesconto);
     edtDesconto.Text        := FormatFloat('0.00',lrdesconto);
     EdtPco_Venda.ReadOnly   := True;
  End
  else if (Strtofloat(edtDesconto.Text)>0) and (cmbTipoDesconto.ItemIndex=0) Then
  Begin
     lrdesconto := Strtofloat(edtDesconto.Text);
     edtVlr_Desconto.text    := FormatFloat('0.00',lrdesconto);
     edtDesconto.Text        := FormatFloat('0.00',lrdesconto);
     EdtPco_Venda.ReadOnly   := True;
  End
  else
  Begin
     edtVlr_Desconto.text := '0,00';
     edtDesconto.text := '0,00';
  end;

end;

procedure TfrmProposta.btnCancelarClick(Sender: TObject);
begin

   edtCod_Produto.Text := '';
   cmbNome_Produto.keyvalue := null;
   edtQtde_Venda.Text  := '0';
   edtPco_Venda.Text   := '0,00';
   edtTotal.Text       := '0,00';
   edtVlr_Desconto.text:= '0,00';
   edtDesconto.text    := '0,00';

   edtCod_Produto.Enabled  := True;
   cmbNome_Produto.Enabled := True;
   btnCadProdutos.Enabled  := True;


   btnAdicionar.Enabled     := True;
   btnExcluir.Enabled       := True;
   btnAlterar.Enabled       := True;
   btnOkProd.Enabled        := False;
   btnCancelar.Enabled      := False;;

end;

procedure TfrmProposta.btnEntradaClick(Sender: TObject);
begin
   {
   if StrToFloat(edtTotalLiquido.Text)<= 0 Then
   Begin
      CaixaMensagem( 'Impossivel fazer entrada de uma venda de valor ZER0 ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   frmBaixaNormal := TfrmBaixaNormal.Create(Self);
   frmBaixaNormal.lbldocumento.Visible   := False;
   frmBaixaNormal.edtDocumento.Visible   := False;
   frmBaixaNormal.lblvencimento.Visible  := False;
   frmBaixaNormal.edtVenciemento.Visible := False;

   frmBaixaNormal.edtNomeCliente.Text   := cmbNome_Cliente.Text;
   frmBaixaNormal.edtTotalTitulo.Text   := edtTotalLiquido.Text;
   frmBaixaNormal.edtCnpjcpf.Text       := edtCnpjCpf.Text;
   frmBaixaNormal.Cod_Cliente.Text      := inczero(edtcod_Cliente.text,5);
   frmBaixaNormal.edtData_Emissao.Text  := FormatDateTime('dd/mm/yyyy', gsdata_Mov );
   frmBaixaNormal.Tag := 2;
   frmBaixaNormal.Showmodal
   }
end;

procedure TfrmProposta.btnExcluirClick(Sender: TObject);
begin
  IF cdsItensVendasTMP.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Excluir o Produto '+cdsItensVendasTMP.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtTotalVenda.Text    := FormatFloat('0.00',StrToFloat(edtTotalVenda.Text) -  ( cdsItensVendasTMP.FieldByname('Vlr_Total').asFloat+cdsItensVendasTMP.FieldByname('Vlr_Desconto').asFloat) );
      edtTotDesconto.Text   := FormatFloat('0.00',StrToFloat(edtTotDesconto.Text) -  cdsItensVendasTMP.FieldByname('Vlr_Desconto').asFloat);
      edtTotalLiquido.Text  := FormatFloat('0.00',StrToFloat(edtTotalLiquido.Text) -  cdsItensVendasTMP.FieldByname('Vlr_total').asFloat);
      cdsItensVendasTMP.Delete;
   End;
   VerLimite()
end;

procedure TfrmProposta.btnAlterarClick(Sender: TObject);
begin
   pvQualBotao := 'Alterar';

   edtCod_Produto.Text := cdsItensVendasTMP.FieldByName('Codigo').AsString;
   edtCod_ProdutoExit(edtCod_Produto);
   edtCod_Produto.Enabled := False;
   cmbNome_Produto.Enabled := False;
   btnCadProdutos.Enabled := False;

   edtQtde_Venda.Text  := FormatFloat('0',cdsItensVendasTMP.FieldByName('Qtde_Venda').AsFloat);
   edtDesconto.Text    := FormatFloat('0.00',cdsItensVendasTMP.FieldByName('Vlr_Desconto').AsFloat);
   EdtPco_Venda.Text   := FormatFloat('0.00',cdsItensVendasTMP.FieldByName('pco_Venda').AsFloat);
   pvrvlr_TotalAnt     := cdsItensVendasTMP.FieldByName('Vlr_Total').AsFloat;

   btnOk.Enabled            := True;
   btnCancelar.Enabled      := True;
   btnExcluir.Enabled       := True;
   btnAdicionar.Enabled     := False;
   btnAlterar.Enabled       := False;

   edtQtde_Venda.SetFocus

end;

procedure TfrmProposta.btnCadAlunosClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;
   edtcod_Cliente.Text := '';
   edtcod_ClienteExit(edtcod_Cliente);

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select status, Codigo,Descricao,cnpjcpf,Cod_Rota,'+
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

procedure TfrmProposta.edtcod_ClienteExit(Sender: TObject);
begin
   if Trim(edtCod_Cliente.text)<> '' Then
   Begin
      IF length(Trim(edtCod_Cliente.Text))<=5 Then
      Begin
         cmbCod_Cliente.KeyValue := edtCod_Cliente.text;
        // cmbCod_ClienteChange(cmbCod_Cliente);
         if Trim(cmbNome_Cliente.Text) = '' Then
         Begin
            cmbNome_Cliente.KeyValue := Null;
            edtCod_Cliente.Text      := '';
            CaixaMensagem( 'Cliente Não Encontrado ', ctAviso, [ cbOk ], 0 );
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

procedure TfrmProposta.cmbNome_ClienteChange(Sender: TObject);
begin
   CmbCod_Cliente.Keyvalue := cmbnome_Cliente.Keyvalue;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text   :=  cmbCod_Cliente.Text;
      edtNome_Cliente.Text  :=  cmbNome_Cliente.Text;
   End;
end;

procedure TfrmProposta.cmbCod_ClienteChange(Sender: TObject);
begin
   cmbnome_Cliente.Keyvalue  :=  CmbCod_Cliente.Keyvalue ;
   if Trim(cmbNome_Cliente.Text) <> '' Then
   Begin
      edtCod_Cliente.text  :=  cmbCod_Cliente.Text;
      edtCnpjCpf.Text      := Trim(cdsCadClientes.FieldByName('CnpjCpf').asString);
      if Length( edtCNPJCPF.Text ) <= 11 then
      begin
        lblCNPJCPF.Caption   := 'C.P.F.';
        edtCNPJCPF.EditMask := '###.###.###-##;0;_';
      End
      Else
      Begin
        lblCNPJCPF.Caption   := 'C.N.P.J.';
        edtCNPJCPF.EditMask  := '##.###.###/####-##;0;_';
      End;
      sdtsConsultaCli.close;
      sdtsConsultaCli.DataSet.CommandText := 'Select Count(seqvenda) as Qtde, Sum(vlr_areceber) As Total From T_Ctasreceber '+
                                             'where cod_Cliente=:parCod_Cliente and Status=:parStatus';
      sdtsConsultaCli.DataSet.ParamByName('parCod_Cliente').AsInteger := StrToInt(edtcod_Cliente.Text);
      sdtsConsultaCli.DataSet.ParamByName('parStatus').AsInteger      := 0;
      sdtsConsultaCli.Open;

      cdsCadClientes.Locate('codigo',edtcod_Cliente.Text,[]);

      edtNome_Cliente.Enabled := False;
      if StrToInt(gParametros.Ler( '', '[CADASTRO]', 'ClientePadrao', '0' )) = StrToInt(edtCod_Cliente.Text) then
      Begin
          edtNome_Cliente.Enabled := True;
          If frmProposta.tag <> 4 then
             edtnome_cliente.SetFocus;
      End;
      {
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
       }
      edtLimite_Credito.Text := FormatFloat('0.00',(cdsCadClientes.FieldByName('Limite_Credito').AsFloat-sdtsConsultaCli.FieldByName('Total').AsFloat));
      VerLimite();
      {
      if (sdtsConsultaCli.FieldByName('Qtde').AsInteger>=cdsCadClientes.FieldByName('Qtde_PedAberto').AsInteger) and ( frmProposta.Tag <> 4 ) then
      begin
         CaixaMensagem( 'O cliente possui '+sdtsConsultaCli.FieldByName('Qtde').asString+' pedidos em aberto !', ctAviso, [ cbOk ], 0 );
         Try
           edtcod_Cliente.SetFocus;
         Except
         End;
         exit;
      end;
      }
   End;
end;

procedure TfrmProposta.cmbCod_FuncionarioChange(Sender: TObject);
begin
   cmbNome_Funcionario.KeyValue  :=  cmbCod_Funcionario.KeyValue;
   if Trim(cmbCod_Funcionario.Text)<>'' Then
      edtCod_Funcionario.Text := cmbCod_Funcionario.Text
end;

procedure TfrmProposta.cmbNome_FuncionarioChange(Sender: TObject);
begin
   cmbCod_Funcionario.KeyValue  :=  cmbNome_Funcionario.KeyValue;
end;

procedure TfrmProposta.cmbCNPJCPFClick(Sender: TObject);
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

procedure TfrmProposta.btnCadProdutosClick(Sender: TObject);
begin
   frmCadProdutos := TfrmCadProdutos.Create(Nil);
   frmCadProdutos.Tag := 5;
   frmCadProdutos.showmodal;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select COd_Barras,Unid,Codigo,Descricao,Pco_Venda,Saldo from T_Produtos order by Descricao ';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;
   if frmCadProdutos.piCod_Produto<> 0 Then
   begin
      edtCod_Produto.Text := intToStr(frmCadProdutos.piCod_Produto);
      edtCod_ProdutoExit(edtCod_Produto);
   End;
end;

procedure TfrmProposta.edtCod_FuncionarioExit(Sender: TObject);
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
      End;
   End;
end;

end.
