unit uselRelEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UFormBase, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, bsdbctrls, StdCtrls, Mask,
  bsSkinBoxCtrls, bsSkinGrids, bsDBGrids, FMTBcd, Provider, SqlExpr, DBClient,
  dxSkinsCore, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsDefaultPainters,
  dxSkinscxPCPainter;

type
  TfrmSelRelEtiquetas = class(TFormBase)
    cxGrid1: TcxGrid;
    GridAtividades: TcxGridDBTableView;
    GridAtividadesCodigo: TcxGridDBColumn;
    GridAtividadesDescricao: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Column_Preco: TcxGridDBColumn;
    Column_Cod_Barra: TcxGridDBColumn;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtCod_Produto: TbsSkinEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde: TbsSkinEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    btnPesquisa: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    bsSkinPanel1: TbsSkinPanel;
    EdtPesquisa: TbsSkinEdit;
    bsSkinStdLabel3: TbsSkinStdLabel;
    cmbTipoProduto: TbsSkinComboBox;
    cdsTmpItensEtiquetas: TClientDataSet;
    qryCadProdutos: TSQLQuery;
    dspCadProdutos: TDataSetProvider;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    EdtPco_Venda: TbsSkinEdit;
    cdsTmpItensEtiquetasCodigo: TIntegerField;
    cdsTmpItensEtiquetasCod_Barra: TStringField;
    cdsTmpItensEtiquetasDescricao: TStringField;
    cdsTmpItensEtiquetasPco_Venda: TFloatField;
    srcTmpItensEtiquetas: TDataSource;
    edtCod_Barra: TbsSkinEdit;
    cdsProdutos: TClientDataSet;
    srcProdutos: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    cdsTmpItensEtiquetasQtde: TIntegerField;
    Column_Qtde: TcxGridDBColumn;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    procedure EdtPesquisaChange(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure bsSkinDBGrid1DblClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelRelEtiquetas: TfrmSelRelEtiquetas;

implementation

  uses uPrincipal,ufuncoes;

{$R *.dfm}

procedure TfrmSelRelEtiquetas.bsSkinButton1Click(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja Exclir o Produto '+cdsTmpItensEtiquetas.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
      cdsTmpItensEtiquetas.Delete;
end;

procedure TfrmSelRelEtiquetas.bsSkinDBGrid1DblClick(Sender: TObject);
begin
   edtCod_produto.Text :=  cdsCadProdutos.fieldByName('Codigo').AsString;
   edtCod_ProdutoExit(EdtCod_Produto);
   edtQtde.SetFocus;
end;

procedure TfrmSelRelEtiquetas.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSelRelEtiquetas.btnokClick(Sender: TObject);
var arqImpressora: TextFile;
    lilinha : Integer;
    I : Integer;
begin
   cdsTmpItensEtiquetas.First;
   while not cdsTmpItensEtiquetas.Eof Do
   Begin
      for I := 0 to Trunc(cdsTmpItensEtiquetas.FieldByname('Qtde').AsInteger/2) do
      Begin
         lilinha := 10;
         AssignFile( arqImpressora, 'LPT1' );
         Rewrite(arqImpressora);
         WriteLn(arqImpressora,'N');
         WriteLn(arqImpressora,'D10');
         WriteLn(arqImpressora,'S2');
         WriteLn(arqImpressora,'R000,000');
         WriteLn(arqImpressora,'Q120,23');
         WriteLn(arqImpressora,'A10,'+IntToStr(liLinha)+',0,2,1,2,N,"'+Copy(cdsTmpItensEtiquetas.FieldByname('Descricao').AsString,1,30)+'"');
         WriteLn(arqImpressora,'B10,'+IntToStr(liLinha+42)+',0,E30,2,6,60,B,"'+cdsTmpItensEtiquetas.FieldByname('Cod_Barra').AsString+'"');
         WriteLn(arqImpressora,'A240,'+IntToStr(liLinha+80)+',0,1,2,3,N,"'+FormatFloat('0.00',cdsTmpItensEtiquetas.FieldByname('Pco_Venda').AsFloat)+'"');
         WriteLn(arqImpressora,'A240,'+IntToStr(liLinha+35)+',0,1,2,3,N,"R$"');

         WriteLn(arqImpressora,'A440,'+IntToStr(liLinha)+',0,2,1,2,N,"'+copy(cdsTmpItensEtiquetas.FieldByname('Descricao').AsString,1,30)+'"');
         WriteLn(arqImpressora,'B440,'+IntToStr(liLinha+42)+',0,E30,2,6,60,B,"'+cdsTmpItensEtiquetas.FieldByname('Cod_Barra').AsString+'"');
         WriteLn(arqImpressora,'A680,'+IntToStr(liLinha+80)+',0,1,2,3,N,"'+FormatFloat('0.00',cdsTmpItensEtiquetas.FieldByname('Pco_Venda').AsFloat)+'"');
         WriteLn(arqImpressora,'A680,'+IntToStr(liLinha+35)+',0,1,2,3,N,"R$"');
         WriteLn(arqImpressora,'P1');
         WriteLn(arqImpressora,'N');
         System.Close(arqImpressora );
      End;
      cdsTmpItensEtiquetas.Next;
   End;
end;

procedure TfrmSelRelEtiquetas.btnPesquisaClick(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue = Null then
   Begin
      CaixaMensagem( 'Informe o Produto ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   cdsTmpItensEtiquetas.Append;
   cdsTmpItensEtiquetas.FieldByName('Codigo').AsInteger   := StrToint(edtCod_Produto.Text);
   cdsTmpItensEtiquetas.FieldByName('Cod_Barra').AsString := edtCod_Barra.Text;
   cdsTmpItensEtiquetas.FieldByName('Descricao').AsString := cmbNome_Produto.Text;
   cdsTmpItensEtiquetas.FieldByName('Pco_Venda').AsFloat  := StrToFloat(EdtPco_Venda.Text);
   cdsTmpItensEtiquetas.FieldByName('Qtde').AsInteger     := StrToInt(EdtQtde.Text);
   cdsTmpItensEtiquetas.Post;
   edtCod_Produto.Text := '';
   cmbNome_Produto.KeyValue := null;
   edtqtde.Text := '0';
   edtCod_Barra.Text := '';
   edtPco_Venda.Text := '0'; 
   try
      edtCod_Produto.SetFocus;
   except

   end;
end;

procedure TfrmSelRelEtiquetas.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
   Begin
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
      edtPco_venda.Text   := Formatfloat('0.00',cdsProdutos.fieldbyname('Pco_Venda').asFloat);
      edtCod_Barra.Text   := cdsProdutos.fieldbyname('Cod_Barras').asString;
   End;
 end;

procedure TfrmSelRelEtiquetas.edtCod_ProdutoExit(Sender: TObject);
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

procedure TfrmSelRelEtiquetas.EdtPesquisaChange(Sender: TObject);
var lsCoringa : String;
Begin
   lsCoringa := '%';

   qryCadProdutos.Close;
   qryCadProdutos.SQL.Text := 'Select Gru.Descricao as Nome_Grupo, Prod.* from T_Produtos Prod '+
                              '       Left Join T_Grupos Gru On '+
                              '            Gru.Codigo = Prod.Cod_Grupo '+
                              'Where Prod.Descricao like :parDescricao And Tipo_Produto=:parTipo_Produto';
   qryCadProdutos.ParamByName('parDescricao').AsString     := lsCoringa+EdtPesquisa.Text+'%';
   qryCadProdutos.ParamByName('parTipo_Produto').AsInteger :=  cmbTipoProduto.ItemIndex;

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspCadProdutos.Name;
   cdsCadProdutos.Open;
end;

procedure TfrmSelRelEtiquetas.FormShow(Sender: TObject);
begin
   QryVariavel.Close;
   QryVariavel.SQL.Text := 'Select Gru.Descricao as Nome_Grupo, Prod.* from T_Produtos Prod '+
                              '       Left Join T_Grupos Gru On '+
                              '            Gru.Codigo = Prod.Cod_Grupo ';
   cdsProdutos.Close;
   cdsProdutos.ProviderName := dspVariavel.Name;
   cdsProdutos.Open;
end;

end.
