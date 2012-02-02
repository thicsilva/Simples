unit uRemessaParaVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, bsdbctrls, ComCtrls,
  bsSkinTabs, ExtCtrls, ToolWin, bsSkinGrids, bsDBGrids, FMTBcd, DB, DBClient,
  Provider, SqlExpr;

type
  TfrmRemessaParaVenda = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    brnNovaRemessa: TbsSkinSpeedButton;
    btnFecharRemessa: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    PaginaDeconsulta: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    tabNovaRemessa: TbsSkinTabSheet;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinStdLabel15: TbsSkinStdLabel;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    edtCod_Funcionario: TbsSkinEdit;
    btn: TbsSkinDBGrid;
    pnlProdutos: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel5: TbsSkinStdLabel;
    edtCod_Produto: TbsSkinEdit;
    cmbNome_Produto: TbsSkinDBLookupComboBox;
    edtQtde_Venda: TbsSkinEdit;
    btnAcessar: TbsSkinButton;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    BtnCancela: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinDBGrid2: TbsSkinDBGrid;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinDBGrid3: TbsSkinDBGrid;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    cdsVendedores: TClientDataSet;
    SrcVendedores: TDataSource;
    cdsProdutos: TClientDataSet;
    SrcProdutos: TDataSource;
    cdsTempProdutos: TClientDataSet;
    srcTempProdutos: TDataSource;
    cdsTempProdutosCodigo: TIntegerField;
    cdsTempProdutosDescricao: TStringField;
    cdsTempProdutosqtde_enviada: TFloatField;
    btnRemover: TbsSkinButton;
    bsSkinPanel1: TbsSkinPanel;
    cmbtipoconsulta: TbsSkinComboBox;
    btnPesquisar: TbsSkinButton;
    srcRemessas: TDataSource;
    cdsRemessas: TClientDataSet;
    srcItensRemessa: TDataSource;
    btndicionar: TbsSkinSpeedButton;
    bsSkinScrollBar1: TbsSkinScrollBar;
    bsSkinScrollBar2: TbsSkinScrollBar;
    bsSkinScrollBar3: TbsSkinScrollBar;
    procedure FormShow(Sender: TObject);
    procedure edtCod_FuncionarioExit(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure edtCod_ProdutoExit(Sender: TObject);
    procedure cmbNome_ProdutoChange(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure brnNovaRemessaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cdsRemessasAfterScroll(DataSet: TDataSet);
    procedure btnFecharRemessaClick(Sender: TObject);
    procedure btndicionarClick(Sender: TObject);
  private
    procedure LimpaCampos;
    procedure LimparProduto;
    procedure Cancelar;
    function RetornarProdutosDaRemessa ( RemessaId : Integer ) : TclientDataSet;
    { Private declarations }
  public
    pRemessaId : Integer;
    { Public declarations }
  end;

var
  frmRemessaParaVenda: TfrmRemessaParaVenda;

implementation

uses uFuncoes, Remessa, DaoRemessa, uPrincipal;

{$R *.dfm}

procedure TfrmRemessaParaVenda.bsSkinSpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRemessaParaVenda.btndicionarClick(Sender: TObject);
begin
   PaginaDeconsulta.ActivePageIndex := 1;
   btnOk.Enabled := true;
   btnCancela.Enabled := true;
   brnNovaRemessa.Enabled := False;
   btnFecharRemessa.Enabled := False;
   btndicionar.Enabled := False;
   tabNovaRemessa.Enabled := True;
   edtCod_Funcionario.Enabled := False;
   cmbNome_Funcionario.Enabled := False;
   edtCod_Funcionario.Text := cdsRemessas.FieldByname('FuncionarioId').AsString;
   edtCod_funcionarioExit(edtCod_funcionario);
   pRemessaId := cdsRemessas.FieldByname('ID').AsInteger;
end;

procedure TfrmRemessaParaVenda.btnAcessarClick(Sender: TObject);
begin
   if StrToInt(edtQtde_Venda.Text)<=0 then
   begin
     CaixaMensagem('A Quantidade não pode ser igual a zero ',ctAviso,[ cbOk ],0);
     Exit;
   end;

   if cdsTempProdutos.Locate('Codigo',edtCod_Produto.Text, []) then
      cdsTempProdutos.Edit
   else
      cdsTempProdutos.Append;
   cdsTempProdutos.FieldByName('Codigo').AsInteger :=StrToInt(edtCod_Produto.Text);
   cdsTempProdutos.FieldByName('Descricao').AsString := cmbNome_Produto.Text;
   cdsTempProdutos.FieldByName('Qtde_Enviada').AsInteger := StrToInt(edtQtde_Venda.Text);
   cdsTempProdutos.Post;
   LimparProduto;
end;

procedure TfrmRemessaParaVenda.BtnCancelaClick(Sender: TObject);
begin
  if not CaixaMensagem( 'Deseja Cancelar a includsão da Remessa', ctConfirma, [ cbSimNao ], 0 )  Then
     exit;
  LimpaCampos;
  Cancelar;
  cdsTempProdutos.EmptyDataSet;
end;
procedure TfrmRemessaParaVenda.Cancelar;
begin
  PaginaDeconsulta.ActivePageIndex := 0;
  tabNovaRemessa.Enabled :=False;
  btnOk.Enabled := False;
  btnCancela.Enabled := False;
  brnNovaRemessa.Enabled := true;
  btnFecharRemessa.Enabled := True;
  btndicionar.Enabled := true;
end;
procedure TfrmRemessaParaVenda.brnNovaRemessaClick(Sender: TObject);
begin
   tabNovaRemessa.Enabled := True;
   PaginaDeconsulta.ActivePageIndex := 1;
   btnOk.Enabled := true;
   btnCancela.Enabled := true;
   brnNovaRemessa.Enabled := False;
   btnFecharRemessa.Enabled := False;
   edtCod_Funcionario.SetFocus;
end;

procedure TfrmRemessaParaVenda.btnFecharRemessaClick(Sender: TObject);
var
  remessa : TRemessa;
  daoRemessa : TDaoRemessa;
  cdsItensRemessa : TClientDataSet;
begin
  daoRemessa := TDaoRemessa.Create(gConexao);
  try
    if daoRemessa.FecharRemessas(cdsRemessas.FieldByName('id').AsInteger,gsOperador) then
       CaixaMensagem('Remessa fehcada com sucesso',ctAviso,[ cbOk ],0)
    else
       CaixaMensagem('Um Erro Aconteceu e a remnessa não foi Fehcada',ctAviso,[ cbOk ],0);
  finally
    daoRemessa.Free;
  end;
  if CaixaMensagem('Deseja abri uma remessa com o saldo deste fechamento',ctConfirma,[ cbSimNao ],0) then
  begin
     daoRemessa := TDaoRemessa.Create(gConexao);
     try
       remessa := DaoRemessa.Buscar(cdsRemessas.FieldByName('id').AsInteger);
       remessa.Status :='A';
       cdsItensRemessa := DaoRemessa.BuscarItens(cdsRemessas.FieldByName('id').AsInteger);
       daoremessa.Incluir(remessa,cdsItensRemessa);
     finally
       daoRemessa.Free;
     end;

  end;


end;

procedure TfrmRemessaParaVenda.btnokClick(Sender: TObject);
var
  remessa : TRemessa;
  daoRemessa : TDaoRemessa;
begin
  remessa := TRemessa.Create;;
  daoRemessa := TDaoRemessa.Create(gConexao);
  if pRemessaId<>0 then
  begin
     daoRemessa.AtualizarItens(cdsTempProdutos,pRemessaId,gsOperador);
     pRemessaId:=0;
  end
  else
  Begin
     if daoRemessa.TemRemessaAberta(StrToint(edtCod_Funcionario.Text)) then
     begin
       CaixaMensagem('Este Supervidsor ja Tem Remessa em Aberto',ctAviso,[ cbOk ],0);
       Exit;
     end;

     if not CaixaMensagem( 'Deseja Concluir a Remessa', ctConfirma, [ cbSimNao ], 0 )  Then
       exit;


     if Trim(edtCod_Funcionario.Text)='' then
     begin
       CaixaMensagem('Informe o vendedor',ctAviso,[ cbOk ],0);
       Exit;
     end;

     if cdsTempProdutos.IsEmpty then
     begin
       CaixaMensagem('Nenhum Produto Foi Adicionado ',ctAviso,[ cbOk ],0);
       Exit;
     end;

    remessa.Operador := gsOperador;
    remessa.DataCadastro := gsData_Mov;
    remessa.FuncionarioID := Strtoint(edtCod_Funcionario.Text);
    remessa.Status := 'A';

    daoRemessa.Incluir(remessa,cdsTempProdutos);
  End;
  FreeAndNil(daoRemessa);
  FreeAndNil( remessa );
  cdsTempProdutos.EmptyDataSet;
  Cancelar;
end;

procedure TfrmRemessaParaVenda.btnPesquisarClick(Sender: TObject);
var daoRemessa : TDaoRemessa;
begin
  daoRemessa := TDaoRemessa.Create(gConexao);
  if cmbtipoconsulta.ItemIndex = 0 then
     cdsRemessas.Data := daoRemessa.RetornarRemessas('A').Data
   else
     cdsRemessas.Data := daoRemessa.RetornarRemessas('F').Data;
end;

procedure TfrmRemessaParaVenda.btnRemoverClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja Exclir o Produto '+cdsTempProdutos.FieldByname('Descricao').asString, ctConfirma, [ cbSimNao ], 0 )  Then
      cdsTempProdutos.Delete;
end;

procedure TfrmRemessaParaVenda.cdsRemessasAfterScroll(DataSet: TDataSet);
begin
  RetornarProdutosDaRemessa(cdsRemessas.FieldByName('Id').AsInteger);
end;

procedure TfrmRemessaParaVenda.cmbNome_FuncionarioChange(Sender: TObject);
begin
   if cmbNome_Funcionario.KeyValue <> null then
      edtCod_Funcionario.Text := cmbNome_Funcionario.KeyValue;
end;

procedure TfrmRemessaParaVenda.cmbNome_ProdutoChange(Sender: TObject);
begin
   if cmbNome_Produto.KeyValue <> null Then
      edtcod_Produto.Text := inczero(cmbNome_Produto.KeyValue,5);
end;

procedure TfrmRemessaParaVenda.edtCod_FuncionarioExit(Sender: TObject);
begin
   if trim(edtCod_Funcionario.text)<>'' then
   Begin
      cmbNome_Funcionario.KeyValue := StrToInt(edtCod_Funcionario.text);
      cmbNome_FuncionarioChange(cmbNome_Funcionario);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtCod_Funcionario.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
      End;
   End;
end;

procedure TfrmRemessaParaVenda.edtCod_ProdutoExit(Sender: TObject);
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

procedure TfrmRemessaParaVenda.FormShow(Sender: TObject);
begin
   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Funcionarios where ativo=:parAtivo order by Descricao ';
   qryVariavel.ParamByName('parAtivo').AsString := 'S';

   cdsVendedores.Close;
   cdsVendedores.ProviderName := dspVariavel.Name;
   cdsVendedores.Open;

   qryVariavel.Close;
   qryVariavel.Params.Clear;
   qryVariavel.SQL.text :='Select Codigo,Descricao from T_Produtos  order by Descricao ';

   cdsProdutos.Close;
   cdsProdutos.ProviderName := dspVariavel.Name;
   cdsProdutos.Open;

   PaginaDeconsulta.ActivePageIndex := 0;
   tabNovaRemessa.Enabled := False;
   btnPesquisarClick(btnPesquisar);
   pRemessaId := 0 ;
end;

procedure TfrmRemessaParaVenda.LimpaCampos;
begin
  edtCod_Funcionario.text := '';
  cmbNome_Funcionario.KeyValue := Null;
  LimparProduto;
end;

procedure TfrmRemessaParaVenda.LimparProduto;
begin
  edtCod_Produto.text := '';
  edtQtde_Venda.Text := '0';
  cmbNome_Produto.KeyValue := Null;
  edtcod_Produto.SetFocus;
end;

function TfrmRemessaParaVenda.RetornarProdutosDaRemessa( RemessaId: Integer): TclientDataSet;
var lstParametros : TStringList;
begin
  lstParametros := TStringList.Create;
  lstParametros.Add(IntToStr(RemessaId));
  srcItensRemessa.DataSet := gConexao.BuscarDadosSQL('Select Prod.Descricao as Produto, Itens.*, '+
                                                     '(QuantidadeEnviada + QuantidadeDevolvida)- QuantidadeVendida  as Saldo '+
                                                     'from ItensRemessa Itens '+
                                                     'Left Join T_Produtos Prod on Prod.Codigo=Itens.ProdutoId ' +
                                                     'where RemessaId=:parRemessaId order by Prod.Descricao',lstParametros);
  FreeAndNil(lstParametros);
end;

end.
