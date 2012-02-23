unit uPrePagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinGrids, bsDBGrids, bsSkinCtrls, DB, DBClient, StdCtrls, EditNew,
  bsdbctrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin, ComCtrls, FMTBcd, SqlExpr,sqltimst,
  SimpleDS, Provider, BusinessSkinForm,uclassVenda, RDprint;

type
  TfrmPrePagamento = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    edtNumeroOs: TbsSkinEdit;
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
    edtPco_Venda: TEditN;
    cdsTempPagamentos: TClientDataSet;
    cdsTempPagamentosCodigo: TStringField;
    cdsTempPagamentosDescricao: TStringField;
    cdsTempPagamentosValor: TFloatField;
    srcTempPagamentos: TDataSource;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    edtTotGeral_os: TbsSkinEdit;
    dbgConsulta: TbsSkinDBGrid;
    qryModific: TSQLQuery;
    srcCadFormasPagamento: TDataSource;
    cdsCadFormasPagamento: TClientDataSet;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    sdtsPesqOS: TSimpleDataSet;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtTotalTitulo: TEditN;
    SkinForm: TbsBusinessSkinForm;
    qryPagamento: TSQLQuery;
    dspPagamento: TDataSetProvider;
    cdsPagamento: TClientDataSet;
    srcPagamento: TDataSource;
    cdsTempPagamentosTipoPagamento: TIntegerField;
    cdsTempPagamentosPrazo: TStringField;
    QryMovCaixa: TSQLQuery;
    dspMovCaixa: TDataSetProvider;
    cdsMovCaixa: TClientDataSet;
    srcMovCaixa: TDataSource;
    cdsTempPagamentosseqos: TIntegerField;
    lblNome: TbsSkinStdLabel;
    edtVlr_Recebido: TbsSkinEdit;
    btnPesquisa: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    lblNome_cliente: TbsSkinLabel;
    cmbTipoPesquisa: TbsSkinComboBox;
    RDprint1: TRDprint;
    procedure edtcod_PagamentoExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumeroOsExit(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrePagamento: TfrmPrePagamento;

implementation

uses uPrincipal,ufuncoes, uConsultasSemSinalPago, uDaoVenda;
{$R *.dfm}

procedure TfrmPrePagamento.btnAdicionarClick(Sender: TObject);
begin
   if not cdsTempPagamentos.Locate('SeqOs',StrtoInt(edtNumeroOs.Text),[]) Then
      edtTotGeral_os.text := FormatFloat('0.00',Strtofloat(edtTotGeral_os.text)+strtofloat(edtTotalTitulo.Text));
   cdsTempPagamentos.Append;
   cdsTempPagamentos.FieldByName('Codigo').AsString         := inczero(edtcod_Pagamento.Text,3);
   cdsTempPagamentos.FieldByName('Descricao').AsString      := cmbNome_FormaPagamento.text;
   cdsTempPagamentos.FieldByName('Prazo').AsString          := cdsCadFormasPagamento.FieldByName('Prazo').AsString;
   cdsTempPagamentos.FieldByName('TipoPagamento').AsInteger := cdsCadFormasPagamento.FieldByName('TipoPagamento').AsInteger;
   cdsTempPagamentos.FieldByName('valor').AsFloat           := strtofloat(edtPco_Venda.Text);
   cdsTempPagamentos.FieldByName('SeqOs').AsFloat           := StrtoInt(edtNumeroOs.Text);
   cdsTempPagamentos.Post;
   edtVlr_Recebido.text             := FormatFloat('0.00',Strtofloat(edtVlr_Recebido.text)+strtofloat(edtPco_Venda.Text));
   edtcod_Pagamento.Text            := '';
   cmbNome_formaPagamento.KeyValue  := Null;
   edtPco_Venda.Text                := '0,00'
end;

procedure TfrmPrePagamento.btnFecharClick(Sender: TObject);
begin
   frmPrePagamento.Tag := 0;
   close;
end;

procedure TfrmPrePagamento.btnokClick(Sender: TObject);
var liseqParcela    : Integer;
    liqtde_Parcelas : Integer;
    I               : Integer;
    lsPrazo         : String;
    DaoVenda        : TDaoVenda;
    Venda           : TVenda;
    TotalPago       : Real;
    cdsItensVenda   : TClientDataSet;
    cdsVendas       : TClientDataSet;
    Parametros      : TStringList;
begin
     TotalPago := 0;
   case frmPrePagamento.tag of
      0: // prepagamento
      Begin
         if StrTofloat(edtVlr_Recebido.Text)>StrTofloat(edtTotGeral_os.Text) then
         Begin
            CaixaMensagem( 'O valor recebido não pode ser maior que o serviço ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
      End;
      2 : // Fechamneto da os dos Serviços (Estilo Prosel)
      Begin
         if StrTofloat(edtVlr_Recebido.Text)>StrTofloat(edtTotalTitulo.Text) then
         Begin
            CaixaMensagem( 'O valor recebido não pode ser maior que o do serviço ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         if StrToFloat(edtVlr_Recebido.Text)<>StrTofloat(edtTotalTitulo.Text) then
         Begin
            CaixaMensagem( 'O valor recebido não pode ser diferente do valor da O.S. ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         sdtsPesqOS.Close;
         sdtsPesqOS.DataSet.CommandText :='Select Cod_Cliente From T_OrdemServico Where SeqOs=:parControle';
         sdtsPesqOS.DataSet.ParamByName('parControle').AsString := edtNumeroOs.Text;
         sdtsPesqOS.Open;

         if sdtsPesqOS.IsEmpty then
         Begin
            CaixaMensagem( 'A Ordem de Serviço não foi Localizada ', ctAviso, [ cbOk ], 0 );
            exit;
         End;
      End;
   end;


   cdsTempPagamentos.First;
   while not cdsTempPagamentos.Eof Do
   Begin
      if cdsTempPagamentos.FieldByName('TipoPagamento').Asinteger = 0 then
      Begin
         QryMovCaixa.Close;
         QryMovCaixa.Params.clear;
         QryMovCaixa.SQL.Text := 'Select * from T_MovCaixa where 1=2 ';

         cdsMovCaixa.Close;
         cdsMovCaixa.ProviderName := dspMovCaixa.Name;
         cdsMovCaixa.Open;

         sdtsPesqOS.Close;
         sdtsPesqOS.DataSet.CommandText :='Select SeqVenda, Vlr_Total, * From T_vendas Where SeqVenda=:parControle';
         sdtsPesqOS.DataSet.ParamByName('parControle').AsString := cdsTempPagamentos.FieldByName('SeqOS').AsString;
         sdtsPesqOS.Open;

         cdsMovCaixa.Append;
         cdsMovCaixa.FieldByName('Cod_Caixa').AsString             := '001';
         cdsMovCaixa.FieldByName('Valor').asFloat                  := cdsTempPagamentos.FieldByName('Valor').AsFloat;
         cdsMovCaixa.FieldByName('Historico').asString             := 'Pre-Pagamento O.S. nº '+edtNumeroOs.text;
         cdsMovCaixa.FieldByName('Data_Lancamento').AsSqlTimeStamp := DateTimeToSqlTimeStamp(gsData_Mov);
         cdsMovCaixa.FieldByName('Data_Cad').AsSqlTimeStamp        := DateTimeToSqlTimeStamp(Now);
         cdsMovCaixa.FieldByName('D_C').AsString                   := 'C';
         IF frmprepagamento.Tag = 2 Then
            cdsMovCaixa.FieldByName('SeqOs').AsInteger             := (StrtoInt(edtNumeroOs.Text))
         Else
            cdsMovCaixa.FieldByName('SeqVenda').asInteger          := sdtsPesqOS.FieldByName('SeqVenda').AsInteger;
         cdsMovCaixa.FieldByName('Cod_tipoDespesa').AsString       := '0101';
         cdsMovCaixa.FieldByName('Sequencia').AsInteger            := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
         cdsMovCaixa.FieldByName('Cod_FormaPagamento').AsInteger   := strToInt(cdsTempPagamentos.FieldByName('Codigo').AsString);
         cdsMovCaixa.FieldByName('Operador').AsString              := gsOperador;
         IF frmprepagamento.Tag = 2 Then
            cdsMovCaixa.FieldByName('PrePagamento').AsString       := 'N'
         Else
            cdsMovCaixa.FieldByName('PrePagamento').AsString       := 'S';
         cdsMovCaixa.FieldByName('Estornado').AsString             := 'N';
         cdsMovCaixa.Post;
         cdsMovCaixa.ApplyUpdates(0);
         DaoVenda := TdaoVenda.Create(gconexao);

         DaoVenda.MarcarComoPagouSinal(sdtsPesqOS.FieldByName('SeqVenda').AsInteger);
         if StrTofloat(edtVlr_Recebido.Text)=StrTofloat(edtTotalTitulo.Text) then
            DaoVenda.MarcarComoServicoPago(sdtsPesqOS.FieldByName('SeqVenda').AsInteger);
         FreeAndNil(DaoVenda);
      End
      Else
      Begin
         QryPagamento.Close;
         qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';

         cdsPagamento.Close;
         cdsPagamento.ProviderName := dspPagamento.name;
         cdsPagamento.Open;

         liseqParcela    := 1;
         liqtde_Parcelas := 1;

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
               cdsPagamento.Append;
               cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
               cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := (cdsTempPagamentos.FieldByName('Valor').AsFloat)/liqtde_Parcelas;
               cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (cdsTempPagamentos.FieldByName('Valor').AsFloat)/liqtde_Parcelas;
               cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(gsdata_mov+strtoint(lsPrazo));
               cdsPagamento.FieldByName('Data_cad').AsDateTime           := (now);
               cdsPagamento.FieldByName('Data_Emissao').AsDateTime       := Sodata(gsData_mov);
               cdsPagamento.FieldByName('Historico').AsString            := 'Titulo Referente a O.S. '+edtNumeroOs.Text;
               cdsPagamento.FieldByName('Cod_Cliente').AsInteger         := sdtsPesqOS.FieldByName('Cod_Cliente').AsInteger;
               cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger  := cdsTempPagamentos.FieldByName('Codigo').AsInteger;
              // cdsPagamento.FieldByName('SeqVenda').AsInteger          := liSeqvenda;
               cdsPagamento.FieldByname('Cod_Emp').AsString              := gsCod_emp;
               cdsPagamento.FieldByname('Operador').AsString             := gsOperador;
               cdsPagamento.FieldByname('Documento').AsString            := inczero(edtNumeroOs.Text,8)+incZero(intToStr(liseqParcela),3);
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
            cdsPagamento.FieldByName('Sequencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
            cdsPagamento.FieldByName('Vlr_Areceber').AsFloat          := (cdsTempPagamentos.FieldByName('Valor').AsFloat)/liqtde_Parcelas;
            cdsPagamento.FieldByName('Vlr_Original').AsFloat          := (cdsTempPagamentos.FieldByName('Valor').AsFloat)/liqtde_Parcelas;
            cdsPagamento.FieldByName('Data_Vencimento').AsDateTime    := SoData(gsdata_mov+strtoint(lsPrazo));
            cdsPagamento.FieldByName('Data_cad').AsDateTime           := (now);
            cdsPagamento.FieldByName('Data_Emissao').AsDateTime       := Sodata(gsData_mov);
            cdsPagamento.FieldByName('Historico').AsString            := 'Titulo Referente a O.S. '+edtNumeroOs.Text;
            cdsPagamento.FieldByName('Cod_Cliente').AsInteger         := sdtsPesqOS.FieldByName('Cod_Cliente').AsInteger;
            cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger  := cdsTempPagamentos.FieldByName('Codigo').AsInteger;
           // cdsPagamento.FieldByName('SeqVenda').AsInteger          := liSeqvenda;
            cdsPagamento.FieldByname('Cod_Emp').AsString              := gsCod_emp;
            cdsPagamento.FieldByname('Operador').AsString             := gsOperador;
            cdsPagamento.FieldByname('Documento').AsString            := inczero(edtNumeroOs.Text,8)+incZero(intToStr(liseqParcela),3);
            cdsPagamento.FieldByName('Status').AsInteger              := 0;
            cdsPagamento.FieldByname('Repasse').AsString              := 'N';
            cdsPagamento.Post;
            cdsPagamento.ApplyUpdates(-1);
         End;
      End;
      TotalPago := TotalPago + cdsTempPagamentos.FieldByName('Valor').AsFloat;
      cdsTempPagamentos.Next;
   End;
   if TotalPago>0 then
   Begin
      Parametros := TStringList.Create;
      Parametros.Add(edtNumeroOs.Text);
      cdsVendas := gConexao.BuscarDadosSQL('Select * From T_vendas Where SeqVenda=:parSeqVenda', Parametros );
      DaoVenda := TDaoVenda.Create(gConexao);
      Venda := DaoVenda.CarregarVenda(cdsVendas);
      venda.Numerovias := StrtoInt(gParametros.ler( '', '[IMPRESSAO]', 'NumeroVias','1',gsOperador ));
     {
      venda.Imprimir(cdsVendas,gConexao.BuscarDadosSQL('select Prod.Codigo,Prod.Descricao, Itens.* '+
                                                       'from T_ItensVendas itens '+
                                                       '    left join T_produtos Prod on Prod.Codigo = Itens.Cod_Produto '+
                                                       'Where SeqVenda=:parSeqVenda',Parametros ), TotalPago, RDprint1 );
      }
      venda.ImprimirBematec(cdsVendas,gConexao.BuscarDadosSQL('select Prod.Codigo,Prod.Descricao,Prod.unid as Unidade, Itens.* '+
                                                       'from T_ItensVendas itens '+
                                                       '    left join T_produtos Prod on Prod.Codigo = Itens.Cod_Produto '+
                                                       'Where SeqVenda=:parSeqVenda',Parametros ),gsParametros.ReadString('IMPRESSAO','CaminhoImpressao','LPT1'),TotalPago);

   End;
   frmprepagamento.Tag := 1;
   Close;
End;

procedure TfrmPrePagamento.btnPesquisaClick(Sender: TObject);
begin
   frmConsultaSemSinalPago := TfrmConsultaSemSinalPago.Create(Self);
   frmConsultaSemSinalPago.ShowModal;
   if frmConsultaSemSinalPago.pNumeroVenda>0 then
   begin
      edtNumeroOs.Text := IntToStr(frmConsultaSemSinalPago.pNumeroVenda);
      cmbTipoPesquisa.ItemIndex := 1;
      edtNumeroOsExit(edtNumeroOs);
      edtcod_Pagamento.SetFocus;
   end;
end;

procedure TfrmPrePagamento.btnRemoverClick(Sender: TObject);
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

procedure TfrmPrePagamento.cmbNome_formaPagamentoChange(Sender: TObject);
begin
   If cmbNome_formaPagamento.KeyValue <> Null Then
      edtcod_Pagamento.Text := cmbNome_formaPagamento.KeyValue;
end;

procedure TfrmPrePagamento.edtcod_PagamentoExit(Sender: TObject);
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

procedure TfrmPrePagamento.edtNumeroOsExit(Sender: TObject);
var liSeqvenda : Integer;
    lsWhere : string;
begin
   If Trim(edtNumeroOs.Text)='' Then
   Begin
      CaixaMensagem( 'Informe o Numero da Ordem de Serviço ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;

   lsWhere := ' Where SeqVenda=:parControle ';
   if cmbTipoPesquisa.ItemIndex=0 then
      lsWhere := ' Where Controle=:parControle ';

   if frmPRePagamento.Tag=0 then
   Begin
      sdtsPesqOS.Close;
      sdtsPesqOS.DataSet.CommandText :='Select Status,SeqVenda,Nome_cliente, Vlr_Total From T_vendas '+lsWhere;
      sdtsPesqOS.DataSet.ParamByName('parControle').AsString := edtNumeroOs.Text;
      sdtsPesqOS.Open;
   End
   Else
   Begin
      sdtsPesqOS.Close;
      sdtsPesqOS.DataSet.CommandText :='Select SeqOs, Vlr_Os as Vlr_Total From T_OrdemServico Where SeqOs=:parControle';
      sdtsPesqOS.DataSet.ParamByName('parControle').AsInteger := StrToInt(edtNumeroOs.Text);
      sdtsPesqOS.Open;
   End;

   if sdtsPesqOS.IsEmpty then
   Begin
      CaixaMensagem( 'A Ordem de Serviço não foi Localizada ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;
   if sdtsPesqOS.FieldByName('Status').AsString='3' then
   Begin
      CaixaMensagem( 'Impossivel Pre-Pagamento de O.S Finalizada ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;


   edtTotalTitulo.Text     := Formatfloat('0.00',sdtsPesqOS.FieldByName('vlr_Total').asFloat);
   lblNome_cliente.Caption := sdtsPesqOS.FieldByName('Nome_Cliente').AsString;

   if frmPRePagamento.Tag=0 then
   Begin
      liSeqvenda          := sdtsPesqOs.FieldByName('Seqvenda').asInteger;

      sdtsPesqOS.Close;
      sdtsPesqOS.Params.Clear;
      sdtsPesqOS.DataSet.CommandText :='Select SeqVenda From T_MovCaixa '+
                                       'Where Seqvenda=:parSeqVenda and PrePagamento=:parPrePagamento and Estornado<>:parEstornado ';
      sdtsPesqOS.DataSet.ParamByName('parSeqvenda').AsInteger    := liSeqvenda;
      sdtsPesqOS.DataSet.ParamByName('parPrePagamento').AsString := 'S';
      sdtsPesqOS.DataSet.ParamByName('parEstornado').AsString    := 'S';
      sdtsPesqOS.Open;

      if not sdtsPesqOS.IsEmpty then
      Begin
         CaixaMensagem( 'Esta Ordem de Serviço ja possui Pre-Pagamento, Efetue o Estorno para um novo Pre-Pagamento ', ctAviso, [ cbOk ], 0 );
         edtNumeroOs.SetFocus;
         exit;
      End;
   End;
end;

procedure TfrmPrePagamento.FormShow(Sender: TObject);
begin
   cdsTempPagamentos.EmptyDataSet;
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao,TipoPagamento,Prazo from T_formasPagamento  ';
   IF frmprepagamento.Tag <> 2 Then
      qryVariavel.SQL.Add('where TipoPagamento=:parTipoPagamento ');
   qryVariavel.SQL.Add('order by Descricao');
   IF frmprepagamento.Tag <> 2 Then
   Begin
      qryVariavel.ParamByName('parTipoPagamento').AsString := '0'; // A vista
      lblNome.Visible       := True;
      edtTotGeral_os.Visible := True;
   End;

   cdsCadFormasPagamento.Close;
   cdsCadFormasPagamento.ProviderName := dspVariavel.Name;
   cdsCadFormasPagamento.Open;
end;

end.
