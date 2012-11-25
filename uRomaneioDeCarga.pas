unit uRomaneioDeCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Mask, bsSkinBoxCtrls,
  bsSkinTabs, DBClient,uFormBase, RDprint, bsdbctrls;

type
  TfrmRomaneioDeEntrega = class(TFormBase)
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnGerar: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pagGeral: TbsSkinPageControl;
    PagNovoRomaneio: TbsSkinTabSheet;
    cxGrid1: TcxGrid;
    GrdVendas: TcxGridDBTableView;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Desconto: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Complemento: TcxGridDBColumn;
    grdDevolucoes: TcxGridDBTableView;
    grdDevolucoesColumn1: TcxGridDBColumn;
    GrdItensDevolvidos: TcxGridDBTableView;
    GrdItensDevolvidosColumn1: TcxGridDBColumn;
    GrdItensDevolvidosColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinLabel1: TbsSkinLabel;
    edtNumeroVenda: TbsSkinEdit;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    cdsVendasRomaneio: TClientDataSet;
    cdsVendasRomaneioNumeroVenda: TIntegerField;
    cdsVendasRomaneioClienteId: TIntegerField;
    cdsVendasRomaneioNome_cliente: TStringField;
    cdsVendasRomaneioVendedor: TStringField;
    cdsVendasRomaneioDataVenda: TDateTimeField;
    cdsVendasRomaneioTotal_Financeiro: TFloatField;
    cdsVendasRomaneioTotal_Peso: TFloatField;
    srcVendasRomaneio: TDataSource;
    GrdVendasNumeroVenda: TcxGridDBColumn;
    GrdVendasClienteId: TcxGridDBColumn;
    GrdVendasNome_cliente: TcxGridDBColumn;
    GrdVendasVendedor: TcxGridDBColumn;
    GrdVendasDataVenda: TcxGridDBColumn;
    GrdVendasTotal_Financeiro: TcxGridDBColumn;
    GrdVendasTotal_Peso: TcxGridDBColumn;
    cxGrid2: TcxGrid;
    GridRomaneio: TcxGridDBTableView;
    GridRomaneioCodigo: TcxGridDBColumn;
    GridRomaneioData_cad: TcxGridDBColumn;
    GridRomaneioCod_Emp: TcxGridDBColumn;
    GridRomaneioOperador: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinButton4: TbsSkinButton;
    bsSkinButton5: TbsSkinButton;
    srcRomaneios: TDataSource;
    GridRomaneioPeso_total: TcxGridDBColumn;
    GridRomaneioQtde_Venda: TcxGridDBColumn;
    GridRomaneioMotorista: TcxGridDBColumn;
    impMatricial: TRDprint;
    btnCancelar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    edtFuncionarioId: TbsSkinEdit;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    bsSkinLabel2: TbsSkinLabel;
    srcFuncionarios: TDataSource;
    bsSkinButton2: TbsSkinButton;
    Colum_NomeStatus: TcxGridDBColumn;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinButton6: TbsSkinButton;
    procedure bsSkinButton3Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cdsVendasRomaneioAfterOpen(DataSet: TDataSet);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure pagGeralChange(Sender: TObject);
    procedure impMatricialNewPage(Sender: TObject; Pagina: Integer);
    procedure bsSkinButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsSkinButton5Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cmbNome_FuncionarioChange(Sender: TObject);
    procedure edtFuncionarioIdExit(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure GridRomaneioCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure bsSkinButton6Click(Sender: TObject);
  private
    { Private declarations }
    pviLinha : Integer;
    pviTipoRelatorio : Integer;
    Function RetornarTotalRomaneio : Real;
    function RetornarTotalPesoLiquido :Real;
    function RetornarTotalPesoBruto :Real;
    procedure AtualizarRomaneionasVendas(RomaneioId: Integer);
    procedure mudarFoco;
    procedure AtualizarGridRomaneio;

  public
    { Public declarations }
  end;

const ROMANEIO_FINANCEIRO = 1;
      ROMANEIO_PRODUTOS   = 2;
var
  frmRomaneioDeEntrega: TfrmRomaneioDeEntrega;

implementation

uses uPrincipal, uDaoVenda, uClassVenda, uFuncoes, uClassRomaneio, uDaoRomaneio,
  uDaoFuncionario, uControllerRomaneio;

{$R *.dfm}

procedure TfrmRomaneioDeEntrega.bsSkinButton1Click(Sender: TObject);
begin
    cdsVendasRomaneio.delete;
end;

procedure TfrmRomaneioDeEntrega.bsSkinButton2Click(Sender: TObject);
var ControllerRomaneio : TControllerRomaneio;
begin
   if not gsPerfilacesso.VerificaAcesso('Movimento','Romaneio de Entrega','Cancelar',gbMaster) Then
   Begin
      CaixaMensagem( 'Acesso restrito a senha ', ctAviso, [ cbOk ], 0 );
      Exit;
   End;
   if srcRomaneios.DataSet.fieldByName('Status').AsString='F' then
   begin
      CaixaMensagem( 'Romaneio ja Finalizado', ctAviso, [ cbOk ], 0 );
      exit;
   end;

   if CaixaMensagem( 'Deseja cancelar o Romaneio '+srcRomaneios.DataSet.fieldByName('Id').AsString, ctConfirma, [ cbSimNao ], 0 ) then
   begin
      ControllerRomaneio := TControllerRomaneio.Create(gConexao);
      ControllerRomaneio.Cancelar(srcRomaneios.DataSet.fieldByName('Id').AsInteger);
      FreeAndnil(ControllerRomaneio);
      AtualizarGridRomaneio;
   end;
end;

procedure TfrmRomaneioDeEntrega.bsSkinButton3Click(Sender: TObject);
var DaoVenda : TDaoVenda;
    Venda : TVenda;
begin
   if Strtointdef(edtNumeroVenda.Text,0)=0 then
   begin
      CaixaMensagem( 'Numero da venda Invalido', ctAviso, [ cbOk ], 0 );
      MudarFoco;
      exit;
   end;

   if cdsVendasRomaneio.locate('NumeroVenda',edtNumeroVenda.Text,[]) then
   begin
      CaixaMensagem( 'Venda já Incluida', ctAviso, [ cbOk ], 0 );
      MudarFoco;
      Exit;
   end;

   DaoVenda := TdaoVenda.Create(gConexao);
   Venda := DaoVenda.buscar(Strtoint(edtNumeroVenda.Text));
   try
      if venda.VendaID = 0 then
      begin
         CaixaMensagem( 'Venda Não Encontrada ', ctAviso, [ cbOk ], 0 );
         MudarFoco;
         Exit;
      end;
      if Venda.RomaneioId <> 0 then
      begin
         CaixaMensagem( 'A Venda já esta no romaneio '+IntToStr(Venda.RomaneioId), ctAviso, [ cbOk ], 0 );
         MudarFoco;
         Exit;
      end;

      if Venda.Entregue then
      begin
         CaixaMensagem( 'A Venda já foi entregue ', ctAviso, [ cbOk ], 0 );
         MudarFoco;
         Exit;
      end;


      cdsVendasRomaneio.Append;
      cdsVendasRomaneio.FieldByName('NumeroVenda').AsInteger :=  Venda.VendaID;
      cdsVendasRomaneio.FieldByName('ClienteId').AsInteger := Venda.Cliente.Id;
      cdsVendasRomaneio.FieldByName('Nome_Cliente').AsString := Venda.cliente.Descricao;
      cdsVendasRomaneio.FieldByName('Vendedor').AsString := venda.Funcionario.Descricao;
      cdsVendasRomaneio.FieldByName('DataVenda').AsDateTime := venda.Data_Venda;
      cdsVendasRomaneio.FieldByName('Total_Financeiro').AsFloat := venda.Valor_Total;
      cdsVendasRomaneio.FieldByName('Total_Peso').AsFloat := venda.Peso_Total;
      cdsVendasRomaneio.Post;
   finally
      FreeAndNil(DaoVenda);
      FreeAndNil(Venda);
   end;
   MudarFoco;
 end;

procedure TfrmRomaneioDeEntrega.bsSkinButton4Click(Sender: TObject);
var DaoRomaneio : TDaoRomaneio;
    cdsDadosRelatorio : TClientDataSet;
    total : Real;
    lsQuebra : String;
begin
   GstituloRel  :='Relatorio de Produtos do Romaneio Nº '+srcRomaneios.DataSet.FieldByName('ID').AsString;

   pviTipoRelatorio := ROMANEIO_PRODUTOS;
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 135;
   ImpMatricial.FonteTamanhoPadrao        := s17cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   cdsDadosRelatorio := DaoRomaneio.RetornarProdutos(srcRomaneios.DataSet.FieldByName('ID').AsInteger);
   total := 0;
   while not cdsDadosRelatorio.Eof do
   begin
      if lsQuebra<>cdsDadosRelatorio.FieldByname('Cod_Grupo').AsString then
      Begin
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         impmatricial.Imp(pvilinha,001,cdsDadosRelatorio.FieldByName('Cod_Grupo').AsString+'-'+cdsDadosRelatorio.FieldByName('Nome_Grupo').AsString );
         pviLinha:=Pvilinha+1;
         impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
         pviLinha:=Pvilinha+1;
         lsQuebra:=cdsDadosRelatorio.FieldByname('Cod_Grupo').AsString;
      End;
      impmatricial.Imp(pvilinha,001,inczero(cdsDadosRelatorio.FieldByName('Cod_Produto').AsString,5)+' - '+cdsDadosRelatorio.FieldByName('Descricao').AsString);
      impmatricial.Imp(pvilinha,045,cdsDadosRelatorio.FieldByName('Unid').AsString);
      impmatricial.Impd(pvilinha,063,FormatFloat(',0.000',cdsDadosRelatorio.FieldByName('Qtde_total').AsFloat),[]);
      impmatricial.Impd(pvilinha,077,FormatFloat(',0.000',cdsDadosRelatorio.FieldByName('PesoBruto').AsFloat),[]);
      total := total + cdsDadosRelatorio.FieldByName('PesoBruto').AsFloat;
      pviLinha:=Pvilinha+1;
      cdsDadosRelatorio.next;
      if pvilinha>=60 then
         impMatricial.Novapagina;
   end;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',135,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Peso Total do Romaneioo...... ');
   impmatricial.Impd(pvilinha,077,Formatfloat(',0.000',total),[]);
   pviLinha:=Pvilinha+1;
   ImpMatricial.Fechar;
end;

procedure TfrmRomaneioDeEntrega.bsSkinButton5Click(Sender: TObject);
var DaoRomaneio : TDaoRomaneio;
    cdsDadosRelatorio : TClientDataSet;
    total : Real;
    prCustoTotal : Real;
begin
   GstituloRel  :='Relatorio de Financeiro de Romaneio Nº '+srcRomaneios.DataSet.FieldByName('ID').AsString;
   pviTipoRelatorio := ROMANEIO_FINANCEIRO;
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   cdsDadosRelatorio := DaoRomaneio.RetornarDadosFinanceiros(srcRomaneios.DataSet.FieldByName('ID').AsInteger);
   total := 0;
   prCustoTotal := 0;
   while not cdsDadosRelatorio.Eof do
   begin
      impmatricial.Imp(pvilinha,001,inczero(cdsDadosRelatorio.FieldByName('SeqVenda').AsString,8)+' '+Copy(cdsDadosRelatorio.FieldByName('Descricao').AsString,1,38));
      impmatricial.Impd(pvilinha,060,Formatfloat(',0.00',cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat),[]);
      impmatricial.Imp(pvilinha,061,cdsDadosRelatorio.FieldByName('Pagamento').AsString);
      pviLinha:=Pvilinha+1;
      total := total + cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat;
      prCustoTotal := prCustoTotal + cdsDadosRelatorio.FieldByName('CustoTotal').AsFloat;
      cdsDadosRelatorio.next;
      if pvilinha>=60 then
         impMatricial.Novapagina;
   end;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral......  Qunatidade de Vendas '+intTostr(cdsDadosRelatorio.RecordCount));
   impmatricial.Impd(pvilinha,060,Formatfloat(',0.00',total),[]);
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Lucratividade..:.: '+Formatfloat(',0.00',((((total-prCustoTotal)/total)*100 )*total)/100)+' '+Formatfloat(',0.00',( (total-prCustoTotal)/total)*100 )+'%');
   pviLinha:=Pvilinha+5;

   impmatricial.Imp(pvilinha,026,'_______________________________________');
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,026,DaoRomaneio.RetornarNomeMotorista(srcRomaneios.DataSet.FieldByName('ID').AsInteger));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,026,'Motorista Responsavel');

   ImpMatricial.Fechar;
end;

procedure TfrmRomaneioDeEntrega.bsSkinButton6Click(Sender: TObject);
var DaoRomaneio : TDaoRomaneio;
    cdsDadosRelatorio : TClientDataSet;
    total : Real;
    prCustoTotal : Real;
begin
   GstituloRel  :='Pendencias financeiras dos clientes do Romaneio Nº '+srcRomaneios.DataSet.FieldByName('ID').AsString;
   pviTipoRelatorio := ROMANEIO_FINANCEIRO;
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   DaoRomaneio.DataSistema := RetornarDataSistema;
   cdsDadosRelatorio := DaoRomaneio.PendenciasDoRomaneio(srcRomaneios.DataSet.FieldByName('ID').AsInteger);
   total := 0;
   prCustoTotal := 0;
   while not cdsDadosRelatorio.Eof do
   begin
      impmatricial.Imp(pvilinha,001,inczero(cdsDadosRelatorio.FieldByName('Codigo').AsString,5)+' '+Copy(cdsDadosRelatorio.FieldByName('Descricao').AsString,1,38));
      impmatricial.Impd(pvilinha,060,Formatfloat(',0.00',cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat),[]);
      impmatricial.Imp(pvilinha,061,cdsDadosRelatorio.FieldByName('Pagamento').AsString);
    //  impmatricial.Impd(pvilinha,085,FormatDatetime('dd/mm/yyyy',cdsDadosRelatorio.FieldByName('Data_Vencimento').AsDateTime));
      pviLinha:=Pvilinha+1;
      total := total + cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat;
      cdsDadosRelatorio.next;
      if pvilinha>=60 then
         impMatricial.Novapagina;
   end;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral......  Qunatidade de Vendas '+intTostr(cdsDadosRelatorio.RecordCount));
   pviLinha:=Pvilinha+5;

   ImpMatricial.Fechar;
end;

procedure TfrmRomaneioDeEntrega.bsSkinSpeedButton1Click(Sender: TObject);
var DaoRomaneio : TDaoRomaneio;
    cdsDadosRelatorio : TClientDataSet;
    total : Real;
begin
   GstituloRel  :='Relatorio Pedidos pendentes de entrega';
   pviTipoRelatorio := ROMANEIO_FINANCEIRO;
   ImpMatricial.PortaComunicacao          := 'LPT1';
   ImpMatricial.OpcoesPreview.Preview     := true;
   ImpMatricial.TamanhoQteLinhas          := 66;
   ImpMatricial.TamanhoQteColunas         := 80;
   ImpMatricial.FonteTamanhoPadrao        := s10cpp;
   ImpMatricial.UsaGerenciadorImpr        := True;
   ImpMatricial.Abrir;

   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   cdsDadosRelatorio := DaoRomaneio.RetornarPedidosNaoEntregues;
   total := 0;
   while not cdsDadosRelatorio.Eof do
   begin
      impmatricial.Imp(pvilinha,001,inczero(cdsDadosRelatorio.FieldByName('SeqVenda').AsString,8)+' '+Copy(cdsDadosRelatorio.FieldByName('Descricao').AsString,1,38));
      impmatricial.Impd(pvilinha,060,Formatfloat(',0.00',cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat),[]);
      impmatricial.Imp(pvilinha,061,cdsDadosRelatorio.FieldByName('Pagamento').AsString);
      pviLinha:=Pvilinha+1;
      total := total + cdsDadosRelatorio.FieldByName('Vlr_total').AsFloat;
      cdsDadosRelatorio.next;
      if pvilinha>=60 then
         impMatricial.Novapagina;
   end;
   impmatricial.imp(pviLinha,001,incdigito( '-','-',80,0));
   pviLinha:=Pvilinha+1;
   impmatricial.Imp(pvilinha,001,'Total Geral......  Qunatidade de Vendas '+intTostr(cdsDadosRelatorio.RecordCount));
   impmatricial.Impd(pvilinha,060,Formatfloat(',0.00',total),[]);
   pviLinha:=Pvilinha+5;

   ImpMatricial.Fechar;
end;

procedure TfrmRomaneioDeEntrega.pagGeralChange(Sender: TObject);
begin
   if pagGeral.ActivePageIndex = 1 then
      AtualizarGridRomaneio;
end;

procedure TfrmRomaneioDeEntrega.btnCancelarClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja cancelar a digitação ', ctConfirma, [ cbSimNao ], 0 ) then
       cdsVendasRomaneio.EmptyDataSet;
end;

procedure TfrmRomaneioDeEntrega.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRomaneioDeEntrega.btnGerarClick(Sender: TObject);
var DaoRomaneio : TDaoRomaneio;
    Romaneio : TRomaneio;
    RomaneioÎd : integer;
begin
   if cmbNome_Funcionario.KeyValue = null then
   begin
      CaixaMensagem( 'Informe o Motorista Responsavel', ctAviso, [ cbOk ], 0 );
      MudarFoco;
      exit;
   end;
   if cdsVendasRomaneio.IsEmpty then
   begin
      CaixaMensagem( 'Não foi digitada nenhuma venda', ctAviso, [ cbOk ], 0 );
      MudarFoco;
      exit;
   end;
   Romaneio := TRomaneio.Create;
   Romaneio.Total := RetornarTotalRomaneio;
   Romaneio.PesoB_Total := RetornarTotalPesoBruto;
   Romaneio.PesoL_total := RetornarTotalPesoLiquido;
   Romaneio.Data_Cadastro := RetornarDataSistema;
   Romaneio.Operador := gsOperador;
   Romaneio.Cod_Emp :=  StrToInt(gsCod_Emp);
   Romaneio.Qtde_vendas := cdsVendasRomaneio.RecordCount;
   Romaneio.FuncionarioId := cmbNome_Funcionario.KeyValue;
   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   RomaneioÎd := DaoRomaneio.Incluir(Romaneio);
   AtualizarRomaneionasVendas(RomaneioÎd);
   cdsVendasRomaneio.EmptyDataSet;
   FreeAndNil(DaoRomaneio);
   FreeAndNil(Romaneio);
end;
procedure TfrmRomaneioDeEntrega.AtualizarRomaneionasVendas(RomaneioId : Integer);
var DaoVenda : TDaoVenda;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   cdsVendasRomaneio.First;
   while not cdsVendasRomaneio.eof do
   begin
      DaoVenda.AtualizarRomaneio(RomaneioId,cdsVendasRomaneio.fieldByname('NumeroVenda').AsInteger);
      cdsVendasRomaneio.Next
   end;
end;

procedure TfrmRomaneioDeEntrega.mudarFoco;
begin
  try
    edtNumeroVenda.Text := '';
    edtNumeroVenda.SetFocus;
  except
  end;
end;

procedure TfrmRomaneioDeEntrega.AtualizarGridRomaneio;
var
  DaoRomaneio: TDaoRomaneio;
begin
  DaoRomaneio := TDaoRomaneio.Create(gConexao);
  srcRomaneios.DataSet := DaoRomaneio.BuscarTodos;
  freeAndNil(DaoRomaneio);
end;

procedure TfrmRomaneioDeEntrega.cdsVendasRomaneioAfterOpen(DataSet: TDataSet);
var liCont : Integer; 
begin
   for liCont := 1 To DataSet.FieldCount Do
   begin
      if DataSet.Fields[ liCont - 1 ].DataType = ftFloat Then
         TFloatField( DataSet.Fields[ liCont - 1 ] ).DisplayFormat := '0.00';
   end;

end;

procedure TfrmRomaneioDeEntrega.cmbNome_FuncionarioChange(Sender: TObject);
begin
  if cmbNome_Funcionario.KeyValue <> null then
     edtFuncionarioId.Text := cmbNome_Funcionario.KeyValue;
end;

procedure TfrmRomaneioDeEntrega.edtFuncionarioIdExit(Sender: TObject);
begin
   if trim(edtFuncionarioId.text)<>'' then
   Begin
      cmbNome_Funcionario.KeyValue := StrToInt(edtFuncionarioId.text);
      if Trim(cmbNome_Funcionario.Text) = '' Then
      Begin
         cmbNome_Funcionario.KeyValue := Null;
         edtFuncionarioId.Text      := '';
         CaixaMensagem( 'Vendedor nao localizado', ctAviso, [ cbOk ], 0 );
         try
           edtFuncionarioId.SetFocus
         Except
         end;
      End;
   End;
end;

procedure TfrmRomaneioDeEntrega.FormShow(Sender: TObject);
var DaoFuncionario : TDaofuncionario;
begin
   paggeral.ActivePageIndex := 0;
   DaoFuncionario := TDaofuncionario.Create(gConexao);
   srcFuncionarios.DataSet := DaoFuncionario.BuscarTodos;
   FreeandNil(DaoFuncionario);
end;

procedure TfrmRomaneioDeEntrega.GridRomaneioCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  IF aviewinfo.GridRecord.Values[Colum_NomeStatus.Index]='F' Then
      acanvas.Font.color := clGreen;
end;

procedure TfrmRomaneioDeEntrega.impMatricialNewPage(Sender: TObject;
  Pagina: Integer);
begin
   ConfiguraRel( Name, True, TRdPrint( Sender ), Pagina );
   pviLinha := 07;
   if pviTipoRelatorio = ROMANEIO_PRODUTOS then
   begin
      TRdPrint( Sender ).imp(pvilinha,001,'Codigo Descricao  Do Produto                Und        Quant. Total   Peso Total ');
      pviLinha:=Pvilinha+1;
      TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',135,0));
   end
   else if pviTipoRelatorio = ROMANEIO_FINANCEIRO then
   begin
      TRdPrint( Sender ).imp(pvilinha,001,'Nº Venda Cliente                                     Total     Forma de Pagamento ');
      pviLinha:=Pvilinha+1;
      TRdPrint( Sender ).imp(pviLinha,001,incdigito( '-','-',80,0));
   end;
   pviLinha:=Pvilinha+1;
end;

function TfrmRomaneioDeEntrega.RetornarTotalPesoBruto: Real;
var Total : Real;
begin
   cdsVendasRomaneio.First;
   Total := 0 ;
   while not cdsVendasRomaneio.eof do
   begin
      Total := Total + cdsVendasRomaneio.fieldByname('Total_Peso').AsFloat;
      cdsVendasRomaneio.Next
   end;
   Result := Total;
end;

function TfrmRomaneioDeEntrega.RetornarTotalPesoLiquido: Real;
begin
  Result := 0;
end;

function TfrmRomaneioDeEntrega.RetornarTotalRomaneio: Real;
var Total : Real;
begin
   cdsVendasRomaneio.First;
   Total := 0 ;
   while not cdsVendasRomaneio.eof do
   begin
      Total := Total + cdsVendasRomaneio.fieldByname('Total_financeiro').AsFloat;
      cdsVendasRomaneio.Next
   end;
   Result := Total;
end;

end.
