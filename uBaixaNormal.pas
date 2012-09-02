unit uBaixaNormal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, EditNew, BusinessSkinForm, FMTBcd, SqlExpr,sqlTimSt, DB,
  Provider, DBClient, bsdbctrls, bsSkinGrids, bsDBGrids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, uDaoCaixaMovimento;

type
  TfrmBaixaNormal = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnReceber: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    SkinForm: TbsBusinessSkinForm;
    bsSkinGroupBox1: TbsSkinGroupBox;
    edtNomeCliente: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtCnpjcpf: TbsSkinEdit;
    lbldocumento: TbsSkinStdLabel;
    edtDocumento: TbsSkinEdit;
    lblvencimento: TbsSkinStdLabel;
    edtTotalTitulo: TEditN;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtVenciemento: TbsSkinEdit;
    bsSkinGroupBox2: TbsSkinGroupBox;
    bsSkinStatusBar1: TbsSkinStatusBar;
    qryModific: TSQLQuery;
    edtNrVenda: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtData_Pagamento: TbsSkinDateEdit;
    srcPagamento: TDataSource;
    cdsPagamento: TClientDataSet;
    dspPagamento: TDataSetProvider;
    qryPagamento: TSQLQuery;
    Cod_Cliente: TbsSkinEdit;
    edtCod_FormaPagamento: TbsSkinEdit;
    edtData_Emissao: TbsSkinEdit;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnRemover: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    btnAdicionar: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    dbgConsulta: TbsSkinDBGrid;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    edtcod_Pagamento: TbsSkinEdit;
    cmbCod_formaPagamento: TbsSkinDBLookupComboBox;
    cmbNome_formaPagamento: TbsSkinDBLookupComboBox;
    edtPco_Venda: TEditN;
    bsSkinStdLabel8: TbsSkinStdLabel;
    cdsCadFormasPagamento: TClientDataSet;
    srcCadFormasPagamento: TDataSource;
    dspVariavel: TDataSetProvider;
    QryVariavel: TSQLQuery;
    edtVlr_Recebido: TbsSkinEdit;
    lblTroco: TbsSkinStatusPanel;
    edtTotalReceber: TbsSkinEdit;
    cdsTempPagamentos: TClientDataSet;
    srcTempPagamentos: TDataSource;
    cdsTempPagamentosCodigo: TStringField;
    cdsTempPagamentosDescricao: TStringField;
    cdsTempPagamentosValor: TFloatField;
    edtControle: TbsSkinEdit;
    edtVlr_Desconto: TbsSkinNumericEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbTipoDesconto: TbsSkinComboBox;
    panelRecebimento: TbsSkinExPanel;
    cxGrid1: TcxGrid;
    GridCtasClientes: TcxGridDBTableView;
    Column_Nome_Status: TcxGridDBColumn;
    GridCtasClientesDocumento: TcxGridDBColumn;
    GridCtasClientesColumn1: TcxGridDBColumn;
    GridCtasClientesCod_Cliente: TcxGridDBColumn;
    GrifCtasreceberDescricao: TcxGridDBColumn;
    GridCtasClientesData_Emissao: TcxGridDBColumn;
    GridCtasClientesData_Vencimento: TcxGridDBColumn;
    Columm_Data_Pagamento: TcxGridDBColumn;
    GridCtasClientesvlr_Areceber: TcxGridDBColumn;
    GridCtasClientesVlr_Recebido: TcxGridDBColumn;
    GridCtasClientesHistorico: TcxGridDBColumn;
    GridCtasClientesData_Atu: TcxGridDBColumn;
    GridCtasClientesseqvenda: TcxGridDBColumn;
    GridCtasClientesOperador: TcxGridDBColumn;
    GridCtasClientesData_Cad: TcxGridDBColumn;
    GridCtasClientessequencia: TcxGridDBColumn;
    GridCtasClientesCod_FormaPagamento: TcxGridDBColumn;
    GridCtasClientesCod_emp: TcxGridDBColumn;
    GridCtasClientesVlr_Desconto: TcxGridDBColumn;
    GridCtasClientesVlr_Comissao: TcxGridDBColumn;
    GridCtasClientesVlr_Devolvido: TcxGridDBColumn;
    GridCtasClientesColumn2: TcxGridDBColumn;
    Columm_Nome_Rota: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    srcPesquisa: TDataSource;
    dspPesquisa: TDataSetProvider;
    QryPesquisa: TSQLQuery;
    cdsPesquisa: TClientDataSet;
    cdsItensVendas: TClientDataSet;
    cdsVendas: TClientDataSet;
    cdsTempPagamentosTipoLancamento: TIntegerField;
    cdsTempPagamentosCod_Caixa: TIntegerField;
    edtCod_Caixa: TbsSkinEdit;
    procedure FormShow(Sender: TObject);
    procedure btnReceberClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbCod_formaPagamentoChange(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
    procedure edtcod_PagamentoExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure edtPco_VendaExit(Sender: TObject);
    procedure cdsTempPagamentosBeforeOpen(DataSet: TDataSet);
    procedure btnRemoverClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtVlr_DescontoExit(Sender: TObject);
    procedure GridCtasClientesCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    lrDesc : Real;
    pbeServico : Boolean;
    { Public declarations }
  end;

var
  frmBaixaNormal: TfrmBaixaNormal;

implementation

uses uPrincipal,Ufuncoes,UnitDeclaracoes,uClassDaoContaCorrente,uClassContaCorrente,
  uDaoVenda,uClassVenda,uDaoFuncionario,uClassLancamento,uClassContaReceber,uDaoContaReceber;

{$R *.dfm}

procedure TfrmBaixaNormal.FormCreate(Sender: TObject);
begin
  pbeServico := False;
end;

procedure TfrmBaixaNormal.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoLancamento from T_formasPagamento  '+
                          'where TipoPagamento=:parTipoPagamento '+
                          'order by Descricao' ;
   qryVariavel.ParamByName('parTipoPagamento').AsString := '0'; // A vista

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;

   qryPesquisa.Close;
   qryPesquisa.SQL.Text :=  'Select Rota.Descricao as Nome_Rota, Cli.Descricao, Cli.CnpjCpf, Ven.Controle, Ven.Tipo_Venda, Rec.* '+
                            'from T_CtasReceber Rec, T_Clientes Cli, T_Vendas ven, T_Rotas Rota '+
                            'where Cli.Codigo=Rec.Cod_Cliente and ven.Seqvenda=Rec.Seqvenda And Rota.Codigo=Cli.Cod_Rota ';
   qryPesquisa.SQL.Add(' And Cli.Codigo   =:parPesquisa ');
   qryPesquisa.SQL.Add('And Rec.Status =:parStatus ');
   qryPesquisa.ParamByName('parPesquisa').AsString  := Cod_Cliente.Text;
   qryPesquisa.ParamByName('parStatus').AsInteger   := 0;

   cdsPesquisa.Close;
   cdsPesquisa.ProviderName := dspPesquisa.Name;
   cdsPesquisa.Open;

   panelRecebimento.Visible   := False;
   panelRecebimento.RollState := False;

   edtcod_Pagamento.SetFocus;

   edtTotalReceber.text := edtTotalTitulo.Text;
   edtData_Pagamento.Date := gsData_Mov;
   cdsTempPagamentos.EmptyDataSet;

end;

procedure TfrmBaixaNormal.GridCtasClientesCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   edtDocumento.Text    := cdsPesquisa.FieldByName('Documento').AsString;
   edtNomeCliente.Text  := cdsPesquisa.FieldByName('Descricao').AsString;
   edtVenciemento.Text  := FormatDateTime('dd/mm/yyyy',cdsPesquisa.FieldByName('Data_Vencimento').AsDateTime);
   edtTotalTitulo.Text  := FormatFloat('0.00',cdsPesquisa.FieldByName('Vlr_Areceber').AsFloat);
   edtCnpjcpf.Text      := cdsPesquisa.FieldByName('Cnpjcpf').AsString;
   edtNrVenda.Text      := cdsPesquisa.FieldByName('Seqvenda').AsString;
   edtControle.Text     := cdsPesquisa.FieldByName('Controle').AsString;
   Cod_Cliente.Text     := cdsPesquisa.FieldByName('Cod_Cliente').AsString;
   edtData_Emissao.Text := FormatDateTime('dd/mm/yyyy',cdsPesquisa.FieldByName('Data_Emissao').AsDatetime);
   edtCod_FormaPagamento.Text  := cdsPesquisa.FieldByName('Cod_FormaPagamento').AsString;
   edtTotalReceber.text        := edtTotalTitulo.Text;
   edtData_Pagamento.Date      := gsData_Mov;
   panelRecebimento.Visible    := False;
   panelRecebimento.RollState  := False;
   btnReceber.Enabled          := True;
   edtcod_Pagamento.SetFocus;
end;

procedure TfrmBaixaNormal.btnReceberClick(Sender: TObject);
var lsupDate        : String;
    lsTexto         : String;
    trdNrTransacao  : TTransactionDesc;
    liRetorno       : Integer;
    lsNumeroCupom   : String;
    lsFormaPagamento: String;
    DadosContaCorrente : TContaCorrente;
    GravaContaCorrente : TDaoContaCorrente;
    lrValorRecebido    : Double;
  DaoVenda: TdaoVenda;
  TotalPago: Real;
  Parametros: TStringList;
  Venda : TVenda;
  DaoFuncionario : TDaoFuncionario;
  loDaoMovCaixa : TDaoCaixamovimento;
  lolancamento : TLancamento;
  loContaAReceber : TContaReceber;
  loDaoContaReceber : TdaoContaReceber;
begin
   lrValorRecebido := 0;
   if frmBaixaNormal.Tag <> 2 then
   Begin
      if StrTofloat(edtVlr_Recebido.Text)=0 Then
      Begin
         CaixaMensagem( 'O valor recebido não pode ser 0 (ZERO) ', ctAviso, [ cbOk ], 0 );
         Exit
      End;

      if (strTofloat(edtVlr_Recebido.text) > strTofloat(edtTotalTitulo.text)) and ( lblTroco.Caption <> 'Troco' ) Then
      Begin
         CaixaMensagem( 'O valor recebido não pode ser maior que o do titulo ', ctAviso, [ cbOk ], 0 );
         Exit
      End;

      if StrTofloat(edtVlr_Recebido.Text)< (StrTofloat(edtTotalTitulo.Text)-StrTofloat(edtVlr_Desconto.Text)) then
      Begin
         if not CaixaMensagem( 'Deseja Efetuar o pagamento Parcial do titulo '+edtDocumento.text, ctConfirma, [ cbSimNao ], 0 )  Then
            Exit;
      End;



      if CaixaMensagem( 'Confirma o recebimento Documento -> '+edtDocumento.text, ctConfirma, [ cbSimNao ], 0 )  Then
      Begin

         if not frmPrincipal.dbxPrincipal.InTransaction then
         begin
            trdNrTransacao.IsolationLevel := xilREADCOMMITTED;
            frmPrincipal.dbxPrincipal.StartTransaction( trdNrTransacao );
         end;

         //  lancamento do caixa conforme venda
         lsFormaPagamento :='Dinheiro';
         cdsTempPagamentos.First;
         while not cdsTempPagamentos.Eof Do
         Begin
            lsTexto := '';
            lsFormaPagamento := cdsTempPagamentos.FieldByname('Descricao').AsString;
            if pbeServico then
               lsTexto := ' O.S Nº '+edtControle.Text;

            case cdsTempPagamentos.FieldByname('TipoLancamento').AsInteger of
               0 : // Lancamento no Caixa
               Begin
                  Try

                     loDaoMovCaixa := TDaoCaixamovimento.Create(gConexao);
                     try
                        if loDaoMovCaixa.RetornarUltimoTurno(gsData_Mov,cdsTempPagamentos.FieldByName('Cod_Caixa').AsInteger ) = gParametros.Ler( '', '[CONTASRECEBER]', 'NumeroDeTurnos', '0' ,gsOperador ) then
                        begin
                           CaixaMensagem( 'O numero maximo de turnos para este caixa foi atingido ', ctAviso, [ cbOk ], 0 );
                           exit;
                        end;
                        lolancamento := TLancamento.Create;
                        lolancamento.Cod_Caixa          := cdsTempPagamentos.FieldByName('Cod_Caixa').AsInteger;
                        lolancamento.Valor              := cdsTempPagamentos.FieldByName('Valor').AsFloat;
                        If lblTroco.Caption = 'Troco' Then
                           lolancamento.Valor           := cdsTempPagamentos.FieldByName('Valor').AsFloat;
                        lolancamento.Historico          := 'Recebimento de Venda nº '+edtNrVenda.Text+lstexto;qryModific.Close;
                        lolancamento.Data_Lancamento    := StrToDateTime(edtData_Pagamento.Text);
                        lolancamento.D_C                := 'C';
                        lolancamento.SeqVenda           := StrtoInt(edtNrVenda.Text);
                        lolancamento.Cod_tipoDespesa    := '0101';
                        lolancamento.Sequencia          := Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8);
                        lolancamento.Cod_FormaPagamento := strToInt(cdsTempPagamentos.FieldByName('Codigo').AsString);
                        lolancamento.Operador           := gsOperador;
                        loDaoMovCaixa.Lancar(lolancamento);
                     finally
                        FreeAndNil(loDaoMovCaixa);
                        FreeAndNil(lolancamento);
                     end;
                     lrValorRecebido := lrValorRecebido + cdsTempPagamentos.FieldByName('Valor').AsFloat;
                  Except
                     frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                     Exit;
                  End;
               End;
               1 : // Lancamento no contas a receber
               Begin
                  QryPagamento.Close;
                  qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';
                  Try
                     cdsPagamento.Close;
                     cdsPagamento.ProviderName := dspPagamento.name;
                     cdsPagamento.Open;

                     cdsPagamento.Append;
                     cdsPagamento.FieldByName('Sequencia').AsInteger          := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
                     cdsPagamento.FieldByName('Vlr_Areceber').AsFloat         := cdsTempPagamentos.FieldByName('Valor').AsFloat;
                     cdsPagamento.FieldByName('Vlr_Original').AsFloat         := cdsTempPagamentos.FieldByName('Valor').AsFloat;
                     cdsPagamento.FieldByName('Data_Vencimento').AsDateTime   := StrToDateTime(edtVenciemento.Text);
                     cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
                     cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := StrToDateTime(edtData_Emissao.Text);
                     cdsPagamento.FieldByName('Historico').AsString           := '(Reagendamento) '+edtDocumento.Text;
                     cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := strToInt(Cod_Cliente.Text);
                     cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger := strToInt(cdsTempPagamentos.FieldByName('Codigo').AsString);
                     cdsPagamento.FieldByName('SeqVenda').AsInteger           := StrToInt(edtNrVenda.text);
                     cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
                     cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
                     cdsPagamento.FieldByname('Documento').AsString           := Copy(edtDocumento.text,1,8)+IncZero(IntToStr(StrToInt(Copy(edtDocumento.text,9,3))+1),3);
                     cdsPagamento.FieldByName('Status').AsInteger             := 0;
                     cdsPagamento.FieldByname('Tipo_Baixa').AsString          := 'AB';
                     cdsPagamento.FieldByname('Cod_Caixa').AsInteger          := cdsTempPagamentos.FieldByName('Cod_Caixa').AsInteger;
                     cdsPagamento.Post;
                     cdsPagamento.ApplyUpdates(-1);
                  Except
                     frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                     Exit;
                  End;
               End;
               2 :  // Lancamento no conta corrente
               Begin
                  DadosContaCorrente := TContaCorrente.Create;
                  GravaContaCorrente := TDaoContaCorrente.Create;
                  DadosContaCorrente.D_C         := 'D';
                  DadosContaCorrente.Valor       := cdsTempPagamentos.FieldByName('Valor').AsFloat;
                  DadosContaCorrente.Cod_Cliente := strToInt(Cod_Cliente.Text);
                  DadosContaCorrente.Historico   := 'Debito pagamento da Venda nº '+edtNrVenda.Text;
                  DadosContaCorrente.Documento   := StrtoInt(edtNrVenda.Text);
                  lrValorRecebido := lrValorRecebido + cdsTempPagamentos.FieldByName('Valor').AsFloat;
                  IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
                  Begin
                     CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
                     frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
                     Exit;
                  End;
               End;
            End;
            TotalPago := TotalPago + cdsTempPagamentos.FieldByName('Valor').AsFloat;
            cdsTempPagamentos.Next;
         End;
         //  lancamento do caixa conforme venda


         // atualização do contas a receber
         Try
            loContaAReceber := TContaReceber.Create;
            loDaoContaReceber := TdaoContaReceber.Create(gConexao);

            loContaAReceber.Documento      := edtDocumento.Text;
            loContaAReceber.Data_Pagamento := edtData_Pagamento.Date;
            loContaAReceber.Data_Atu       := now;
            loContaAReceber.Operador       := gsOperador;
            loContaAReceber.Status         := 1;
            loContaAReceber.Tipo_Baixa     := 'PT';
            if (Arredondar(StrToFloat(edtTotalReceber.Text),2)> 0) or (Arredondar(lrValorRecebido,2) < Arredondar(strToFloat(edtTotalTitulo.text),2)) Then
                loContaAReceber.Tipo_Baixa := 'PP';
            loContaAReceber.vlr_Desconto   := strTofloat(edtVlr_Desconto.Text);
            loContaAReceber.Vlr_Recebido   := lrValorRecebido;
            If lblTroco.Caption = 'Troco' Then
            begin
               loContaAReceber.Vlr_Recebido := StrToFloat(edtTotalTitulo.text);
               loContaAReceber.Tipo_Baixa     := 'PT';
               TotalPago := StrToFloat(edtTotalTitulo.text);
            end;
            loDaoContaReceber.BaixarTitulo(loContaAReceber);

            DaoVenda := TdaoVenda.Create(gconexao);
            if loContaAReceber.Tipo_Baixa = 'PT' then
               DaoVenda.MarcarComoServicoPago(StrToint(edtNrVenda.Text));

            FreeAndNil(DaoVenda);
            FreeAndNil(loDaoContaReceber);
            FreeAndNil(loContaAReceber);
         Except
            frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
            Exit;
         End;
         If lblTroco.Caption = 'Troco' Then
            edtTotalReceber.Text := '0';

         if StrToFloat(edtTotalReceber.Text)> 0 Then
         Begin
            QryPagamento.Close;
            qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';
            Try
               cdsPagamento.Close;
               cdsPagamento.ProviderName := dspPagamento.name;
               cdsPagamento.Open;

               cdsPagamento.Append;
               cdsPagamento.FieldByName('Sequencia').AsInteger          := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
               cdsPagamento.FieldByName('Vlr_Areceber').AsFloat         := StrToFloat(edtTotalReceber.Text);
               cdsPagamento.FieldByName('Data_Vencimento').AsDateTime   := StrToDateTime(edtVenciemento.Text);
               cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
               cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := StrToDateTime(edtData_Emissao.Text);
               cdsPagamento.FieldByName('Historico').AsString           := 'Restante do Titulo '+edtDocumento.Text;
               cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := strToInt(Cod_Cliente.Text);
               cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger := strToInt(edtCod_FormaPagamento.Text);
               cdsPagamento.FieldByName('SeqVenda').AsInteger           := StrToInt(edtNrVenda.text);
               cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
               cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
               cdsPagamento.FieldByname('Documento').AsString           := Copy(edtDocumento.text,1,8)+IncZero(IntToStr(StrToInt(Copy(edtDocumento.text,9,3))+1),3);
               cdsPagamento.FieldByName('Status').AsInteger             := 0;
               cdsPagamento.FieldByname('Cod_Caixa').AsInteger          := StrToint(edtCod_Caixa.Text);
               cdsPagamento.Post;
               cdsPagamento.ApplyUpdates(-1);
            Except
               frmPrincipal.dbxPrincipal.Rollback( trdNrTransacao );
               Exit;
            End;
         End;
         frmPrincipal.dbxPrincipal.Commit( trdNrTransacao );
         if (pbeServico) and RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[ADMINISTRATIVO]', 'MarcaOsNoCaixa', 'NAO' ))) then
         Begin
            if CaixaMensagem( 'O Serviço '+edtcontrole.Text+' Foi Entregue ???', ctConfirma, [ cbSimNao ], 0 )  Then
            Begin
               qryModific.Close;
               qryModific.Params.Clear;
               qryModific.SQL.Text := 'Update T_vendas set Status=:parStatus Where seqvenda=:parSeqvenda ';
               qryModific.ParamByName('parSeqVenda').AsInteger := StrToInt(edtnrvenda.text);
               qryModific.ParamByName('parStatus').AsString    := '4';
               qryModific.ExecSQL;
            End;
         End;

         cdsPesquisa.Close;
         cdsPesquisa.ProviderName := dspPesquisa.Name;
         cdsPesquisa.Open;
         if cdsPesquisa.IsEmpty then
            Close
         Else
         Begin
            if RetornarVerdadeirOuFalso( Uppercase( gParametros.Ler( '', '[CONTASRECEBER]', 'BaixaMultiplosClientes', 'NAO' ))) then
            begin
               if CaixaMensagem( 'Deseja receber outro pagamento deste cliente ? ', ctConfirma, [ cbSimNao ], 0 )  Then
               Begin
                  btnReceber.Enabled := False;
                  cdsTempPagamentos.EmptyDataSet;
                  edtDocumento.Text    := '';
                  edtVenciemento.Text  := '';
                  edtNomeCliente.Text  := '';
                  edtCnpjcpf.Text      := '';
                  edtTotalTitulo.Text  := '0,00';
                  edtVlr_Desconto.Text := '0,00';
                  edtVlr_Recebido.Text := '0,00';
                  edtTotalReceber.Text := '0,00';
                  panelRecebimento.Visible   := True;
                  panelRecebimento.RollState := False;
               End
               Else
            end;
            Close;
         End;
      End;
   End;


   if (TotalPago>0) and ( RetornarVerdadeirOuFalso(gParametros.ler( '', '[IMPRESSAO]', 'ImprimeComprovanteBaixa','0',gsOperador ) ) ) then
   Begin
      Parametros := TStringList.Create;
      Parametros.Add(edtNrVenda.Text);
      cdsVendas := gConexao.BuscarDadosSQL('Select * From T_vendas Where SeqVenda=:parSeqVenda', Parametros );
      DaoVenda := TDaoVenda.Create(gConexao);
      Venda := DaoVenda.CarregarVenda(cdsVendas);
      Venda.ValorPendendente := StrToFloat(edtTotalTitulo.text);
      DaoFuncionario    := TDaoFuncionario.Create(gConexao);
      venda.Funcionario := Daofuncionario.Buscar(cdsVendas.FieldByName('Cod_Funcionario').AsInteger);
      venda.Numerovias  := StrtoInt(gParametros.ler( '', '[IMPRESSAO]', 'NumeroVias','1',gsOperador ));

      venda.Imprimir(cdsVendas,gConexao.BuscarDadosSQL('select Prod.Codigo,Prod.Descricao,Prod.unid as Unidade, Prod.QtdeEmbalagem, Itens.* '+
                                                              'from T_ItensVendas itens '+
                                                              '     left join T_produtos Prod on Prod.Codigo = Itens.Cod_Produto '+
                                                              'Where SeqVenda=:parSeqVenda',Parametros ),gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),TotalPago,
                                                              StrToint(gParametros.ler( '', '[IMPRESSAO]', 'TipoImpressora','0',gsOperador )));

   End;

   {$REGION 'impressao de cupom fiscal'}
   IF Uppercase( gParametros.Ler( '', '[CADASTRO]', 'LigarECF', 'NAO' )) = 'SIM' Then
   Begin
      QryVariavel.Close;
      QryVariavel.Params.Clear;
      QryVariavel.SQL.Text := 'Select NumeroCupom From T_vendas where SeqVenda=:parSeqVenda and Tipo_Venda=:parTipo_Venda ';
      QryVariavel.ParamByName('ParSeqVenda').AsInteger := StrToInt(edtNrVenda.Text);
      QryVariavel.ParamByName('parTipo_Venda').AsString :='P';

      cdsVendas.Close;
      cdsVendas.ProviderName := dspVariavel.Name;
      cdsVendas.Open;

      if (Trim(cdsVendas.FieldByName('NumeroCupom').AsString)='') And (not cdsVendas.IsEmpty) then
      Begin

         QryVariavel.Close;
         QryVariavel.Params.Clear;
         QryVariavel.SQL.Text := 'Select Prod.Descricao,Prod.Aliquota_ECF, Itens.* From T_Itensvendas Itens ' +
                                 'Left Join T_Produtos Prod On' +
                                 '     Prod.Codigo=Itens.Cod_Produto '+
                                 ' where SeqVenda=:parSeqVenda AND Tipo_Produto=:parTipo_Produto ';
         QryVariavel.ParamByName('parSeqVenda').AsInteger      := StrToInt(edtNrVenda.Text);
         QryVariavel.ParamByName('parTipo_Produto').AsInteger  := 0;

         cdsItensVendas.Close;
         cdsItensVendas.ProviderName := dspVariavel.Name;
         cdsItensVendas.Open;

         If not cdsItensVendas.IsEmpty Then
         Begin
            liRetorno := Bematech_FI_AbreCupom( '');
            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar abrir o cupom "' +  '" no ECF!!!', ctErro, [ cbOK ], 0 );
               Exit;
            End;
            lsNumeroCupom := IncDigito( '', ' ', 6, 0 );
            liRetorno := Bematech_FI_NumeroCupom( lsNumeroCupom );

            If liRetorno <> 1 Then
            Begin
               CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar abrir o cupom "' +  '" no ECF!!!', ctErro, [ cbOK ], 0 );
               Exit;
            End;

            while Not cdsItensVendas.Eof do
            Begin
                liRetorno := Bematech_FI_VendeItem( cdsItensVendas.fieldbyname('Cod_Produto').AsString,
                                                   Copy(cdsItensVendas.fieldbyname('Descricao').AsString, 1, 29 ),
                                                   Trim(cdsItensVendas.fieldbyname('Aliquota_ECF').AsString),
                                                   'F',
                                                   FormatFloat( '0000000', ( cdsItensVendas.fieldbyname('Qtde_Venda').AsFloat * 1000 ) ),
                                                   2,
                                                   FormatFloat( '000', ( cdsItensVendas.fieldbyname('Pco_Venda').AsFloat * 100 ) ),
                                                   '$',
                                                   FormatFloat( '00000000', cdsItensVendas.fieldbyname('vlr_Desconto').AsFloat * 100 ) );
              If liRetorno <> 1 Then
              Begin
                 CaixaMensagem( 'Erro "' + IntToStr( liRetorno ) + '" ao tentar imprimir o item "' + cdsItensVendas.fieldbyname('Cod_Produto').AsString+ '" no ECF!!!', ctErro, [ cbOK ], 0 );
                 Exit;
              End;
              cdsItensvendas.Next;
            End;
           Bematech_FI_FechaCupomResumido( 'Dinheiro','Obrigado e volte sempre');
         End
         Else
         Begin
            CaixaMensagem( 'Item da Venda não Localizado ', ctAviso, [ cbOk ], 0 );
            Exit
         End;
         if lsNumeroCupom<>'000000' then
         Begin
            QryModific.Close;
            QryModific.sql.Text := 'Update T_vendas set NumeroCupom=:parNumeroCupom where seqvenda=:parSeqVenda ';
            QryModific.ParamByName('parNumeroCupom').asString := lsNumeroCupom;
            QryModific.ParamByName('parSeqVenda').asInteger   :=  StrToInt(edtNrVenda.Text);
            QryModific.ExecSQL;
         End;
      End;
   End;

   {$ENDREGION}

end;

procedure TfrmBaixaNormal.btnRemoverClick(Sender: TObject);
begin
   if cdsTempPagamentos.IsEmpty then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja excluir este registro', ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtVlr_Recebido.text   := FormatFloat('0.00',Strtofloat(edtVlr_Recebido.text)-cdsTempPagamentos.FieldByName('Valor').AsFloat);
      edtTotalReceber.text   := FormatFloat('0.00',strTofloat(edtTotalTitulo.Text)-StrTofloat(edtVlr_Recebido.text));
      cdsTempPagamentos.Delete;
   End;
end;

procedure TfrmBaixaNormal.cdsTempPagamentosBeforeOpen(DataSet: TDataSet);
var licont : Integer;
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;
end;

procedure TfrmBaixaNormal.cmbCod_formaPagamentoChange(Sender: TObject);
begin
   cmbNome_formaPagamento.keyvalue := cmbCod_FormaPagamento.keyvalue;
   edtcod_Pagamento.Text := cmbCod_FormaPagamento.Text;
end;

procedure TfrmBaixaNormal.cmbNome_formaPagamentoChange(Sender: TObject);
begin
   cmbCod_formaPagamento.keyvalue := cmbNome_FormaPagamento.keyvalue;
   edtcod_Pagamento.Text := cmbCod_FormaPagamento.Text;
end;

procedure TfrmBaixaNormal.edtcod_PagamentoExit(Sender: TObject);
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

procedure TfrmBaixaNormal.edtPco_VendaExit(Sender: TObject);
begin
   btnAdicionarClick(btnAdicionar);
   edtcod_Pagamento.SetFocus;
end;

procedure TfrmBaixaNormal.edtVlr_DescontoExit(Sender: TObject);
var lrPerc_Desconto : Double;
    lrdesconto      : Double;
begin
   if StrToFloat(edtVlr_Desconto.Text)>0 then
   Begin
      if (cmbTipoDesconto.ItemIndex=1) Then
      Begin
         lrdesconto := Arredondar((StrToFloat(edtTotalTitulo.Text)*Strtofloat(edtVlr_Desconto.Text)/100),2);
         edtVlr_Desconto.text    := FormatFloat('0.00',lrdesconto);
         cmbTipoDesconto.ItemIndex := 0;
      End;
      lrPerc_Desconto := arredondar((StrToFloat(edtVlr_Desconto.Text)/StrToFloat(edtTotalTitulo.Text)) * 100,2);

      if lrPerc_Desconto > gsPerfilAcesso.Desc_Maximo then
      Begin
         CaixaMensagem( 'O valor do desconto ultrapassa sua margem de '+formatFloat('0.00',gsPerfilAcesso.Desc_Maximo), ctAviso, [ cbOk ], 0 );
         edtVlr_Desconto.SetFocus;
         Exit;
      End;
      edtTotalReceber.text   := FormatFloat('0.00',strTofloat(edtTotalTitulo.Text)-( StrTofloat(edtVlr_Desconto.text) + StrTofloat(edtVlr_Recebido.Text ) ) );
   End;
end;

procedure TfrmBaixaNormal.btnAdicionarClick(Sender: TObject);
begin
   cdsTempPagamentos.Append;
   cdsTempPagamentos.FieldByName('Codigo').AsString          := inczero(edtcod_Pagamento.Text,3);
   cdsTempPagamentos.FieldByName('Descricao').AsString       := cmbNome_FormaPagamento.text;
   cdsTempPagamentos.FieldByName('valor').AsFloat            := strtofloat(edtPco_Venda.Text);
   cdsTempPagamentos.FieldByName('TipoLancamento').AsInteger := cdsCadFormasPagamento.FieldByName('TipoLancamento').AsInteger;
   cdsTempPagamentos.FieldByName('Cod_Caixa').AsInteger      := StrToint(edtCod_Caixa.Text);
   cdsTempPagamentos.Post;
   edtVlr_Recebido.text   := FormatFloat('0.00',Strtofloat(edtVlr_Recebido.text)+strtofloat(edtPco_Venda.Text));
   edtTotalReceber.text   := FormatFloat('0.00',strTofloat(edtTotalTitulo.Text)-( StrTofloat(edtVlr_Recebido.text)+strToFloat(edtVlr_Desconto.Text) ) );
   lblTroco.Caption           := 'Total a Receber';
   lblTroco.DefaultFont.Color := clNavy;
   edtTotalReceber.Font.Color := clNavy;
   lblTroco.Refresh;
   if ( strTofloat(edtTotalReceber.text) < 0 ) and
      ( cdsTempPagamentos.RecordCount = 1 ) and
      ( Uppercase(cmbNome_FormaPagamento.Text)='DINHEIRO') Then
   begin
       edtTotalReceber.text       := FormatFloat('0.00',StrTofloat(edtTotalReceber.text)*-1);
       edtTotalReceber.Font.Color := clred;
       lblTroco.Caption := 'Troco';
       lblTroco.DefaultFont.Color := clred;
       lblTroco.Refresh;
   end;

   edtcod_Pagamento.Text  := '';
   cmbCod_formaPagamento.KeyValue   := null;
   cmbNome_formaPagamento.KeyValue  := Null;
   edtPco_Venda.Text                := '0,00'
end;

procedure TfrmBaixaNormal.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.

