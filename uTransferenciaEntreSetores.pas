unit uTransferenciaEntreSetores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, bsdbctrls, ExtCtrls,
  ToolWin, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid,uFormBase, bsSkinTabs;

type
  TfrmTransferenciaDeSetores = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnCancelar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    btnTransferir: TbsSkinSpeedButton;
    qryTransferencia: TSQLQuery;
    srcTempTransferencia: TDataSource;
    cdsTempTransferencia: TClientDataSet;
    cdsTempTransferenciaCodigo: TIntegerField;
    cdsTempTransferenciaDescricao: TStringField;
    cdsTempTransferenciaPco_venda: TFloatField;
    cdsTempTransferenciaQuantidade: TIntegerField;
    cdsTempTransferenciaDiferenca: TIntegerField;
    cdsTempTransferenciaSaldo: TIntegerField;
    cdsTempTransferenciavlr_total: TFloatField;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    cdsSetores: TClientDataSet;
    srcSetores: TDataSource;
    cdsCadProdutos: TClientDataSet;
    srcCadProdutos: TDataSource;
    PagCadastro: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel8: TbsSkinStdLabel;
    edtProd_inv: TbsSkinEdit;
    cmbNome_ProdutoInv: TbsSkinDBLookupComboBox;
    edtQuantidade: TbsSkinEdit;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinStdLabel22: TbsSkinStdLabel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbSetorOrigem: TbsSkinDBLookupComboBox;
    cmbSetorDestino: TbsSkinDBLookupComboBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    NumeroTransferencia: TcxGridDBColumn;
    Descricao: TcxGridDBColumn;
    Quantidade: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsTransferencias: TClientDataSet;
    srcTransferencia: TDataSource;
    Setor_Origem: TcxGridDBColumn;
    Setor_Destino: TcxGridDBColumn;
    procedure bsSkinButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cmbNome_ProdutoInvChange(Sender: TObject);
    procedure edtProd_invExit(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure AjustaControles;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransferenciaDeSetores: TfrmTransferenciaDeSetores;

implementation

uses uPrincipal,uDaoSaldo,uFuncoes;

{$R *.dfm}

procedure TfrmTransferenciaDeSetores.bsSkinButton3Click(Sender: TObject);
var lrSaldo : Integer;
    loDaoSaldo : TDaoSaldo;
begin

   if cmbSetorOrigem.keyvalue=null then
   Begin
      CaixaMensagem( 'informe o setor de Origem,', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if cmbSetorDestino.keyvalue=null then
   Begin
      CaixaMensagem( 'informe o setor de Destino,', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if (cmbSetorDestino.keyvalue=cmbSetorOrigem.keyvalue) then
   Begin
      CaixaMensagem( 'o setor de origem não pode ser igual ao de destino', ctAviso, [ cbOk ], 0 );
      Exit;
   End;

   loDaoSaldo := TDaoSaldo.Create(gconexao);
   lrSaldo := loDaoSaldo.RetornaSaldo(strToInt(edtProd_inv.Text),cmbSetorOrigem.keyvalue);

   if (StrToInt(edtQuantidade.Text)>lrSaldo)  AND (Uppercase(gParametros.Ler('', '[CADASTRO]', 'BloqueioEstoque', 'NAO')) = 'SIM') then
   begin
      CaixaMensagem( 'Produto sem saldo Para Transferencia (Saldo Atual '+FormatFloat('0',lrSaldo)+' )', ctAviso, [ cbOk ], 0 );
      FreeAndNil(loDaoSaldo);
      Exit;
   end;

   cdsTempTransferencia.Append;
   cdsTempTransferencia.FieldByName('Codigo').asInteger       := strToInt(edtProd_inv.Text);
   cdsTempTransferencia.FieldByName('Descricao').asString     := cmbNome_ProdutoInv.Text;
   cdsTempTransferencia.FieldByName('Quantidade').asInteger   := strToInt(edtQuantidade.Text);
   cdsTempTransferencia.post;
   cmbNome_ProdutoInv.KeyValue := Null;
   edtProd_inv.SetFocus;

   cmbSetorOrigem.Enabled := False;
   cmbSetorDestino.Enabled := False;
end;

procedure TfrmTransferenciaDeSetores.btnCancelarClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja Cancelar esta Transferencia ', ctConfirma, [ cbSimNao ], 0 )  Then
      AjustaControles;
end;

procedure TfrmTransferenciaDeSetores.AjustaControles;
begin
  cmbSetorOrigem.Enabled := True;
  cmbSetorDestino.Enabled := True;
  cmbSetorDestino.KeyValue := null;
  cmbSetorOrigem.KeyValue := null;
  cdsTempTransferencia.EmptyDataSet;
end;

procedure TfrmTransferenciaDeSetores.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmTransferenciaDeSetores.btnTransferirClick(Sender: TObject);
var liSequencia : Integer;
begin
   if CaixaMensagem( 'Deseja Concluir a Transferencia ', ctConfirma, [ cbSimNao ], 0 )  Then
   begin

      qryTransferencia.Close;
      qryTransferencia.Sql.text := 'Insert into Transferencias  (IdProduto,IdSetorOrigem,IdSetorDestino,Quantidade_Transferida,Data_Cadastro,Operador,NumeroTransferencia) Values '+
                                   '                            (:parIdProduto,:parIdSetorOrigem,:parIdSetorDestino,:parQuantidade_Transferida,:parData_Cadastro,:parOperador,:parNumeroTransferencia)  ';
      qryTransferencia.Prepared := true;
      liSequencia := StrToInt(Sequencia('NumeroTransferencia',True,'Transferencias',FrmPrincipal.dbxPrincipal,'',False,8));

      cdsTempTransferencia.First;
      while not cdsTempTransferencia.Eof do
      begin
         qryTransferencia.Close;
         qryTransferencia.ParamByName('parIdProduto').AsInteger            := cdsTempTransferencia.FieldByName('Codigo').AsInteger;
         qryTransferencia.ParamByName('parIdSetorOrigem').AsInteger        := cmbSetorOrigem.KeyValue;
         qryTransferencia.ParamByName('parIdSetorDestino').AsInteger       := cmbSetorDestino.KeyValue;
         qryTransferencia.ParamByName('parQuantidade_Transferida').AsFloat := cdsTempTransferencia.FieldByName('quantidade').AsFloat;
         qryTransferencia.ParamByName('parData_Cadastro').AsFloat          := gsData_Mov;
         qryTransferencia.ParamByName('parOperador').AsString              := gsOperador;
         qryTransferencia.ParamByName('parNumeroTransferencia').AsInteger     := liSequencia;
         qryTransferencia.ExecSQL;
         cdsTempTransferencia.Next;
      end;
   end;
   AjustaControles;
end;

procedure TfrmTransferenciaDeSetores.cmbNome_ProdutoInvChange(Sender: TObject);
begin
   if cmbNome_ProdutoInv.KeyValue <> null Then
      edtProd_inv.Text := inczero(cmbNome_ProdutoInv.KeyValue,5);
end;

procedure TfrmTransferenciaDeSetores.edtProd_invExit(Sender: TObject);
begin
   if Trim(edtProd_inv.text) <> '' Then
   Begin
      cmbNome_ProdutoInv.KeyValue :=  edtProd_inv.Text;
      if trim(cmbNome_ProdutoInv.text) = '' Then
      Begin
         CaixaMensagem( 'Produto não encontrado ', ctAviso, [ cbOk ], 0 );
         edtProd_inv.Setfocus;
      End;
   End;
end;

procedure TfrmTransferenciaDeSetores.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text := 'select Trans.NumeroTransferencia, '+
                           '       Prod.Descricao, '+
                           '       Trans.Quantidade_Transferida, '+
                           '      (Select Descricao from Setores where Setores.codigo=Trans.IdSetorOrigem)  as Origem, '+
                           '      (Select Descricao from Setores where Setores.codigo=Trans.IdSetorDestino)  as Destino '+
                           'from Transferencias trans '+
                           '     inner join T_produtos prod on Codigo=Trans.IDProduto';
   cdsTransferencias.Close;
   cdsTransferencias.ProviderName := dspVariavel.name;
   cdsTransferencias.open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select COd_Barras,Unid,Codigo,Descricao,Pco_Venda,Saldo,Tipo_Produto '+
                          'From T_Produtos '+
                          'where tipo_Produto=:parTipo_Produto ';
   qryVariavel.SQL.add(' Order by Descricao  ');
   qryVariavel.ParamByName('parTipo_Produto').AsString := '0';

   cdsCadProdutos.Close;
   cdsCadProdutos.ProviderName := dspVariavel.Name;
   cdsCadProdutos.Open;

    qryVariavel.Close;
    qryVariavel.Params.Clear;
    qryVariavel.SQL.text := 'Select * From Setores ';

    cdsSetores.Close;
    cdsSetores.ProviderName := dspVariavel.name;
    cdsSetores.open;

end;

end.

