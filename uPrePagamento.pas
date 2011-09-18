unit uPrePagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinGrids, bsDBGrids, bsSkinCtrls, DB, DBClient, StdCtrls, EditNew,
  bsdbctrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin, ComCtrls, FMTBcd, SqlExpr,sqltimst,
  SimpleDS, Provider, BusinessSkinForm;

type
  TfrmPrePagamento = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    lbldocumento: TbsSkinStdLabel;
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
    procedure edtcod_PagamentoExit(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumeroOsExit(Sender: TObject);
    procedure cmbNome_formaPagamentoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrePagamento: TfrmPrePagamento;

implementation

uses uPrincipal,ufuncoes;
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
begin
   case frmPrePagamento.tag of
      0: // prepagamento
      Begin
         if StrTofloat(edtVlr_Recebido.Text)>StrTofloat(edtTotGeral_os.Text) then
         Begin
            CaixaMensagem( 'O valor recebido n�o pode ser maior que o do titulo ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
      End;
      2 : // Fechamneto da os dos Servi�os (Estilo Prosel)
      Begin
         if StrTofloat(edtVlr_Recebido.Text)>StrTofloat(edtTotalTitulo.Text) then
         Begin
            CaixaMensagem( 'O valor recebido n�o pode ser maior que o do titulo ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         if StrToFloat(edtVlr_Recebido.Text)<>StrTofloat(edtTotalTitulo.Text) then
         Begin
            CaixaMensagem( 'O valor recebido n�o pode ser diferente do valor da O.S. ', ctAviso, [ cbOk ], 0 );
            Exit;
         End;
         sdtsPesqOS.Close;
         sdtsPesqOS.DataSet.CommandText :='Select Cod_Cliente From T_OrdemServico Where SeqOs=:parControle';
         sdtsPesqOS.DataSet.ParamByName('parControle').AsString := edtNumeroOs.Text;
         sdtsPesqOS.Open;

         if sdtsPesqOS.IsEmpty then
         Begin
            CaixaMensagem( 'A Ordem de Servi�o n�o foi Localizada ', ctAviso, [ cbOk ], 0 );
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
         sdtsPesqOS.DataSet.CommandText :='Select SeqVenda, Vlr_Total From T_vendas Where SeqVenda=:parControle';
         sdtsPesqOS.DataSet.ParamByName('parControle').AsString := cdsTempPagamentos.FieldByName('SeqOS').AsString;
         sdtsPesqOS.Open;

         cdsMovCaixa.Append;
         cdsMovCaixa.FieldByName('Cod_Caixa').AsString             := '001';
         cdsMovCaixa.FieldByName('Valor').asFloat                  := cdsTempPagamentos.FieldByName('Valor').AsFloat;
         cdsMovCaixa.FieldByName('Historico').asString             := 'Pre-Pagamento O.S. n� '+edtNumeroOs.text;
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
         {
         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Operador, Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento,PrePagamento ) Values '+
                                '                       ( :parOperador,:parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento,:parPrePagamento ) ';

         qryModific.ParamByName('parCod_Caixa').AsString             := '001';
         qryModific.ParamByName('parValor').asFloat                  := cdsTempPagamentos.FieldByName('Valor').AsFloat;
         qryModific.ParamByName('parHistorico').asString             := 'Pre-Pagamento O.S. n� '+edtNumeroOs.text;
         qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := DateTimeToSqlTimeStamp(gsData_Mov);
         qryModific.ParamByName('parD_C').AsString                   := 'C';
         IF frmprepagamento.Tag = 2 Then
            qryModific.ParamByName('parSeqVenda').AsInteger          := (StrtoInt(edtNumeroOs.Text))
         Else
            qryModific.ParamByName('parSeqVenda').asInteger          := sdtsPesqOS.FieldByName('SeqVenda').AsInteger;
         qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
         qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
         qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := strToInt(cdsTempPagamentos.FieldByName('Codigo').AsString);
         qryModific.ParamByName('parOperador').AsString              := gsOperador;
         IF frmprepagamento.Tag = 2 Then
            qryModific.ParamByName('parPrePagamento').AsString          := 'N'
         Else
            qryModific.ParamByName('parPrePagamento').AsString          := 'S';
         qryModific.ExecSQL;
         }
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
      cdsTempPagamentos.Next;
   End;
   frmprepagamento.Tag := 1;
   Close;
End;

procedure TfrmPrePagamento.btnRemoverClick(Sender: TObject);
begin
   if cdsTempPagamentos.IsEmpty then
   Begin
      CaixaMensagem( 'N�o existe registro selecionado ', ctAviso, [ cbOk ], 0 );
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
         CaixaMensagem( 'Produto n�o encontrado ', ctAviso, [ cbOk ], 0 );
         edtCod_Pagamento.Setfocus;
      End;
   End;
end;

procedure TfrmPrePagamento.edtNumeroOsExit(Sender: TObject);
var liSeqvenda : Integer;
begin

   If Trim(edtNumeroOs.Text)='' Then
   Begin
      CaixaMensagem( 'Informe o Numero da Ordem de Servi�o ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;
   if frmPRePagamento.Tag=0 then
   Begin
      sdtsPesqOS.Close;
      sdtsPesqOS.DataSet.CommandText :='Select Status,SeqVenda, Vlr_Total From T_vendas Where SeqVenda=:parControle';
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
      CaixaMensagem( 'A Ordem de Servi�o n�o foi Localizada ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;
   if sdtsPesqOS.FieldByName('Status').Asinteger=3 then
   Begin
      CaixaMensagem( 'Impossivel Pre-Pagamento de O.S Finalizada ', ctAviso, [ cbOk ], 0 );
      edtNumeroOs.SetFocus;
      exit;
   End;


   edtTotalTitulo.Text := Formatfloat('0.00',sdtsPesqOS.FieldByName('vlr_Total').asFloat);

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
         CaixaMensagem( 'Esta Ordem de Servi�o ja possui Pre-Pagamento, Efetue o Estorno para um novo Pre-Pagamento ', ctAviso, [ cbOk ], 0 );
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
