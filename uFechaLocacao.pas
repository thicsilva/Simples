unit uFechaLocacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinGrids, bsDBGrids, bsSkinCtrls, DB, DBClient, StdCtrls, EditNew,
  bsdbctrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin, ComCtrls, FMTBcd, SqlExpr,sqltimst,
  SimpleDS, Provider, BusinessSkinForm, uClassContaCorrente,
  uClassDaoContaCorrente, RpDefine, RpRave, RpCon, RpConDS, RpRender,
  RpRenderPDF, RpBase, RpSystem, DBXCommon, uDaoItemVenda, uDaoVenda;

type
  TfrmFechaLocacao = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pnlFechaLocacao: TbsSkinGroupBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnRemover: TbsSkinSpeedButton;
    btnAdicionar: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtcod_Pagamento: TbsSkinEdit;
    cmbNome_formaPagamento: TbsSkinDBLookupComboBox;
    cdsTempPagamentos: TClientDataSet;
    cdsTempPagamentosCodigo: TStringField;
    cdsTempPagamentosDescricao: TStringField;
    cdsTempPagamentosValor: TFloatField;
    srcTempPagamentos: TDataSource;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    edtSaldoDevedor: TbsSkinEdit;
    dbgConsulta: TbsSkinDBGrid;
    qryModific: TSQLQuery;
    srcCadFormasPagamento: TDataSource;
    cdsCadFormasPagamento: TClientDataSet;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    sdtsPesqOS: TSimpleDataSet;
    SkinForm: TbsBusinessSkinForm;
    qryContasReceber: TSQLQuery;
    dspContasReceber: TDataSetProvider;
    cdsContasReceber: TClientDataSet;
    srcContasReceber: TDataSource;
    cdsTempPagamentosTipoPagamento: TIntegerField;
    cdsTempPagamentosPrazo: TStringField;
    QryMovCaixa: TSQLQuery;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    srcMovCaixa: TDataSource;
    cdsTempPagamentosseqos: TIntegerField;
    lblNome: TbsSkinStdLabel;
    edtVlr_Recebido: TbsSkinEdit;
    edtCodCliente: TbsSkinEdit;
    edtNumeroVenda: TbsSkinEdit;
    edtPco_Venda: TbsSkinNumericEdit;
    sdtsBuscaEmpresa: TSimpleDataSet;
    edtMascara: TbsSkinEdit;
    edtData_Venda: TbsSkinEdit;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtTotalTitulo: TbsSkinNumericEdit;
    cdsItensVendasTmp: TClientDataSet;
    cdsItensVendasTmpMarcado: TStringField;
    cdsItensVendasTmpCodigo: TIntegerField;
    cdsItensVendasTmpDescricao: TStringField;
    cdsItensVendasTmpDiaria: TFloatField;
    cdsItensVendasTmpDias: TIntegerField;
    cdsItensVendasTmpTotal: TFloatField;
    edtDataDevolucao: TbsSkinDateEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    srcItensVendasTmp: TDataSource;
    cdsItensVendasTmpQuantidade: TFloatField;
    lblDataLocacao: TbsSkinLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    edtPrePagamento: TbsSkinNumericEdit;
    cdsTempPagamentosTipoLancamento: TIntegerField;
    qryItensDevolucoes: TSQLQuery;
    dspItensDevolucoes: TDataSetProvider;
    cdsItensDevolucoes: TClientDataSet;
    cdsItensVendasTmpTipoCobranca: TStringField;
    cdsEmpresa: TClientDataSet;
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
    dspEmpresa: TDataSetProvider;
    qryEmpresa: TSQLQuery;
    procedure edtcod_PagamentoExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cmbNome_formaPagamentoExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtTotalTituloExit(Sender: TObject);
    procedure cdsItensVendasTmpBeforeOpen(DataSet: TDataSet);
    procedure edtDataDevolucaoChange(Sender: TObject);
    procedure bsSkinDBGrid1DblClick(Sender: TObject);
  private
    procedure AtualizarGrid;
    procedure AtualizaSaldoDevedor;
    procedure DevolverItem(VendaID : Integer; DadosItens: TClientDataSet);
    procedure MarcarPrePagamentoComoUtilizado(VendaId: Integer);
    procedure ImprimirRecibo;
    { Private declarations }
  public
    pnomeCliente : string;
    pcnpj : string;
    pCodigoCliEnte : String;
    { Public declarations }
  end;

var
  frmFechaLocacao: TfrmFechaLocacao;

implementation

uses uPrincipal,ufuncoes;
{$R *.dfm}

procedure TfrmFechaLocacao.bsSkinDBGrid1DblClick(Sender: TObject);
begin
  cdsItensVendasTmp.Edit;
  if cdsItensVendasTmp.FieldByName('Marcado').AsString='X' then
     cdsItensVendasTmp.FieldByName('Marcado').AsString  := ''
  else
     cdsItensVendasTmp.FieldByName('Marcado').AsString  := 'X';
  Atualizargrid;
end;

procedure TfrmFechaLocacao.btnAdicionarClick(Sender: TObject);
begin
   if StrToFloat(edtPco_Venda.text)<=0 then
   Begin
      CaixaMensagem( 'O valor do lançamento não pode ser menor ou igual a Zero ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if Trim(cmbNome_formaPagamento.text)='' then
   Begin
      CaixaMensagem( 'Informe o tipo de pagamento ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   cdsTempPagamentos.Append;
   cdsTempPagamentos.FieldByName('Codigo').AsString         := inczero(edtcod_Pagamento.Text,3);
   cdsTempPagamentos.FieldByName('Descricao').AsString      := cmbNome_FormaPagamento.text;
   cdsTempPagamentos.FieldByName('Prazo').AsString          := cdsCadFormasPagamento.FieldByName('Prazo').AsString;
   cdsTempPagamentos.FieldByName('TipoPagamento').AsInteger := cdsCadFormasPagamento.FieldByName('TipoPagamento').AsInteger;
   cdsTempPagamentos.FieldByName('TipoLancamento').AsInteger := cdsCadFormasPagamento.FieldByName('TipoLancamento').AsInteger;
   cdsTempPagamentos.FieldByName('valor').AsFloat           := strtofloat(edtPco_Venda.Text);
   //cdsTempPagamentos.FieldByName('SeqOs').AsFloat           := StrtoInt(edtNumeroOs.Text);
   cdsTempPagamentos.Post;
   edtVlr_Recebido.text             := FormatFloat('0.00',Strtofloat(edtVlr_Recebido.text)+strtofloat(edtPco_Venda.Text));
   AtualizaSaldoDevedor;
   edtcod_Pagamento.Text            := '';
   cmbNome_formaPagamento.KeyValue  := Null;
   edtPco_Venda.Text                := '0,00';
   try
     cmbNome_formaPagamento.SetFocus;
   except
   end;
end;

procedure TfrmFechaLocacao.btnFecharClick(Sender: TObject);
begin
   frmFechaLocacao.Tag := 0;
   close;
end;

procedure TfrmFechaLocacao.btnokClick(Sender: TObject);
var liseqParcela    : Integer;
    liqtde_Parcelas : Integer;
    I               : Integer;
    lsPrazo         : String;
    DadosContaCorrente : TContaCorrente;
    GravaContaCorrente : TDaoContaCorrente;
    lsPagamentos : String;
    lsSeparador  : String;
    liDocumento  : Integer;
    lstContrato  : TStringList;
    lsParcelas   : string;
    lrTotalPagamento : Real;
    trdNrTransacao : TDBXTransaction;
    loDaoItemVenda : TDaoItemVenda;
    loDaoVenda : TDaoVenda;
    QtdeItensDevolvidos : Integer;

begin

   if StrToFloat(edtTotalTitulo.text)=0 then
   Begin
      CaixaMensagem( 'O valor da locação não pode ser igual a zero ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if StrToFloat(edtSaldoDevedor.text)<>0 then
   Begin
      if not CaixaMensagem( 'Ainda resta pagar '+edtSaldoDevedor.text, ctConfirma, [ cbSimNao ], 0 )  Then
         Exit;
   End;

   if StrTofloat(edtVlr_Recebido.Text)>StrTofloat(edtTotalTitulo.Text) then
   Begin
      CaixaMensagem( 'O valor recebido não pode ser maior que o do titulo ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   if not frmPrincipal.dbxPrincipal.InTransaction then
      trdNrTransacao := frmPrincipal.dbxPrincipal.BeginTransaction;

   {$REGION 'Lancamento do Financeiro'}
   Try
     QryContasReceber.Close;
     QryContasReceber.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';

     cdsContasReceber.Close;
     cdsContasReceber.ProviderName := dspContasReceber.name;
     cdsContasReceber.Open;

     lsPrazo         := '0';
     liseqParcela    := 1;
     while not cdsTempPagamentos.Eof do
     begin

        liqtde_Parcelas := 1;
        lrTotalPagamento := cdsTempPagamentos.FieldByName('Valor').Asfloat;

        for I := 1 to Length(Trim(cdsTempPagamentos.fieldByName('Prazo').AsString)) do
        Begin
           if copy(cdsTempPagamentos.fieldByName('Prazo').AsString,I,1)= '/' then
             liqtde_Parcelas := liqtde_Parcelas + 1;
        End;


        for I := 1 to Length(Trim(cdsTempPagamentos.fieldByName('Prazo').AsString)) do
        Begin
           if copy(cdsTempPagamentos.fieldByName('Prazo').AsString,I,1)<>'/' then
             lsPrazo := lsPrazo + copy(cdsTempPagamentos.fieldByName('Prazo').AsString,I,1)
           Else
           Begin
              cdsContasReceber.Append;
              cdsContasReceber.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
              cdsContasReceber.FieldByName('Vlr_Areceber').AsFloat          := (lrTotalPagamento/liqtde_Parcelas);
              cdsContasReceber.FieldByName('Vlr_Recebido').AsFloat          :=  0;
              cdsContasReceber.FieldByName('Vlr_Original').AsFloat          := (lrTotalPagamento/liqtde_Parcelas);
              cdsContasReceber.FieldByName('Data_Vencimento').AsDateTime    := SoData(RetornarDataSistema+strtoint(lsPrazo));
              cdsContasReceber.FieldByName('Data_cad').AsDateTime           := (now);
              cdsContasReceber.FieldByName('Data_Emissao').AsDateTime       := Sodata(RetornarDataSistema);
              cdsContasReceber.FieldByName('Historico').AsString            := 'Titulo Referente a venda '+edtNumeroVenda.Text;
              cdsContasReceber.FieldByName('Cod_Cliente').AsInteger         := StrToInt(edtCodCliente.Text);
              cdsContasReceber.FieldByName('Cod_FormaPagamento').AsInteger  := cdsTempPagamentos.fieldByName('Codigo').AsInteger;
              cdsContasReceber.FieldByName('SeqVenda').AsInteger            := StrToInt(edtNumeroVenda.Text);
              cdsContasReceber.FieldByname('Cod_Emp').AsString              := gsCod_emp;
              cdsContasReceber.FieldByname('Tipo_Baixa').AsString           := 'AB';
              cdsContasReceber.FieldByname('Operador').AsString             := gsOperador;
              cdsContasReceber.FieldByname('Documento').AsString            := inczero(edtNumeroVenda.Text,8)+incZero(intToStr(liseqParcela),3);
              cdsContasReceber.FieldByName('Status').AsInteger              := 0;
              cdsContasReceber.FieldByname('Repasse').AsString              := 'N';
              cdsContasReceber.FieldByname('Cod_Caixa').AsInteger           := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
              cdsContasReceber.Post;
              cdsContasReceber.ApplyUpdates(-1);
              lsPrazo :='';
              liseqParcela := liseqParcela+1;
           End;
        End;

        if Trim(lsPrazo)<>'' then
        Begin
           cdsContasReceber.Append;
           cdsContasReceber.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
           cdsContasReceber.FieldByName('Vlr_Areceber').AsFloat          := (lrTotalPagamento/liqtde_Parcelas);
           cdsContasReceber.FieldByName('Vlr_Recebido').AsFloat          :=  0;
           cdsContasReceber.FieldByName('Vlr_Original').AsFloat          := (lrTotalPagamento/liqtde_Parcelas);
           cdsContasReceber.FieldByName('Data_Vencimento').AsDateTime    := SoData(RetornarDataSistema+strtoint(lsPrazo));
           cdsContasReceber.FieldByName('Data_cad').AsDateTime           := (now);
           cdsContasReceber.FieldByName('Data_Emissao').AsDateTime       := Sodata(RetornarDataSistema);
           cdsContasReceber.FieldByName('Historico').AsString            := 'Titulo Referente a venda '+edtNumeroVenda.Text;
           cdsContasReceber.FieldByName('Cod_Cliente').AsInteger         := StrToInt(edtCodCliente.Text);
           cdsContasReceber.FieldByName('Cod_FormaPagamento').AsInteger  := cdsTempPagamentos.fieldByName('Codigo').AsInteger;
           cdsContasReceber.FieldByName('SeqVenda').AsInteger            := StrToInt(edtNumeroVenda.Text);
           cdsContasReceber.FieldByname('Cod_Emp').AsString              := gsCod_emp;
           cdsContasReceber.FieldByname('Tipo_Baixa').AsString           := 'AB';
           cdsContasReceber.FieldByname('Operador').AsString             := gsOperador;
           cdsContasReceber.FieldByname('Documento').AsString            := inczero(edtNumeroVenda.Text,8)+incZero(intToStr(liseqParcela),3);
           cdsContasReceber.FieldByName('Status').AsInteger              := 0;
           cdsContasReceber.FieldByname('Repasse').AsString              := 'N';
           cdsContasReceber.FieldByname('Tipo_Baixa').AsString           := 'AB';
           If ( cdsTempPagamentos.fieldByName('TipoLancamento').AsInteger = 0 ) OR
              ( cdsTempPagamentos.fieldByName('TipoLancamento').AsInteger = 2 ) then  // se for Vencimento informado so é uma parcela
           Begin
              cdsContasReceber.FieldByName('Status').AsInteger          := 1;
              cdsContasReceber.FieldByName('Historico').AsString        := 'Pagamento A vista';
              cdsContasReceber.FieldByName('Vlr_Recebido').AsFloat      := (lrTotalPagamento/liqtde_Parcelas);
              cdsContasReceber.FieldByName('Data_Pagamento').AsDateTime := Sodata(RetornarDataSistema);
              cdsContasReceber.FieldByname('Tipo_Baixa').AsString       := 'PT';
              If ( cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger = 2 ) Then
              Begin
                 cdsContasReceber.FieldByName('Historico').AsString        := 'Debitado em Conta Corrente';
                 cdsContasReceber.FieldByname('Tipo_Baixa').AsString       := 'DC';
              End;
           End;
           cdsContasReceber.FieldByname('Cod_Caixa').AsInteger       := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
           cdsContasReceber.Post;
           cdsContasReceber.ApplyUpdates(-1);
        End;
        Case cdsCadFormasPagamento.fieldByName('TipoLancamento').AsInteger Of
          0 : // Lancamento no caixa
          Begin
             qryModific.Close;
             qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento,Data_Cad ) Values '+
                                    '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                    '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento,:parData_Cad ) ';
             qryModific.ParamByName('parCod_Caixa').AsInteger            := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
             qryModific.ParamByName('parValor').asFloat                  :=  lrTotalPagamento;
             qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Venda A vista nº '+edtNumeroVenda.Text;
             qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(RetornarDataSistema);
             qryModific.ParamByName('parData_Cad').AsSqlTimeStamp        := datetimeToSqlTimeStamp(now);
             qryModific.ParamByName('parD_C').AsString                   := 'C';
             qryModific.ParamByName('parSeqVenda').asInteger             :=  StrToint(edtNumeroVenda.Text);
             qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
             qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
             qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := cdsTempPagamentos.fieldByName('Codigo').AsInteger;
             qryModific.ExecSQL;
          End;
          2 :
          Begin
             DadosContaCorrente := TContaCorrente.Create;
             GravaContaCorrente := TDaoContaCorrente.Create;
             DadosContaCorrente.D_C         := 'D';
             DadosContaCorrente.Valor       := lrTotalPagamento;
             DadosContaCorrente.Cod_Cliente := StrToInt(edtCodCliente.Text);
             DadosContaCorrente.Historico   := 'Debito referente a Venda nº '+edtNumeroVenda.Text;
             DadosContaCorrente.Documento   := StrToint(edtNumeroVenda.Text);
             IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
             Begin
                CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
                frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
                Exit;
             End;
          End;
        End;
        cdsTempPagamentos.Next;
     End;
   except
      on E: Exception do
      Begin
         frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
         CaixaMensagem( 'Um erro Aconteceu " '+E.Message+'"', ctErro, [ cbOk ], 0 );
         Exit;
      End;
   End;
{$ENDREGION}

   {$REGION 'Ajuste na locaçãoe nos itens'}
    cdsItensVendasTmp.first;
    loDaoItemVenda := TDaoItemVenda.Create(gConexao);
    while not cdsItensVendasTmp.Eof  do
    begin
       if cdsItensVendasTmp.FieldByName('Marcado').AsString='X' then
       begin
          loDaoItemVenda.MarcarComoRecebido(cdsItensVendasTmp.FieldByName('Codigo').AsInteger,StrToInt(edtNumeroVenda.Text), edtDataDevolucao.Date);
          DevolverItem(StrToInt(edtNumeroVenda.Text), cdsItensVendasTmp);
          QtdeItensDevolvidos := QtdeItensDevolvidos + 1;
       end;
       cdsItensVendasTmp.next;
    end;
    FreeAndNil(loDaoItemVenda);
    if QtdeItensDevolvidos = cdsItensVendasTmp.RecordCount  then
    begin
      loDaoVenda := TDaoVenda.Create(gConexao);
      loDaoVenda.MarcarComoEntregue(StrToInt(edtNumeroVenda.Text));
      FreeAndNil(loDaoVenda);
    end;
   {$ENDREGION}

   MarcarPrePagamentoComoUtilizado(StrToint(edtNumeroVenda.Text));

   frmPrincipal.dbxPrincipal.CommitFreeAndNil( trdNrTransacao );
   ImprimirRecibo;
   CaixaMensagem( 'Finalização efetuada com sucesso', ctAviso, [ cbOk ], 0 );
   frmFechaLocacao.Tag := 1;
   Close;
End;
procedure TfrmFechaLocacao.MarcarPrePagamentoComoUtilizado(VendaId : Integer);
begin
   qryModific.Close;
   qryModific.SQL.Text := 'Update T_movCaixa set PrePagamento='+QuotedStr('N')+' where SeqVenda='+intToStr(VendaId);
   qryModific.ExecSQL;
end;

procedure TfrmFechaLocacao.ImprimirRecibo;
Var RvRecibo   : TRvProject;
    edtMascara : TbsSkinEdit;
    sdtsBuscaDados : TsimpleDataSet;
    sdtsBuscaServico : TsimpleDataSet;
    lsTelefone1 : String;
    lsTelefone2 : String;
    lscnpj      : String;
    lsSeparador : String;
    dados_Recibo : TRvDataSetConnection;
    lsProdutos : String;
    lsVirgula : String;
begin
    Try

      cdsEmpresa.Open;

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

      rvRecibo.SetParam('Aluno01', pNomeCliente );
      rvRecibo.SetParam('Numero', 'Nº '+ pcodigoCliente );
      rvRecibo.SetParam('CPF2','C.P.F. '+pCnpj );


      rvRecibo.SetParam('Empresa', sdtsBuscaDados.FieldByName('Nome_Fantasia').AsString );
      rvRecibo.SetParam('endereco',sdtsBuscaDados.FieldByName('Endereco').AsString+' '+
                                   sdtsBuscaDados.FieldByName('Bairro').AsString+' '+
                                   sdtsBuscaDados.FieldByName('Cidade').AsString+'-'+
                                   sdtsBuscaDados.FieldByName('UF').AsString+' Cep '+sdtsBuscaDados.FieldByName('Cep').AsString );
      rvRecibo.SetParam('CNPJ','C.N.P.J.: '+lsCnpj+' - Telefones '+lsTelefone1+' - '+lsTelefone2 );
      rvRecibo.SetParam('email','E-MAIL.: '+sdtsBuscaDados.FieldByName('Email').AsString);

      sdtsBuscaServico := TsimpleDataSet.create(Application);
      sdtsBuscaServico.Connection := gConexao.conection;
      cdsItensVendasTmp.first;
      while not cdsItensVendasTmp.Eof do
      begin
        if cdsItensVendasTmp.fieldByname('Marcado').AsString='X' then
        Begin
          lsProdutos := lsProdutos+lsVirgula+cdsItensVendasTmp.fieldByname('Descricao').AsString;
          lsVirgula := ',';
        End;
        cdsItensVendasTmp.Next;
      end;


      rvRecibo.SetParam('obs','          Recebemos de '+pNomeCliente+' CPF/CNPJ '+pCnpj + ' a importância de R$ '+edtVlr_Recebido.text+'( '+
                        valorPorExtenso(StrToFloat(edtVlr_Recebido.text))+' ) '+'referente ao pagamento da locação de '+lsProdutos+' durante o '+
                        'periodo de '+edtData_Venda.Text+' a '+edtDataDevolucao.text+' '+
                        'pelo que firmo e dou plena quitação' );

      rvRecibo.SetParam('Valor','R$ '+FormatFloat('0.00',StrTofloat(edtVlr_Recebido.Text)));
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

procedure TfrmFechaLocacao.btnRemoverClick(Sender: TObject);
begin
   if cdsTempPagamentos.IsEmpty then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja excluir este registro', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtVlr_Recebido.text   := FormatFloat('0.00',Strtofloat(edtVlr_Recebido.text)-cdsTempPagamentos.FieldByName('Valor').AsFloat);
      cdsTempPagamentos.Delete;
   End;
end;

procedure TfrmFechaLocacao.cdsItensVendasTmpBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmFechaLocacao.cmbNome_formaPagamentoChange(Sender: TObject);
begin
   If cmbNome_formaPagamento.KeyValue <> Null Then
      edtcod_Pagamento.Text := cmbNome_formaPagamento.KeyValue;
end;

procedure TfrmFechaLocacao.cmbNome_formaPagamentoExit(Sender: TObject);
begin
   try
     edtPco_Venda.SetFocus
   Except
   end;
end;

procedure TfrmFechaLocacao.edtcod_PagamentoExit(Sender: TObject);
begin
   if Trim(edtCod_Pagamento.text) <> '' Then
   Begin
      cmbNome_formaPagamento.KeyValue :=  edtCod_Pagamento.Text;
      if trim(cmbNome_formaPagamento.text) = '' Then
      Begin
         CaixaMensagem( 'Produto não encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Pagamento.Setfocus;
      End;
   End;
end;

procedure TfrmFechaLocacao.edtDataDevolucaoChange(Sender: TObject);
begin
  AtualizarGrid;
end;

procedure TfrmFechaLocacao.edtTotalTituloExit(Sender: TObject);
begin
   AtualizaSaldoDevedor;
end;

procedure TfrmFechaLocacao.AtualizaSaldoDevedor;
begin
   edtSaldoDevedor.text := FormatFloat('0.00',Strtofloat(edtTotalTitulo.text)-(strtofloat(edtVlr_Recebido.Text)+strtofloat(edtPrePagamento.Text)));
end;


procedure TfrmFechaLocacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  { if frmFechaLocacao.tag=0 Then
   Begin
      CaixaMensagem( 'Click no botão Receber para finalizar ', ctAviso, [ cbOk ], 0 );
      CanClose := False;
      Exit;
   End;}
end;

Procedure TfrmFechaLocacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key=13 then
   begin
      SelectNext( ActiveControl, True, True );
      Key := 0;
   end;
end;

procedure TfrmFechaLocacao.FormShow(Sender: TObject);
begin
   cdsTempPagamentos.EmptyDataSet;
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoPagamento,TipoLancamento,Prazo from T_formasPagamento  ';

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;
   edtDataDevolucao.date := RetornarDataSistema;
   AtualizarGrid;
   cmbNome_formaPagamento.KeyValue := 1;
   try
      edtTotalTitulo.setfocus;
   finally

   end;

end;
procedure TfrmFechaLocacao.AtualizarGrid;
var Total : Real;
begin
   cdsItensVendasTmp.First;
   while not cdsItensVendasTmp.Eof do
   begin
     if cdsItensVendasTmp.FieldByName('Marcado').AsString='X' then
     begin
        cdsItensVendasTmp.Edit;
        cdsItensVendasTmp.FieldByName('Dias').AsInteger  := RetornarNumeroDias(StrtoDate(edtData_Venda.Text),edtDataDevolucao.Date );
        if AnsiSameText( cdsItensVendasTmp.fieldByName('TipoCobranca').AsString,'diario') then
           cdsItensVendasTmp.FieldByName('Total').AsFloat := (cdsItensVendasTmp.FieldByName('Quantidade').AsFloat * cdsItensVendasTmp.FieldByName('Diaria').AsFloat) *  cdsItensVendasTmp.FieldByName('Dias').AsInteger
        else
           cdsItensVendasTmp.FieldByName('Total').AsFloat := (cdsItensVendasTmp.FieldByName('Quantidade').AsFloat * cdsItensVendasTmp.FieldByName('Diaria').AsFloat);
                                          
        Total := Total + cdsItensVendasTmp.FieldByName('Total').AsFloat;
        cdsItensVendasTmp.Post;
     end;
     cdsItensVendasTmp.Next;
   end;
   edtTotalTitulo.Text := FormatFloat('0.00',Total);
   AtualizaSaldoDevedor;
end;

procedure TfrmFechaLocacao.DevolverItem( VendaID : Integer; DadosItens : TClientDataSet);
Begin

   qryItensDevolucoes.Close;
   qryItensDevolucoes.SQL.Text :='Select * from T_ItensDevolucoes where 1=2';

   cdsItensDevolucoes.Close;
   cdsItensDevolucoes.ProviderName := dspItensDevolucoes.Name;
   cdsItensDevolucoes.Open;

   cdsItensDevolucoes.Append;
   cdsItensDevolucoes.FieldByName('Cod_Produto').asInteger      := DadosItens.FieldByName('Codigo').asInteger;
   cdsItensDevolucoes.FieldByName('SeqVenda').asInteger         := VendaID;
   cdsItensDevolucoes.FieldByName('Qtde_Devolvida').asFloat     := DadosItens.FieldByName('Quantidade').asInteger;
   cdsItensDevolucoes.FieldByName('Pco_Venda').asFloat          := DadosItens.FieldByName('Diaria').asFloat;
   cdsItensDevolucoes.FieldByName('Pco_Custo').asFloat          := 0;
   cdsItensDevolucoes.FieldByName('Data_Cad').asDateTime        := now;
   cdsItensDevolucoes.FieldByName('Data_Devolucao').asDateTime  := RetornarDataSistema;
   cdsItensDevolucoes.FieldByname('Operador').AsString          := gsOperador;
   cdsItensDevolucoes.FieldByname('Cod_Emp').AsString           := gsCod_Emp;
   cdsItensDevolucoes.FieldByName('Data_Mov').asDateTime        := RetornarDataSistema;
   cdsItensDevolucoes.Post;
   cdsItensDevolucoes.ApplyUpdates(-1);

End;

end.
