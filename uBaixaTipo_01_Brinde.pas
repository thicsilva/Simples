unit uBaixaTipo_01_Brinde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, EditNew, BusinessSkinForm, FMTBcd, SqlExpr,sqlTimSt, DB,
  Provider, DBClient, bsdbctrls;

type
  TfrmBaixaBrinde = class(TForm)
    SkinForm: TbsBusinessSkinForm;
    bsSkinGroupBox1: TbsSkinGroupBox;
    edtNomeCliente: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtCnpjcpf: TbsSkinEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtDocumento: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtTotalTitulo: TEditN;
    bsSkinStdLabel6: TbsSkinStdLabel;
    edtVenciemento: TbsSkinEdit;
    bsSkinGroupBox2: TbsSkinGroupBox;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    edtVlr_Recebido: TEditN;
    edtVlr_Devolvido: TEditN;
    edtVlr_Comissao: TEditN;
    lblvlrdesconto: TbsSkinStdLabel;
    edtVlr_Desconto: TEditN;
    bsSkinStdLabel10: TbsSkinStdLabel;
    edtTotalReceber: TEditN;
    bsSkinStatusBar1: TbsSkinStatusBar;
    qryModific: TSQLQuery;
    edtNrVenda: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtData_Pagamento: TbsSkinDateEdit;
    cdsPagamento: TClientDataSet;
    dspPagamento: TDataSetProvider;
    qryPagamento: TSQLQuery;
    edtCod_Cliente: TbsSkinEdit;
    edtCod_FormaPagamento: TbsSkinEdit;
    edtData_Emissao: TbsSkinEdit;
    lblVencimento: TbsSkinStdLabel;
    edtData_Vencimento: TbsSkinDateEdit;
    bsSkinStdLabel11: TbsSkinStdLabel;
    edtVlr_Perdido: TEditN;
    edtData_Repasse: TbsSkinEdit;
    cmbRota: TbsSkinDBLookupComboBox;
    bsSkinStdLabel12: TbsSkinStdLabel;
    cdsRotas: TClientDataSet;
    srcRotas: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    edtTotalInformado: TEditN;
    cdsTmpItensDevolucoes: TClientDataSet;
    cdsTmpItensDevolucoesCodigo: TIntegerField;
    cdsTmpItensDevolucoesDescricao: TStringField;
    cdsTmpItensDevolucoesPco_Venda: TFloatField;
    cdsTmpItensDevolucoesPerc_Desc: TFloatField;
    cdsTmpItensDevolucoespco_Custo: TFloatField;
    cdsTmpItensDevolucoesPco_Venda_Atual: TFloatField;
    cdsTmpItensDevolucoesTotal: TFloatField;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    BtnDevolucoes: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    BtnVendeBrinde: TbsSkinSpeedButton;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    dspItensDevolucoes: TDataSetProvider;
    qryItensDevolucoes: TSQLQuery;
    cdsItensDevolucoes: TClientDataSet;
    cdsSaldos: TClientDataSet;
    dspSaldos: TDataSetProvider;
    qrySaldos: TSQLQuery;
    edtSupervisor: TbsSkinEdit;
    cdsTmpItensDevolucoesQtde_Vendida: TFloatField;
    cdsTmpItensDevolucoesQtde_devolvida: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtVlr_DescontoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnVendeBrindeClick(Sender: TObject);
    procedure BtnDevolucoesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    lrDesc : Real;
    pbNovoRepasse : Boolean;
    pilote : Integer;
    { Public declarations }
  end;

var
  frmBaixaBrinde: TfrmBaixaBrinde;

implementation

uses uPrincipal,Ufuncoes, uVendeBrinde, udevolucaoVenda, DBXCommon, DaoRemessa;

{$R *.dfm}

procedure TfrmBaixaBrinde.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if frmBaixaBrinde.Tag=0 then
   Begin
      qryModific.Close;
      qryModific.SQL.Text :='Delete from T_clientesBrindes Where documento=:pardocumento and '+
                            'cod_Cliente=:parCod_Cliente ';
      qryModific.ParamByName('parDocumento').AsString    := edtDocumento.Text ;
      qryModific.ParamByName('parCod_Cliente').AsInteger := StrToInt(edtCod_Cliente.Text);
      qryModific.ExecSql;
   End;
end;

procedure TfrmBaixaBrinde.FormCreate(Sender: TObject);
begin

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Rotas order by Descricao ';

   cdsRotas.Close;
   cdsRotas.ProviderName := dspVariavel.Name;
   cdsRotas.Open;

end;

procedure TfrmBaixaBrinde.FormShow(Sender: TObject);
begin
   edtVlr_Recebido.SetFocus;
   edtData_Pagamento.Date   := gsData_Mov;
   edtData_Vencimento.Text  := edtVenciemento.Text;
   edtVlr_Comissao.Enabled  := True;
   edtVlr_Devolvido.Enabled := True;
   if Trim(edtSupervisor.Text)='0' then
      edtSupervisor.Text := '';
end;

procedure TfrmBaixaBrinde.btnokClick(Sender: TObject);
var lsupDate          : String;
    lsitensDevolvidos : String;
    trdNrTransacao    : TdbxTransaction;
    lrVlr_Devolvido   : Real;
    lrVlr_Desconto    : Real;
    lrvlr_TotalItem   : Real;
    vlr_anterior      : Real;
    vlr_Atual         : Real;
  DaoRemessa: TDaoRemessa;
begin
   try
     bsSkinToolBar2.SetFocus
   except
   end;

   if CaixaMensagem( 'Deseja Efetuar o pagamento do titulo '+edtDocumento.text, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      if arredondar(StrtoFloat(edtTotalInformado.Text),2)<>arredondar(StrtoFloat(edtTotalReceber.Text),2) then
      Begin
         CaixaMensagem( 'O valor informado diverge do Calculado('+edtTotalReceber.Text+')', ctAviso, [ cbOk ], 0 );;
         Exit;
      End;

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctasreceber set Status=:parStatus,Operador=:parOperador, Tipo_Baixa=:parTipo_Baixa,'+
                             '                         vlr_Recebido=:parvlr_Recebido, Vlr_Devolvido=:parvlr_Devolvido,'+
                             '                         Vlr_Comissao=:parvlr_Comissao, Data_Pagamento=:parData_Pagamento, '+
                             '                         Vlr_Perdido=:parVlr_Perdido, Lote=:parLote, '+
                             '                         Vlr_Desconto=:parvlr_desconto, Data_Atu=:parData_Atu '+lsUpdate+' '+
                             'where Documento=:parDocumento ';
      qryModific.ParamByName('parDocumento').AsString            := edtDocumento.Text;
      qryModific.ParamByName('parData_Pagamento').asSqlTimeStamp := StrToSqlTimeStamp(DateToStr(edtData_Pagamento.Date));
      qryModific.ParamByName('parData_Atu').asSqlTimeStamp       := DateTimeToSQLTimeStamp(now);
      qryModific.ParamByName('parOperador').AsString             := gsOperador;
      qryModific.ParamByName('parStatus').AsInteger              := 1;
      qryModific.ParamByName('parTipo_Baixa').AsString           := 'PT';
      if StrToFloat(edtTotalReceber.Text)> 0 Then
         qryModific.ParamByName('parTipo_Baixa').AsString        := 'PP';
      qryModific.ParamByName('parVlr_Desconto').AsFloat          := StrTofloat(edtVlr_Desconto.Text);
      qryModific.ParamByName('parVlr_Comissao').Asfloat          := 0;
      qryModific.ParamByName('parLote').AsInteger                := pilote;
      if edtvlr_Comissao.Enabled  then
         qryModific.ParamByName('parVlr_Comissao').Asfloat       := StrTofloat(EdtVlr_comissao.Text);
      qryModific.ParamByName('parVlr_Recebido').AsFloat          := StrToFloat(edtVlr_Recebido.Text);
      qryModific.ParamByname('parVlr_Devolvido').AsFloat         := StrToFloat(edtVlr_Devolvido.Text);
      qryModific.ParamByname('parVlr_Perdido').AsFloat           := StrToFloat(edtVlr_Perdido.Text);
      qryModific.ExecSQL;

      if StrToFloat(edtTotalReceber.Text)> 0 Then
      Begin
         QryPagamento.Close;
         qryPagamento.Sql.Text := 'Select * from T_Ctasreceber Where 1=2 ';

         cdsPagamento.Close;
         cdsPagamento.ProviderName := dspPagamento.name;
         cdsPagamento.Open;

         cdsPagamento.Append;
         cdsPagamento.FieldByName('Sequencia').AsInteger          := StrToInt(Sequencia('Sequencia',False,'T_CtasReceber',FrmPrincipal.dbxPrincipal,'',False,8));
         cdsPagamento.FieldByName('Vlr_Areceber').AsFloat         := StrToFloat(edtTotalReceber.Text);
         if pbNovoRepasse then
         Begin
            cdsPagamento.FieldByname('Repasse').AsString             := 'S';
            cdsPagamento.FieldByname('Data_Repasse').AsDateTime      := StrToDateTime(edtData_Repasse.Text);
         End;
         cdsPagamento.FieldByName('Vlr_Original').AsFloat      := StrToFloat(edtTotalTitulo.Text);
         cdsPagamento.FieldByName('Data_Vencimento').AsDateTime   := StrToDateTime(edtData_Vencimento.Text);
         cdsPagamento.FieldByName('Data_cad').AsDateTime          := (now);
         cdsPagamento.FieldByName('Data_Emissao').AsDateTime      := StrToDateTime(edtData_Emissao.Text);
         cdsPagamento.FieldByName('Historico').AsString           := 'Restante do Titulo '+edtDocumento.Text;
         cdsPagamento.FieldByName('Cod_Cliente').AsInteger        := strToInt(edtCod_Cliente.Text);
         cdsPagamento.FieldByName('Cod_FormaPagamento').AsInteger := strToInt(edtCod_FormaPagamento.Text);
         cdsPagamento.FieldByName('SeqVenda').AsInteger           := StrToInt(edtNrVenda.text);
         cdsPagamento.FieldByname('Cod_Emp').AsString             := gsCod_emp;
         cdsPagamento.FieldByname('Operador').AsString            := gsOperador;
         cdsPagamento.FieldByname('Documento').AsString           := Copy(edtDocumento.text,1,8)+IncZero(IntToStr(StrToInt(Copy(edtDocumento.text,9,3))+1),3);
         cdsPagamento.FieldByName('Status').AsInteger             := 0;
         cdsPagamento.Post;
         cdsPagamento.ApplyUpdates(-1);
      End;

    {$REGION 'Devolução dos Itens '}

     if not frmPrincipal.dbxPrincipal.InTransaction then
        trdNrTransacao := frmPrincipal.dbxPrincipal.BeginTransaction;

     lsitensDevolvidos := '';
     lrVlr_Devolvido   := 0;
     lrVlr_Desconto    := 0;

     cdsTmpItensDevolucoes.First;
     while not cdsTmpItensDevolucoes.Eof do
     Begin
        if cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger > 0 then
        Begin

           lrVlr_Devolvido := lrVlr_Devolvido + (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger) ;
           lrVlr_Desconto  := lrVlr_Desconto +  (cdsTmpItensDevolucoes.FieldByName('Vlr_Desconto').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger) ;

           lrvlr_TotalItem :=( ( cdsTmpItensDevolucoes.FieldByName('Qtde_Vendida').asFloat - cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) *
                                cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat ) ;
           Try
              qrymodific.Close;
              qrymodific.Params.Clear;
              qrymodific.SQL.Text :='Update T_Itensvendas set Qtde_Devolvida = ( Qtde_Devolvida + :parQtde_Devolvida ), '+
                                    '                          Qtde_Venda = ( Qtde_Venda - :parQtde_Devolvida_02 ), '+
                                    '                          Vlr_total=:parVlr_Total, Operador=:parOperador '+
                                    'Where SeqVenda=:parSeqvenda and Cod_Produto=:parCod_Produto ';

              qrymodific.ParamByName('ParSeqVenda').AsInteger          := StrtoInt( edtNrVenda.text);
              qrymodific.ParamByName('ParCod_Produto').AsInteger       := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
              qrymodific.ParamByName('ParQtde_Devolvida').AsInteger    := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger;
              qrymodific.ParamByName('ParOperador').AsString           := gsOperador;
              qrymodific.ParamByName('ParQtde_Devolvida_02').AsInteger := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger;
              qrymodific.ParamByName('ParVlr_Total').AsFloat           := lrvlr_TotalItem;
              qrymodific.ExecSQL;
           except
              frmPrincipal.dbxPrincipal.RollbackFreeAndNil(trdNrTransacao);
              Exit;
           End;

           if StrToIntDef(edtSupervisor.Text,0) <> 0 then
           begin
              DaoRemessa := TDaoRemessa.Create(gCoNexao);
              DaoRemessa.SomarItemNaRemessaDevolucao(StrToIntDef(edtSupervisor.Text,0),
                                                     cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger,
                                                     cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').AsInteger, gsOperador  );
              FreeAndNil(DaoRemessa);
           end;

           qryItensDevolucoes.Close;
           qryItensDevolucoes.SQL.Text :='Select * from T_ItensDevolucoes where 1=2';

           cdsItensDevolucoes.Close;
           cdsItensDevolucoes.ProviderName := dspItensDevolucoes.Name;
           cdsItensDevolucoes.Open;

           Try
              cdsItensDevolucoes.Append;
              cdsItensDevolucoes.FieldByName('Cod_Produto').asInteger      := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
              cdsItensDevolucoes.FieldByName('SeqVenda').asInteger         := StrtoInt( edtNrVenda.text);
              cdsItensDevolucoes.FieldByName('Qtde_Devolvida').asFloat     := cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger;
              cdsItensDevolucoes.FieldByName('Pco_Venda').asFloat          := cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat;
              cdsItensDevolucoes.FieldByName('Pco_Custo').asFloat          := cdsTmpItensDevolucoes.FieldByName('Pco_Custo').Asfloat;
              cdsItensDevolucoes.FieldByName('Data_Cad').asDateTime        := now;
              cdsItensDevolucoes.FieldByName('Data_Devolucao').asDateTime  := gsData_mov;
              cdsItensDevolucoes.FieldByname('Operador').AsString          := gsOperador;
              cdsItensDevolucoes.FieldByname('Cod_Emp').AsString           := gsCod_Emp;
              cdsItensDevolucoes.FieldByName('Data_Mov').asDateTime        := gsdata_Mov;
              cdsItensDevolucoes.FieldByName('Lote').AsInteger             := pilote;
              cdsItensDevolucoes.Post;
              cdsItensDevolucoes.ApplyUpdates(-1);
           except
              frmPrincipal.dbxPrincipal.RollbackFreeAndNil(trdNrTransacao);
              Exit;
           End;

           if cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat > cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat then
           Begin
              vlr_anterior := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;
              vlr_Atual    := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;

              qrySaldos.Close;
              qrySaldos.Params.Clear;
              qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';
              Try
                 cdsSaldos.Close;
                 cdsSaldos.ProviderName := dspSaldos.Name;
                 cdsSaldos.Open;

                 cdsSaldos.Append;
                 cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                 cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                 cdsSaldos.FieldByName('E_S').AsString          := 'S';
                 cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                 cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
                 cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Anterior-vlr_Atual);
                 cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                 cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                 cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                 cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                 cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat)+
                                                                   ' Recebido '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').asFloat);
                 cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'DEBITO DE DEVOLUCAO';
                 cdsSaldos.Post;
                 cdsSaldos.ApplyUpdates(-1);
              except
                 frmPrincipal.dbxPrincipal.RollbackFreeAndNil(trdNrTransacao);
                 Exit;
              End;

           End;

           if cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat < cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat then
           Begin

              vlr_anterior := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;
              vlr_Atual    := (cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').Asfloat * cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asInteger ) ;

              qrySaldos.Close;
              qrySaldos.Params.Clear;
              qrySaldos.Sql.Text :='Select * from T_saldos where 1=2';

              Try
                 cdsSaldos.Close;
                 cdsSaldos.ProviderName := dspSaldos.Name;
                 cdsSaldos.Open;

                 cdsSaldos.Append;
                 cdsSaldos.FieldByName('Codigo').AsInteger      := StrToInt( Sequencia('Codigo',False,'T_Saldos',FrmPrincipal.dbxPrincipal,'',False,8 ) );
                 cdsSaldos.FieldByName('Cod_emp').AsString      := GsCod_Emp;
                 cdsSaldos.FieldByName('Operador').AsString     := GsOperador;
                 cdsSaldos.FieldByName('E_S').AsString          := 'E';
                 cdsSaldos.FieldByName('Cod_Produto').AsInteger := cdsTmpItensDevolucoes.FieldByName('Codigo').asInteger;
                 cdsSaldos.FieldByName('Pco_Venda').AsFloat     := (vlr_Atual-vlr_Anterior);
                 cdsSaldos.FieldByName('Pco_Custo').AsFloat     := 0;
                 cdsSaldos.FieldByName('Data_cad').AsDateTime   := Now;
                 cdsSaldos.FieldByName('Data_Mov').AsDateTime   := GsData_Mov;
                 cdsSaldos.FieldByName('Qtde').AsInteger        := 1;
                 cdsSaldos.FieldByName('Historico').AsString    := 'Vendido a '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda').asFloat)+
                                                                   ' Recebido '+FormatFloat('0.00',cdsTmpItensDevolucoes.FieldByName('Pco_Venda_Atual').asFloat);
                 cdsSaldos.FieldByName('Tipo_Movimento').AsString := 'CREDITO DE DEVOLUCAO';
                 cdsSaldos.Post;
                 cdsSaldos.ApplyUpdates(-1);
              except
                 frmPrincipal.dbxPrincipal.RollbackFreeAndNil(trdNrTransacao);
                 Exit;
              End;

           End;
        End;
        lsitensDevolvidos := lsitensDevolvidos + 'Codigo.:'+IncZero(cdsTmpItensDevolucoes.FieldByName('Codigo').asString,5)+' Qtde.: '+cdsTmpItensDevolucoes.FieldByName('Qtde_Devolvida').asString+' ';
        cdsTmpItensDevolucoes.Next;
     End;

     try
        if lrVlr_Devolvido>0 then
        Begin
           qrymodific.Close;
           qrymodific.Params.Clear;
           qrymodific.SQL.Text :='Update T_vendas set Vlr_total    = ( vlr_total    - :parvlr_total ), '+
                                 '                    Vlr_Desconto = ( Vlr_Desconto - :parVlr_Desconto ) '+
                                 'Where SeqVenda=:parSeqvenda  ';
           qrymodific.ParamByName('ParSeqVenda').AsInteger          := StrtoInt( edtNrVenda.text);
           qrymodific.ParamByName('ParVlr_Total').AsFloat           := lrVlr_Devolvido;
           qrymodific.ParamByName('ParVlr_Desconto').AsFloat        := lrVlr_Desconto;
           qrymodific.ExecSQL;
        End;

     except
        frmPrincipal.dbxPrincipal.RollbackFreeAndNil(trdNrTransacao);
        Exit;
     End;

     frmPrincipal.dbxPrincipal.CommitFreeAndNil(trdNrTransacao);

     {$ENDREGION}

     {$REGION 'Atualiza Rota informada'}
      if cmbRota.Visible then
      Begin
         qryModific.Close;
         qryModific.Sql.text                             := 'Update T_Clientes Set Cod_Rota=:parCod_Rota where Codigo=:parCodigo ';
         qryModific.ParamByName('parcod_Rota').asInteger := cmbRota.KeyValue;
         qryModific.ParamByName('parCodigo').AsInteger   := StrToInt(edtcod_Cliente.Text);
         qryModific.ExecSQL;
      End;
      {$ENDREGION}

      frmBaixaBrinde.Tag := 1;
      close;
   End;
End;

procedure TfrmBaixaBrinde.BtnVendeBrindeClick(Sender: TObject);
begin
   frmvendebrinde := Tfrmvendebrinde.create(self);
   frmvendebrinde.psDocumento          := edtDocumento.Text;
   frmvendebrinde.psCod_Cliente        := edtCod_Cliente.Text;
   frmvendebrinde.edttotalTitulo.Text  := edtTotalTitulo.Text;
   frmvendebrinde.showmodal;
   edtVlr_Comissao.Enabled             := True;
   edtVlr_Comissao.Text                := '0,00';
   {
   if StrToFloat( frmvendebrinde.edtTotalVenda.Text) > 0 then
   Begin
      edtVlr_Comissao.Text     := frmvendebrinde.edtTotalVenda.Text;
      edtVlr_Comissao.Enabled  := False;
   End;
   edtVlr_DescontoClick(edtVlr_Desconto);
   }
end;

procedure TfrmBaixaBrinde.BtnDevolucoesClick(Sender: TObject);
begin
   frmDevolucaoVenda := TfrmDevolucaoVenda.create(Self);
   frmDevolucaoVenda.piSeqVenda := StrtoInt(edtNrVenda.text);
   frmDevolucaoVenda.grpDevolveItem.Caption := edtNrVenda.Text+'-'+edtNomeCliente.Text;
   frmDevolucaoVenda.piLOTE := pilote;
   frmDevolucaoVenda.Tag := 2;
   frmDevolucaoVenda.ShowModal;
   if frmDevolucaoVenda.Tag = 1 then
   begin
      edtVlr_Devolvido.text := frmDevolucaoVenda.edtVlr_Recebido.Text;
      edtVlr_Devolvido.Enabled := false;
   end;
end;

procedure TfrmBaixaBrinde.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmBaixaBrinde.edtVlr_DescontoClick(Sender: TObject);
begin
   edtTotalReceber.Text :=FormatFloat('0.00', StrtoFloat(edtTotalTitulo.Text)-( StrtoFloat(edtVlr_Recebido.text)+
                                                             StrtoFloat(edtVlr_Comissao.text)+
                                                             StrtoFloat(edtVlr_Devolvido.Text)+
                                                             StrtoFloat(edtVlr_Perdido.Text)+
                                                             StrtoFloat(edtVlr_Desconto.Text) ) );
   if not edtvlr_Comissao.Enabled  then
       edtTotalReceber.Text := FormatFloat('0.00', StrtoFloat(edtTotalTitulo.Text)- StrtoFloat(edtVlr_Comissao.text));

   lblVencimento.Visible      := False;
   edtData_Vencimento.Visible := False;
  {  // não é pata mudar vencimento
   If Round(StrTofloat(edtTotalReceber.Text))>0 Then
   Begin
      lblVencimento.Visible      := True;
      edtData_Vencimento.Visible := True;
   End;
   }
end;

end.
