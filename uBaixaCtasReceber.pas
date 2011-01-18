unit uBaixaCtasReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin,
  ComCtrls, EditNew, BusinessSkinForm, FMTBcd, SqlExpr,sqlTimSt, DB,
  Provider, DBClient;

type
  TfrmBaixaCtasreceber = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
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
    srcPagamento: TDataSource;
    cdsPagamento: TClientDataSet;
    dspPagamento: TDataSetProvider;
    qryPagamento: TSQLQuery;
    Cod_Cliente: TbsSkinEdit;
    edtCod_FormaPagamento: TbsSkinEdit;
    edtData_Emissao: TbsSkinEdit;
    BtnVendeBrinde: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtVlr_DescontoClick(Sender: TObject);
  private
    { Private declarations }
  public
    lrDesc : Real;
    { Public declarations }
  end;

var
  frmBaixaCtasreceber: TfrmBaixaCtasreceber;

implementation

uses uPrincipal,Ufuncoes;

{$R *.dfm}

procedure TfrmBaixaCtasreceber.FormShow(Sender: TObject);
begin
   edtVlr_Recebido.SetFocus;
   edtData_Pagamento.Date := gsData_Mov;
end;

procedure TfrmBaixaCtasreceber.btnokClick(Sender: TObject);
var lsupDate       : String;
begin
   if CaixaMensagem( 'Deseja Efetuar o pagamento do titulo '+edtDocumento.text, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin

      //  lancamento do caixa conforme venda
      {
      QryItemVendas.Close;
      QryItemVendas.SQL.Text := 'Select Prod.Cod_TipoDespesa, Itens.* from T_ItensVendas itens, T_Produtos Prod Where Seqvenda=:parSeqvenda '+
                                'And Prod.Codigo=Itens.Cod_Produto ';
      QryItemVendas.ParamByName('parSeqVenda']  := StrtoInt(edtNrVenda.Text);
      QryItemVendas.Open;

      lrVlr_Desc :=(1-( StrToFloat( edtVlr_Desconto.Text )/StrToFloat(edtVlr_Venda.Text) )) ;

      while not QryItemVendas.Eof Do
      Begin

         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa ) Values '+
                                '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa ) ';

         qryModific.ParamByName('parCod_Caixa').AsString             := '001';
         qryModific.ParamByName('parValor').asFloat                  := arredondar( (StrtoFloat(edtVlr_Venda.Text)*lrVlr_Desc),2);
         qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Venda nº '+edtNrVenda.Text;
         qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := DateTimeToTimeStamp(now);
         qryModific.ParamByName('parD_C').AsString                   := 'C';
         qryModific.ParamByName('parSeqVenda')as.Integer             := StrtoInt(edtNrVenda.Text);
         qryModific.ParamByName('parCod_tipoDespesa').AsString       := QryItemVendas.fieldByName('Cod_TipoDespesa').AsString;
         qryModific.ExecSQL;

         QryItemVendas.Next;
      End;
      //  lancamento do caixa conforme venda
      }

      // atualização do contas a receber

      qryModific.Close;
      qryModific.SQL.Text := 'update T_Ctasreceber set Status=:parStatus,Operador=:parOperador, Tipo_Baixa=:parTipo_Baixa, vlr_Recebido=:parvlr_Recebido,'+
                             '                     Vlr_Devolvido=:parvlr_Devolvido,Vlr_Comissao=:parvlr_Comissao, Data_Pagamento=:parData_Pagamento, '+
                             'Vlr_Desconto=:parvlr_desconto, Data_Atu=:parData_Atu '+lsUpdate+' '+
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
      qryModific.ParamByName('parVlr_Comissao').Asfloat          := StrTofloat(EdtVlr_comissao.Text);
      qryModific.ParamByName('parVlr_Recebido').AsFloat          := StrToFloat(edtVlr_Recebido.Text);
      qryModific.ParamByname('parVlr_Devolvido').AsFloat         := StrToFloat(edtVlr_Devolvido.Text);
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
         cdsPagamento.Post;

         cdsPagamento.ApplyUpdates(-1);
      End;
      close;
   End;
end;

procedure TfrmBaixaCtasreceber.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmBaixaCtasreceber.edtVlr_DescontoClick(Sender: TObject);
begin
   edtTotalReceber.Text :=FormatFloat('0.00', StrtoFloat(edtTotalTitulo.Text)-( StrtoFloat(edtVlr_Recebido.text)+
                                                             StrtoFloat(edtVlr_Comissao.text)+
                                                             StrtoFloat(edtVlr_Devolvido.Text)+
                                                             StrtoFloat(edtVlr_Desconto.Text) ) );

end;

end.
