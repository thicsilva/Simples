unit uVendeBrinde;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, BusinessSkinForm, ExtCtrls,
  ToolWin, ComCtrls, DB, DBClient, StdCtrls, Mask, bsSkinBoxCtrls, bsdbctrls,
  FMTBcd, Provider, SqlExpr, EditNew;

type
  TfrmVendeBrinde = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnExcluir: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPanel2: TbsSkinPanel;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtCod_Produto: TbsSkinEdit;
    edtQtde_Venda: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    EdtPco_Venda: TbsSkinEdit;
    edtTotal: TbsSkinEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    btnincluir: TbsSkinSpeedButton;
    btnOk: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    srcItensVendasTMP: TDataSource;
    cdsItensVendasTMP: TClientDataSet;
    cdsItensVendasTMPCodigo: TIntegerField;
    cdsItensVendasTMPDescricao: TStringField;
    cdsItensVendasTMPqtde_Venda: TFloatField;
    cdsItensVendasTMPPco_Venda: TFloatField;
    cdsItensVendasTMPvlr_Desconto: TFloatField;
    cdsItensVendasTMPvlr_Total: TFloatField;
    cdsItensVendasTMPComplemento: TStringField;
    bsSkinStdLabel6: TbsSkinStdLabel;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    edtTotalVenda: TEditN;
    qryItensBrindes: TSQLQuery;
    dspItensBrindes: TDataSetProvider;
    cdsItensBrindes: TClientDataSet;
    bsSkinStdLabel7: TbsSkinStdLabel;
    edttotalTitulo: TEditN;
    qryModific: TSQLQuery;
    procedure btnincluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure edtQtde_VendaExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure edtTotalExit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
     psDocumento   : String;
     psCod_Cliente : String;
    { Public declara1tions }
  end;

var
  frmVendeBrinde: TfrmVendeBrinde;

implementation

uses Ufuncoes,uprincipal;

{$R *.dfm}

procedure TfrmVendeBrinde.btnincluirClick(Sender: TObject);
begin
   if strTofloat(edtQtde_Venda.Text)<=0 then
   Begin
      CaixaMensagem( 'A quantidade não pode ser menor ou igual a Zero ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if strTofloat(EdtPco_Venda.Text)<=0 then
   Begin
      CaixaMensagem( 'O valor unitario não pode ser menor ou igual a Zero ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   cdsItensVendasTmp.Append;
   cdsItensVendasTmp.FieldByName('Codigo').asInteger      := StrToInt(edtCod_Produto.Text);
   cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat    := StrToInt (edtQtde_Venda.Text);
   cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat     := StrToFloat (edtPco_Venda.Text);
   cdsItensVendasTmp.FieldByName('vlr_Total').asFloat     := StrToFloat ( edtTotal.Text);
   cdsItensVendasTmp.FieldByName('Descricao').asString    := cmbNome_Produto.Text;
   cdsItensVendasTmp.Post;

   edtTotalVenda.Text   := FormatFloat('0.00', StrToFloat(edtTotalVenda.Text)+ ( StrToFloat(edtTotal.Text) )  );

   edtCod_Produto.Text      := '';
   cmbNome_Produto.KeyValue := null;
   edtQtde_Venda.Text       := '0,00';
   EdtPco_Venda.Text        := '0,00';
   edtTotal.Text            := '0,00';
end;

procedure TfrmVendeBrinde.btnOkClick(Sender: TObject);
begin

   If  ( StrToFloat(edttotalTitulo.Text)) <  ( StrToFloat(edtTotalVenda.Text) ) Then
   Begin
      CaixaMensagem( 'O valor dos brindes não pode ser superio ao do titulo ', ctAviso, [ cbOk ], 0 );
      Exit
   End;

   qryModific.Close;
   qryModific.SQL.Text :='Delete from T_clientesBrindes Where documento=:pardocumento and '+
                         'cod_Cliente=:parCod_Cliente ';
   qryModific.ParamByName('parDocumento').AsString    := psDocumento ;
   qryModific.ParamByName('parCod_Cliente').AsInteger := StrToInt(psCod_Cliente);
   qryModific.ExecSql;

   qryItensBrindes.Close;
   qryItensBrindes.SQL.Text :='Select * from T_ClientesBrindes where 1=2';

   cdsItensBrindes.Close;
   cdsItensBrindes.ProviderName := dspItensBrindes.Name;
   cdsItensBrindes.Open;


   cdsItensVendasTMP.First;
   while not cdsItensVendasTMP.Eof Do
   Begin
      cdsItensBrindes.Append;
      cdsItensBrindes.FieldByName('Sequencia').asInteger    := StrToInt(Sequencia('Sequencia',True,'T_clientesBrindes',FrmPrincipal.dbxPrincipal,'',False,8));
      cdsItensBrindes.FieldByName('Cod_Produto').asInteger  := cdsItensVendasTmp.FieldByName('Codigo').asInteger;
      cdsItensBrindes.FieldByName('Qtde_Brinde').asFloat    := cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat;
      cdsItensBrindes.FieldByName('Pco_Brinde').asFloat     := cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat;
      cdsItensBrindes.FieldByName('vlr_Total').asFloat      := cdsItensVendasTmp.FieldByName('vlr_Total').asFloat;
      cdsItensBrindes.FieldByName('Documento').asString     := psDocumento;
      cdsItensBrindes.FieldByName('Data_Cad').asDatetime    := now;
      cdsItensBrindes.FieldByName('Operador').asString      := gsOperador;
      cdsItensBrindes.FieldByName('Cod_Emp').asString       := gsCod_Emp;
      cdsItensBrindes.FieldByName('Cod_Cliente').asInteger  := StrToInt(psCod_Cliente);
      cdsItensBrindes.Post;
      // Baixa de estoque //
      {
      qryModific.Close;
      qryModific.sql.Text := 'Update T_Produtos set saldo = saldo - :parSaldo '+
                              'where Codigo=:parCodigo ';
      qryModific.ParamByName('parCodigo'). := cdsItensVendasTmp.FieldByName('Codigo').asInteger;
      qryModific.Parameters.ParamValues['parSaldo']  := cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat;
      qryModific.ExecSQL;
      }
      // Baixa de estoque //

      cdsItensVendasTMP.Next;
   End;
   cdsItensBrindes.ApplyUpdates(0);
   Close;
end;

procedure TfrmVendeBrinde.btnFecharClick(Sender: TObject);
begin
   close;
end;

procedure TfrmVendeBrinde.btnExcluirClick(Sender: TObject);
begin
  IF cdsItensVendasTMP.IsEmpty Then
   Begin
      CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
      Exit
   End;
   if CaixaMensagem( 'Deseja Excluir o Produto '+cdsItensVendasTMP.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      edtTotalVenda.Text    := FormatFloat('0.00',StrToFloat(edtTotalVenda.Text) -  ( cdsItensVendasTMP.FieldByname('Vlr_Total').asFloat+cdsItensVendasTMP.FieldByname('Vlr_Desconto').asFloat) );
      cdsItensVendasTMP.Delete;
   End;
end;

procedure TfrmVendeBrinde.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsCadProdutos.fieldbyname('Pco_Venda').asFloat);
   End;
end;

procedure TfrmVendeBrinde.edtCod_ProdutoExit(Sender: TObject);
begin
   if Trim(edtCod_produto.text) <> '' Then
   Begin
      cmbNome_Produto.KeyValue :=  edtCod_Produto.Text;
      if Trim(cmbNome_Produto.Text) = '' Then
      Begin
         CaixaMensagem( 'Não existe registro selecionado ', ctAviso, [ cbOk ], 0 );
         edtCod_Produto.Setfocus;
      End;
   End;
end;

procedure TfrmVendeBrinde.edtQtde_VendaExit(Sender: TObject);
begin
   edtTotal.Text := Formatfloat ( '0.00',StrToint(edtQtde_Venda.Text) * StrToFloat(EdtPco_Venda.text));
end;

procedure TfrmVendeBrinde.edtTotalExit(Sender: TObject);
begin
   btnincluirClick(btnincluir);
end;

procedure TfrmVendeBrinde.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select COd_Barras,Unid,Codigo,Descricao,Pco_Venda '+
                          'From T_Produtos where tipo_Produto=:parTipo_Produto '+
                          'Order by Descricao ';
   qryVariavel.ParamByName('parTipo_Produto').AsString := '3';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;


   qryItensBrindes.Close;
   qryItensBrindes.SQL.Text :='Select * from T_clientesBrindes Where documento=:pardocumento and '+
                              'cod_Cliente=:parCod_Cliente ';
   qryItensBrindes.ParamByName('parDocumento').AsString    := psDocumento;
   qryItensBrindes.ParamByName('parCod_Cliente').AsInteger := strToInt(psCod_Cliente);

   cdsItensBrindes.Close;
   cdsItensBrindes.ProviderName := dspItensBrindes.Name;
   cdsItensBrindes.Open;

   cdsItensVendasTMP.EmptyDataSet;
   while not cdsItensBrindes.Eof Do
   Begin
      cdsCadProdutos.Locate('codigo',cdsItensBrindes.FieldByName('Cod_Produto').AsInteger,[]);
      cdsItensVendasTmp.Append;
      cdsItensVendasTmp.FieldByName('Codigo').asInteger      := cdsItensBrindes.FieldByName('Cod_Produto').AsInteger;
      cdsItensVendasTmp.FieldByName('Qtde_Venda').asFloat    := cdsItensBrindes.FieldByName('Qtde_Brinde').AsFloat;
      cdsItensVendasTmp.FieldByName('Pco_Venda').asFloat     := cdsItensBrindes.FieldByName('Pco_Brinde').AsFloat;
      cdsItensVendasTmp.FieldByName('vlr_Total').asFloat     := cdsItensBrindes.FieldByName('Vlr_Total').AsFloat;
      cdsItensVendasTmp.FieldByName('Descricao').asString    := cdsCadProdutos.FieldByName('Descricao').AsString;
      cdsItensVendasTmp.Post;
      edtTotalVenda.Text   := FormatFloat('0.00', StrToFloat(edtTotalVenda.Text)+ ( cdsItensBrindes.FieldByName('Vlr_Total').AsFloat) )  ;
      cdsItensBrindes.next;
   End;

end;

end.
