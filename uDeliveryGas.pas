unit uDeliveryGas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinGrids, bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls,
  DB, uPrincipal, DBClient, uClassCliente,uFormBase, Menus,StrUtils, DBCtrls,
  ComCtrls, bsSkinTabs, uDaoClienteAnimal, OleCtrls, SHDocVw, FMTBcd, SqlExpr, 
  SqlTimSt;


type
  TfrmDeliveryGas = class(TFormBase)
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinPanel1: TbsSkinPanel;
    edtNome: TbsSkinEdit;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinExPanel2: TbsSkinExPanel;
    srcClientes: TDataSource;
    bsSkinPanel3: TbsSkinPanel;
    btnVenda05: TbsSkinDBGrid;
    bsSkinScrollBar1: TbsSkinScrollBar;
    cdsClientes: TClientDataSet;
    btnAdicionar: TbsSkinButton;
    btnRemoverDesconto: TbsSkinButton;
    cdslista: TClientDataSet;
    srcLista: TDataSource;
    cdslistaId: TIntegerField;
    cdslistaNome: TStringField;
    cdslistaData: TDateTimeField;
    cdslistaHora: TStringField;
    edtData: TbsSkinDateEdit;
    PopupMenu1: TPopupMenu;
    MarcarcomoEntregue1: TMenuItem;
    MarcarComonoEntregue1: TMenuItem;
    cdslistaStatus: TStringField;
    btnClientes: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Label1: TLabel;
    cdslistaHoraChegada: TStringField;
    cdslistaPrevisaoChegda: TStringField;
    bsSkinPanel4: TbsSkinPanel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel4: TbsSkinStdLabel;
    bsSkinStdLabel16: TbsSkinStdLabel;
    edtEndereco: TbsSkinEdit;
    edtBairro: TbsSkinEdit;
    edtCidade: TbsSkinEdit;
    edtPto_Referencia: TbsSkinEdit;
    bsSkinButton2: TbsSkinButton;
    cdslistaCodCliente: TIntegerField;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    dbgConsulta: TbsSkinDBGrid;
    srcAnimais: TDataSource;
    btnMostrarMapa: TbsSkinButton;
    PrevisodeChegada1: TMenuItem;
    edtHora: TbsSkinTimeEdit;
    cdslistaLancado: TStringField;
    bsSkinExPanel4: TbsSkinExPanel;
    btnVenda01: TbsSkinButton;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    btnNovoCliente: TbsSkinButton;
    qryModific: TSQLQuery;
    cmbtipoPesquisa: TComboBox;
    bsSkinExPanel5: TbsSkinExPanel;
    lblTipoPagamento: TbsSkinLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblEntregador: TbsSkinLabel;
    Label4: TLabel;
    lbltotal: TbsSkinLabel;
    Label5: TLabel;
    Memo1: TMemo;
    cdslistaFormaPagamento: TStringField;
    cdslistaEntregador: TStringField;
    cdslistaTotal: TFloatField;
    cdslistaNomeProduto: TStringField;
    btnVenda04: TbsSkinButton;
    bsSkinButton6: TbsSkinButton;
    btnVenda06: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    lblDevedor: TLabel;
    btnVendaproduto: TbsSkinButton;
    procedure edtNomeChange(Sender: TObject);
    procedure cdsClientesAfterScroll(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverDescontoClick(Sender: TObject);
    procedure dbgConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TbsColumn; State: TGridDrawState);
    procedure MarcarcomoEntregue1Click(Sender: TObject);
    procedure MarcarComonoEntregue1Click(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnMostrarMapaClick(Sender: TObject);
    procedure btnVenda01Click(Sender: TObject);
    procedure btnNovoClienteClick(Sender: TObject);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
    procedure cdslistaAfterScroll(DataSet: TDataSet);
    procedure PrevisodeChegada1Click(Sender: TObject);
    procedure btnVenda04Click(Sender: TObject);
    procedure bsSkinButton6Click(Sender: TObject);
    procedure btnVenda06Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure btnVendaprodutoClick(Sender: TObject);
  private
    VendaId : Integer;
    FormaPagamento : String;
    Total : Real;
    Produtos : String;
    procedure IncluirVenda(ProdutoId01, ProdutoId02, Quantidade01, Quantidade02 : Integer; ValorUnitario : real = 0  );
    { Private declarations }
  public
    { Public declarations }
  end;

var
   frmDeliveryGas: TfrmDeliveryGas;

implementation

uses
  uDaoCliente,ufuncoes, uCadClientes, uVendas, uMapa, uSelHora, uDaoVenda,
  uDaoFuncionario, uClassVenda, uDaoFormaPagamento, uDaoItemVenda,
  uClassItemVenda, uDaoProduto, uClassProduto, uCadastroRapidoCliente,
  uSelFormaPagamento, uclassContaCorrente, uClassDaoContaCorrente,
  uselFuncionario, uSelProduto;

{$R *.dfm}

procedure TfrmDeliveryGas.dbgConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TbsColumn;  State: TGridDrawState);
begin

   if gdSelected in State then
      exit;

  if cdsLista.FieldByName('Entregador').AsString<>EmptyStr then
   Begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $0080FFFF;
   End;
   if cdsLista.FieldByName('Hora').AsString='2' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := clred;
   end;
   if  cdslista.FieldByName('Status').AsString='S' then
   begin
      dbgConsulta.Canvas.font.Color    := clBlack;
      dbgConsulta.Canvas.Brush.Color   := $00B7F98A;
   end;

   dbgConsulta.DefaultDrawColumnCell( Rect, DataCol, Column, State );
end;

procedure TfrmDeliveryGas.bsSkinButton1Click(Sender: TObject);
begin
   FrmVendas := TfrmVendas.create(Self);
   frmvendas.Tag := 3; // venda de serviços
   frmvendas.pAtendimento := True;
   frmvendas.pliCliente := cdsLista.FieldByName('Id').AsInteger;
   frmVendas.Showmodal;
end;

procedure TfrmDeliveryGas.btnMostrarMapaClick(Sender: TObject);
var consultaendereco : string;
begin
   consultaendereco := 'http://maps.google.com/maps?q=;';
   if Trim(cdsClientes.FieldByName('Cidade').AsString)<> '' then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Cidade').AsString +',';
   if Trim(cdsClientes.FieldByName('UF').AsString) <> '' then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('UF').AsString + ',';
   if Trim(cdsClientes.FieldByName('Endereco').AsString) <> ''  then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Endereco').AsString+',';
   if Trim(cdsClientes.FieldByName('Cep').AsString) <> ''  then
      consultaendereco := consultaendereco + cdsClientes.FieldByName('Cep').AsString;
   FrmMapa := TFrmMapa.create(Self);
   FrmMapa.caption := consultaendereco;
   FrmMapa.showmodal;
end;

procedure TfrmDeliveryGas.btnNovoClienteClick(Sender: TObject);
begin
  frmCadastroClienteSimplificado := TfrmCadastroClienteSimplificado.Create(Self);
  frmCadastroClienteSimplificado.showModal;
  edtNome.SetFocus;
  cmbtipoPesquisa.ItemIndex := 0;
  edtNome.Text := frmCadastroClienteSimplificado.edtTelefone.Text;
  FreeAndNil(frmCadastroClienteSimplificado);
end;

procedure TfrmDeliveryGas.bsSkinButton3Click(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja ZERAR a lista de entregas', ctConfirma, [ cbSimNao ], 0 )  Then
     cdsLista.EmptyDataSet;
end;

procedure TfrmDeliveryGas.bsSkinButton4Click(Sender: TObject);
begin
   IncluirVenda(2,0,1,0);
end;

procedure TfrmDeliveryGas.bsSkinButton5Click(Sender: TObject);
begin
   IncluirVenda(3,0,2,0,2.5);
end;

procedure TfrmDeliveryGas.bsSkinButton6Click(Sender: TObject);
begin
   IncluirVenda(3,1,2,1,2.5);
end;

procedure TfrmDeliveryGas.btnAdicionarClick(Sender: TObject);
begin
  cdsLista.Append;
  cdsLista.FieldByName('Id').AsInteger := VendaId;
  cdsLista.FieldByName('Nome').AsString := cdsClientes.FieldByName('Descricao').AsString + '('+cdsClientes.FieldByName('Endereco').AsString+')' ;
  cdsLista.FieldByName('Data').AsDatetime :=  edtData.date;
  cdsLista.FieldByName('Hora').AsString := edtHora.Text;
  cdsLista.Post;
end;

procedure TfrmDeliveryGas.btnClientesClick(Sender: TObject);
begin
   frmCadClientes := TfrmCadClientes.Create(Nil);
   frmCadClientes.Tag := 5;
   frmCadClientes.showmodal;
end;

procedure TfrmDeliveryGas.btnRemoverDescontoClick(Sender: TObject);
begin
  cdsLista.Delete;
end;

procedure TfrmDeliveryGas.btnVenda01Click(Sender: TObject);
begin
   IncluirVenda(1,0,1,0);
end;
procedure TfrmDeliveryGas.btnVenda04Click(Sender: TObject);
begin
   IncluirVenda(4,0,1,0);
end;

procedure TfrmDeliveryGas.btnVenda06Click(Sender: TObject);
begin
   IncluirVenda(1,2,1,1);
end;

procedure TfrmDeliveryGas.btnVendaprodutoClick(Sender: TObject);
var ProdutoId01, ProdutoId02, Quantidade01, Quantidade02 : Integer;
begin
   ProdutoId02   := 0;
   Quantidade02  := 0;
   frmSelProduto := TfrmSelProduto.Create(Self);
   frmSelProduto.ShowModal;
   if frmSelProduto.Tag=0 then
      exit;
   ProdutoId01   :=  frmSelProduto.cmbProdutoUm.KeyValue;
   Quantidade01  :=  frmSelProduto.qtdeProdutoUm.Value;
   if frmSelProduto.qtdeProdutoDois.Value>0 then
   begin
      ProdutoId02   := frmSelProduto.cmbProdutoDois.KeyValue;
      Quantidade02  := frmSelProduto.qtdeProdutoDois.Value;
   end;
   IncluirVenda(ProdutoId01,ProdutoId02,Quantidade01,Quantidade02);
end;

procedure TfrmDeliveryGas.IncluirVenda(ProdutoId01, ProdutoId02, Quantidade01, Quantidade02 : Integer; ValorUnitario : real = 0  );
var DaoVenda           : TDaoVenda;
    DaoCliente         : TDaoCliente;
    DaoFuncionario     : TDaofuncionario;
    DaoformaPagamento  : TDaoFormaPagamento;
    DaoProduto         : TDaoProduto;
    Produto            : TProduto;
    Venda              : TVenda;
    DaoItenVenda       : TdaoItemVenda;
    itemVenda          : TItemVenda;
    FormaPagamentoID   : integer;
    DadosContaCorrente : TContaCorrente;
    GravaContaCorrente : TDaoContaCorrente;
    TotalVenda : Real;
    lsDescreicaoProduto : String;
    lrTipoLancamento : Integer;
begin
   frmselFormaPagamento := TfrmselFormaPagamento.Create(Self);
   frmselFormaPagamento.ShowModal;
   FormaPagamentoID := frmselFormaPagamento.cmbNome_formaPagamento.KeyValue;
   lrTipoLancamento := frmselFormaPagamento.pTipoLancamento;
   FreeAndnil(frmselFormaPagamento);
   
   DaoCliente        := TDaoCliente.Create(gConexao);
   DaoFuncionario    := TDaofuncionario.Create(gConexao);
   DaoformaPagamento := TDaoFormaPagamento.Create(gConexao);
   DaoItenVenda      := TdaoItemVenda.Create(gConexao);
   DaoProduto        := TDaoProduto.Create(gConexao);
   produto           := DaoProduto.Buscar(ProdutoId01);

   if ValorUnitario<>0 then
      Produto.PrecoTabela := Valorunitario;

   TotalVenda := 0;
   DaoVenda    := TDaoVenda.Create(gConexao);
   Venda       := TVenda.Create(gConexao);
   Venda.VendaID := StrToInt(Sequencia('SeqVenda',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));
   Venda.Cliente := DaoCliente.Buscar(cdsClientes.FieldByName('Codigo').AsInteger);
   Venda.Empresa := gEmpresa;
   Venda.FormaPagamento := DaoformaPagamento.Buscar(FormaPagamentoID);
   Venda.Funcionario := DaoFuncionario.Buscar(1);
   venda.Status := '1';
   Venda.Data_Venda := gsData_Mov;
   Venda.DataMovimento := gsData_Mov;
   Venda.TipoVenda := 'P';
   venda.OSID := StrToInt(Sequencia('Seqos',True,'T_Sequencias',FrmPrincipal.dbxPrincipal,'',False,8));
   Venda.Valor_Total := TotalVenda;
   DaoVenda.Incluir(Venda);

   itemVenda               := TItemVenda.Create;
   ItemVenda.ProdutoId     := Produto.ProdutoId;
   ItemVenda.Qunatidade    := Quantidade01;
   ItemVenda.PrecoVenda    := Produto.PrecoTabela;
   ItemVenda.Total         := (Produto.PrecoTabela*Quantidade01);
   ItemVenda.Operador      := gsOperador;
   ItemVenda.CodigoEmpresa := gempresa.IdEmpresa;
   ItemVenda.VendaID       := Venda.VendaID;
   ItemVenda.SetorId       := 1;
   ItemVenda.PrecoVenda    := Produto.PrecoTabela;
   ItemVenda.TipoCalculo   := 1;
   ItemVenda.FuncionarioId := 1;
   DaoItenVenda.InserirItem(ItemVenda);
   TotalVenda := TotalVenda + (Produto.PrecoTabela*Quantidade01);
   lsDescreicaoProduto := lsDescreicaoProduto + produto.Descricao;

   if ProdutoId02<>0 then
   begin
      produto := DaoProduto.Buscar(ProdutoId02);
      ItemVenda.ProdutoId     := Produto.ProdutoId;
      ItemVenda.Qunatidade    := Quantidade02;
      ItemVenda.PrecoVenda    := Produto.PrecoTabela;
      ItemVenda.Total         := (Produto.PrecoTabela*Quantidade02);
      ItemVenda.Operador      := gsOperador;
      ItemVenda.CodigoEmpresa := gempresa.IdEmpresa;
      ItemVenda.VendaID       := Venda.VendaID;
      ItemVenda.SetorId       := 1;
      ItemVenda.PrecoVenda    := Produto.PrecoTabela;
      ItemVenda.TipoCalculo   := 1;
      ItemVenda.FuncionarioId := 1;
      DaoItenVenda.InserirItem(ItemVenda);
      TotalVenda := TotalVenda +(Produto.PrecoTabela*Quantidade02);
      lsDescreicaoProduto := lsDescreicaoProduto+', '+ produto.Descricao;
   end;

   VendaId := Venda.VendaID;
   FormaPagamento := Venda.FormaPagamento.Descricao;
   Total := TotalVenda;
   DaoVenda.AtualizarTotal(VendaId,TotalVenda);

   Case lrTipoLancamento Of
      0 : // Lancamento no caixa
      Begin
         qryModific.Close;
         qryModific.SQL.Text := 'Insert into T_movCaixa ( Cod_Caixa, Valor,Historico,Data_Lancamento,D_C,SeqVenda,Cod_tipoDespesa,Sequencia,Cod_FormaPagamento,Data_Cad ) Values '+
                                '                       ( :parCod_Caixa, :parValor,:parHistorico,:parData_Lancamento,'+
                                '                         :parD_C,:parSeqVenda,:parCod_tipoDespesa,:parSeqeuencia,:parCod_FormaPagamento,:parData_Cad ) ';
         qryModific.ParamByName('parCod_Caixa').AsInteger            := gParametros.Ler( '', '[GERAL]', 'CaixaBalcao', '0001' );
         qryModific.ParamByName('parValor').asFloat                  := TotalVenda;
         qryModific.ParamByName('parHistorico').asString             := 'Recebimento de Venda A vista nº '+IntToStr(Venda.VendaID);
         qryModific.ParamByName('parData_Lancamento').AsSqlTimeStamp := datetimeToSqlTimeStamp(gsData_Mov);
         qryModific.ParamByName('parData_Cad').AsSqlTimeStamp        := datetimeToSqlTimeStamp(now);
         qryModific.ParamByName('parD_C').AsString                   := 'C';
         qryModific.ParamByName('parSeqVenda').asInteger             :=  Venda.VendaID;
         qryModific.ParamByName('parCod_tipoDespesa').AsString       := '0101';
         qryModific.ParamByName('parSeqeuencia').AsInteger           := StrToInt(Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8));
         qryModific.ParamByName('parCod_FormaPagamento').AsInteger   := FormaPagamentoId;
         qryModific.ExecSQL;
      End;
      2 :
      Begin
         DadosContaCorrente := TContaCorrente.Create;
         GravaContaCorrente := TDaoContaCorrente.Create(gConexao);
         DadosContaCorrente.D_C         := 'D';
         DadosContaCorrente.Valor       := TotalVenda;
         DadosContaCorrente.Cod_Cliente := Venda.Cliente.Id;
         DadosContaCorrente.Historico   := lsDescreicaoProduto+' Venda nº '+IntToStr(Venda.VendaID);
         DadosContaCorrente.Documento   := Venda.VendaID;
         IF  not GravaContaCorrente.Atualizar(DadosContaCorrente) Then
         Begin
            CaixaMensagem( 'Não foi possivel lancar no conta corrente', ctAviso, [ cbOk ], 0 );
            //frmPrincipal.dbxPrincipal.RollbackFreeAndNil( trdNrTransacao );
            Exit;
         End;
      End;
   End;
   VendaId := Venda.VendaID;

   cdsLista.Append;
   cdsLista.FieldByName('Id').AsInteger := VendaId;
   cdsLista.FieldByName('Nome').AsString := cdsClientes.FieldByName('Descricao').AsString + '('+cdsClientes.FieldByName('Endereco').AsString+')' ;
   cdsLista.FieldByName('FormaPagamento').AsString := FormaPagamento;
   cdsLista.FieldByName('Total').AsFloat :=  Total;
   cdsLista.FieldByName('NomeProduto').AsString := lsDescreicaoProduto;
   cdsLista.FieldByName('Hora').AsString := IntToStr(lrTipoLancamento);
   cdsLista.Post;

   FreeAndNil(DaoCliente);
   FreeAndNil(DaoFuncionario);
   FreeAndNil(DaoformaPagamento);
   FreeAndNil(DaoProduto);
   FreeAndNil(DaoItenVenda);

end;

procedure TfrmDeliveryGas.cdsClientesAfterScroll(DataSet: TDataSet);
var DaoCliente : TDaoCliente;
    Cliente : TCliente;
    DaoClienteAnimal : TDaoClienteAnimal;
    ContaCorrente : TDaoContaCorrente;
    saldo : Real;
begin
   DaoCliente := TDaoCliente.Create(gConexao);
   Cliente := DaoCliente.Buscar(cdsClientes.FieldByName('Codigo').AsInteger);
   edtEndereco.Text := Cliente.Endereco.logradouro;
   edtBairro.Text := Cliente.Endereco.bairro;
   edtCidade.text := Cliente.Endereco.cidade;
   edtPto_Referencia.Text := Cliente.Endereco.PontoReferencia;
   ContaCorrente := TDaoContaCorrente.Create(gConexao);
   Saldo := ContaCorrente.Saldo(cdsClientes.FieldByName('Codigo').AsInteger);
   lblDevedor.Caption:='';
   if Saldo>0 then
      lblDevedor.Caption:='Cliente Com Saldo Devedor '+formatFloat('0.00', Saldo );

   DaoClienteAnimal   := TDaoClienteAnimal.create(gConexao);
   srcAnimais.DataSet := DaoClienteAnimal.BucarAnimalCliente(Cliente.Id);

   FreeAndNil(DaoCliente);
   FreeAndNil(Cliente);
end;

procedure TfrmDeliveryGas.cdslistaAfterScroll(DataSet: TDataSet);
begin
   lblTipoPagamento.Caption := cdsLista.fieldByname('FormaPagamento').AsString;
   lblEntregador.Caption := cdsLista.fieldByname('Entregador').AsString;
   lbltotal.Caption := FormatFloat('0.00',cdsLista.fieldByname('Total').AsFloat);
   memo1.Text := cdsLista.fieldByname('NomeProduto').AsString;
end;

procedure TfrmDeliveryGas.edtNomeChange(Sender: TObject);
var parametros : TStringList;
begin
   parametros := TStringList.Create;
   parametros.Add('%'+edtNome.Text+'%');
   if cmbtipoPesquisa.ItemIndex = 1 then
      cdsClientes.Data := gConexao.BuscarDadosSQL('Select * from T_Clientes where Descricao Like :parNome_fantasia',parametros ).Data
   else
      cdsClientes.Data := gConexao.BuscarDadosSQL('Select * from T_Clientes where Telefone Like :parNome_fantasia',parametros ).Data;
end;

procedure TfrmDeliveryGas.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   cdsLista.SaveToFile(gspath+'config\listapendente.xml',dfXML);
end;

procedure TfrmDeliveryGas.FormShow(Sender: TObject);
begin
   if FileExists(gspath+'config\listapendente.xml') then
      cdsLista.LoadFromFile(gspath+'config\listapendente.xml');
   lblDevedor.Caption:='';
   edtData.date := Now;
end;

procedure TfrmDeliveryGas.MarcarcomoEntregue1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'S';
   cdsLista.Post;
end;

procedure TfrmDeliveryGas.MarcarComonoEntregue1Click(Sender: TObject);
begin
   cdsLista.Edit;
   cdsLista.FieldByname('Status').AsString := 'N';
   cdsLista.Post;
end;

procedure TfrmDeliveryGas.PrevisodeChegada1Click(Sender: TObject);
var Dados : TClientDataSet;
begin
   Dados := gConexao.BuscarDadosSQL('Select Codigo,Descricao From T_Funcionarios where Funcao='+QuotedStr('Entregador'),Nil);
   frmSelFuncionario := TfrmSelFuncionario.Create(Self);
   frmSelFuncionario.srcMecanico.DataSet := Dados;
   frmSelFuncionario.ShowModal;

   cdsLista.Edit;
   cdsLista.FieldByName('Entregador').AsString := frmSelFuncionario.cmbNome_Funcionario.Text;
   cdsLista.post;

end;

end.
