unit uRecebimentoRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin,
  ComCtrls, DBClient, CheckLst,uFormBase,uDaoContaReceber,uClassContaReceber, DB;

type
  TfrmRecebimentoRomaneio = class(TFormBase)
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnGerar: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtRomaneioId: TbsSkinEdit;
    btnCarregar: TbsSkinButton;
    ListVendas: TbsSkinListView;
    btnProrrogarVencimento: TbsSkinSpeedButton;
    bsSkinButton1: TbsSkinButton;
    btnCancelar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    btnMarcarRecebido: TbsSkinSpeedButton;
    bsSkinBevel4: TbsSkinBevel;
    btnNaoRecebido: TbsSkinSpeedButton;
    bsSkinBevel5: TbsSkinBevel;
    bsSkinBevel6: TbsSkinBevel;
    TmpDados: TClientDataSet;
    TmpDadosVenda: TIntegerField;
    TmpDadosCodigo: TIntegerField;
    TmpDadosCliente: TStringField;
    TmpDadosValor: TFloatField;
    TmpDadosStatus: TStringField;
    TmpDadosFormaPagemento: TStringField;
    TmpDadosCod_FormaPagamento: TStringField;
    TmpDadosPagamentoCaixa: TStringField;
    procedure btnCarregarClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnProrrogarVencimentoClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnMarcarRecebidoClick(Sender: TObject);
    procedure btnNaoRecebidoClick(Sender: TObject);
  private
    function EstaPendente(LinhaId: integer): Boolean;
    function FoiProrrogado(LinhaId: Integer): Boolean;
    procedure BaixaTitulosAVista(prValorBaixa: Real; priNumeroVenda: String; FormaPagamento : Integer );
    procedure EfetuarLancamentoNoCaixa(prValorBaixa: Real; priNumeroVenda: String; FormaPagemento : Integer);
    procedure BaixarTitulo(prValorBaixa: Real; priNumeroVenda: String);
    function FoiRecebido(LinhaId: Integer): Boolean;
    function NaoFoiRecebido(LinhaId: Integer): Boolean;
    procedure MudarVencimentoTitulos(prValorBaixa: Real; priNumeroVenda, TipoPagamento: String);
    procedure OrganizaListView;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoRomaneio: TfrmRecebimentoRomaneio;

implementation

uses uDaoRomaneio,uPrincipal, uDaoVenda, uFuncoes,uClassLancamento, uDaoCaixaMovimento ,
  uSelFormaPagamento;

{$R *.dfm}

procedure TfrmRecebimentoRomaneio.BaixarTitulo(prValorBaixa: Real; priNumeroVenda: String);
var loContaAReceber   : TContaReceber;
    loDaoContaReceber : TdaoContaReceber;
    Dados : TClientDataSet;
begin
   loDaoContaReceber := TdaoContaReceber.Create(gConexao);
   Dados := loDaoContaReceber.BuscarVendaID(StrToint(priNumeroVenda));
   while not Dados.Eof do
   begin
      loContaAReceber := TContaReceber.Create;
      loContaAReceber.Documento      := Dados.FieldByName('Documento').asString;
      loContaAReceber.Data_Pagamento := now;
      loContaAReceber.Data_Atu       := now;
      loContaAReceber.Operador       := gsOperador+'**';
      loContaAReceber.Status         := 1;
      loContaAReceber.Tipo_Baixa     := 'PT';
      loContaAReceber.vlr_Desconto   := 0;
      loContaAReceber.Vlr_Recebido   := Dados.FieldByName('Vlr_Areceber').AsFloat;
      loContaAReceber.ValorAReceber  := Dados.FieldByName('Vlr_Areceber').AsFloat;
      loDaoContaReceber.BaixarTitulo(loContaAReceber);
      FreeAndNil(loContaAReceber);
      Dados.Next;
   end;
end;

procedure TfrmRecebimentoRomaneio.BaixaTitulosAVista(prValorBaixa: Real; priNumeroVenda: String; FormaPagamento : Integer );
begin
   EfetuarLancamentoNoCaixa(prValorBaixa,priNumeroVenda,FormaPagamento);
   BaixarTitulo(prValorBaixa,priNumeroVenda);
end;

procedure TfrmRecebimentoRomaneio.MudarVencimentoTitulos(prValorBaixa: Real; priNumeroVenda, TipoPagamento: String);
var DaoContaAReceber : TDaoContaReceber;
begin
   DaoContaAReceber := TDaoContaReceber.Create(gConexao);
   DaoContaAReceber.AtualizarVencimento( RetornarDataSistema,TipoPagamento,0,StrToInt(priNumeroVenda) );
   Close;
end;


procedure TfrmRecebimentoRomaneio.EfetuarLancamentoNoCaixa(prValorBaixa: Real; priNumeroVenda: String; FormaPagemento : Integer);
var loLancamento  : TLancamento;
    loDaoMovCaixa : TDaoCaixaMovimento;
begin
   lolancamento  := TLancamento.Create;
   loDaoMovCaixa := TDaoCaixaMovimento.Create(gConexao);

   lolancamento.Cod_Caixa          := 1;
   lolancamento.Valor              := prValorBaixa;
   lolancamento.Historico          := 'Recebimento (Romaneio) '+priNumeroVenda;
   lolancamento.Data_Lancamento    := now;
   lolancamento.D_C                := 'C';
   lolancamento.SeqVenda           := StrToint(priNumeroVenda);
   lolancamento.Cod_tipoDespesa    := '0101';
   lolancamento.Sequencia          := Sequencia('Sequencia',False,'T_MovCaixa',FrmPrincipal.dbxPrincipal,'',False,8);
   lolancamento.Cod_FormaPagamento := FormaPagemento;
   lolancamento.Operador           := gsOperador;
   loDaoMovCaixa.Lancar(lolancamento);
end;

procedure TfrmRecebimentoRomaneio.bsSkinButton1Click(Sender: TObject);
var I : Integer;
    DaoRomaneio : TDaoRomaneio;
    DaoVenda : TDaoVenda;
begin
   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   DaoVenda    := TDaoVenda.Create(gConexao);
   try
     for I := 0 to ListVendas.Items.Count - 1 do
     begin
        if EstaPendente(I) then
        begin
           CaixaMensagem( 'Existe Vendas Pendentes, Inpossivel Fechar o Romaneio ', ctAviso, [ cbOk ], 0 );
           exit;
        end;
     end;

     for I := 0 to ListVendas.Items.Count - 1 do
     begin
        if FoiProrrogado(I) then
           DaoVenda.TirarVendaRomaneio( StrToInt(ListVendas.Items[I].Caption))
        else if FoiRecebido(I) then
           BaixaTitulosAVista(StrToFloat(ListVendas.Items[I].SubItems[3]), ListVendas.Items[I].Caption, StrToint(ListVendas.Items[I].SubItems[6]) )
        else if NaoFoiRecebido(I) then
           MudarVencimentoTitulos(StrToFloat(ListVendas.Items[I].SubItems[3]), ListVendas.Items[I].Caption,ListVendas.Items[I].SubItems[5]);

     end;

     DaoRomaneio.FecharRomaneio(StrToint(edtRomaneioId.Text));
     btnCancelarClick(btnCancelar);
   finally
     FreeAndNil(DaoRomaneio);
     FreeAndNil(DaoVenda);
   end;
end;

function TfrmRecebimentoRomaneio.FoiProrrogado(LinhaId : Integer) : Boolean;
begin
  Result := (ListVendas.Items[LinhaId].SubItems[4]='Prorrogado');
end;

function TfrmRecebimentoRomaneio.FoiRecebido(LinhaId : Integer) : Boolean;
begin
  Result := (ListVendas.Items[LinhaId].SubItems[4]='Recebido');
end;

function TfrmRecebimentoRomaneio.NaoFoiRecebido(LinhaId : Integer) : Boolean;
begin
  Result := (ListVendas.Items[LinhaId].SubItems[4]='Cheque Não Recebido');
end;

procedure TfrmRecebimentoRomaneio.btnCarregarClick(Sender: TObject);
var DaoRomaneio : TdaoRomaneio;
    Dados : TClientDataSet;
    llstTemp: TListItem;
    lsStatus : String;
begin
   if StrtointDef(edtRomaneioid.text,0)=0 then
   begin
      CaixaMensagem( 'Numero do romaneio Invalido', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   DaoRomaneio := TdaoRomaneio.Create(gConexao);
   try
      lsStatus :=  DaoRomaneio.BuscarPorId(StrToint(edtRomaneioid.text)).FieldByName('Status').AsString;
      if lsStatus='F' then
      begin
         CaixaMensagem( 'Romaneio já Fechado', ctAviso, [ cbOk ], 0 );
         exit;
      end;
      if lsStatus='C' then
      begin
         CaixaMensagem( 'Romaneio Cancelado', ctAviso, [ cbOk ], 0 );
         exit;
      end;
      Dados := DaoRomaneio.RetornarDadosFinanceiros(strToInt(edtRomaneioId.text));
      if Dados.IsEmpty then
      begin
         CaixaMensagem( 'Romaneio não Encontrado', ctAviso, [ cbOk ], 0 );
         exit;
      end;
   finally
      FreeAndNil(DaoRomaneio);
   end;
   edtRomaneioId.enabled := False;
   ListVendas.Items.Clear;
   while not Dados.Eof do
   begin
      llstTemp := ListVendas.Items.add;
      llstTemp.Caption := Dados.FieldByName('SeqVenda').AsString;
      llstTemp.SubItems.Add(Dados.FieldByName('Codigo').AsString);
      llstTemp.SubItems.Add(Dados.FieldByName('Descricao').AsString);
      llstTemp.SubItems.Add(Dados.FieldByName('Pagamento').AsString);
      llstTemp.SubItems.Add(FormatFloat('0.00', Dados.FieldByName('Vlr_total').AsFloat));
      if Dados.FieldByName('Status').AsString='5' then
         llstTemp.SubItems.Add('Cancelado')
      else if not Dados.FieldByName('PagouSinal').Asboolean then
         llstTemp.SubItems.Add('Cheque Não Recebido')
      else if Dados.FieldByName('ServicoPago').Asboolean then
         llstTemp.SubItems.Add('Recebido')
      else if Dados.FieldByName('Prorrogado').Asboolean then
         llstTemp.SubItems.Add('Prorrogado')
      else if Dados.FieldByName('Entregue').Asboolean then
         llstTemp.SubItems.Add('Entregue')
      else
        llstTemp.SubItems.Add('Pendente');
      llstTemp.SubItems.Add(Dados.FieldByName('Cod_formaPagamento').AsString);
      llstTemp.SubItems.Add(Dados.FieldByName('AnimalId').AsString);
      Dados.Next;
   end;
   OrganizaListView;
end;

procedure TfrmRecebimentoRomaneio.OrganizaListView;
var I : Integer;
    llstTemp: TListItem;
begin
  TmpDados.EmptyDataSet;
  for I := 0 to ListVendas.Items.Count - 1 do
  begin
     TmpDados.Append;
     TmpDados.FieldByname('Venda').Asinteger :=  StrToInt(ListVendas.Items[I].Caption);
     TmpDados.FieldByname('Codigo').Asinteger := StrToInt(ListVendas.Items[I].SubItems[0]);
     TmpDados.FieldByname('Cliente').AsString := ListVendas.Items[I].SubItems[1];
     TmpDados.FieldByname('FormaPagemento').AsString := ListVendas.Items[I].SubItems[2];
     TmpDados.FieldByname('Valor').AsFloat := StrTofloat(ListVendas.Items[I].SubItems[3]);
     TmpDados.FieldByname('Status').AsString := ListVendas.Items[I].SubItems[4];
     TmpDados.FieldByname('Cod_FormaPagamento').AsString := ListVendas.Items[I].SubItems[5];
     TmpDados.FieldByname('PagamentoCaixa').AsString := ListVendas.Items[I].SubItems[6];
     TmpDados.Post;
  end;
  ListVendas.Items.Clear;
  tmpDados.First;
  while not TmpDados.Eof do
  begin
     llstTemp := ListVendas.Items.add;
     llstTemp.Caption := TmpDados.FieldByName('Venda').AsString;
     llstTemp.SubItems.Add(TmpDados.FieldByName('Codigo').AsString);
     llstTemp.SubItems.Add(TmpDados.FieldByName('Cliente').AsString);
     llstTemp.SubItems.Add(TmpDados.FieldByName('FormaPagemento').AsString);
     llstTemp.SubItems.Add(FormatFloat('0.00', TmpDados.FieldByName('Valor').AsFloat));
     llstTemp.SubItems.Add(TmpDados.FieldByName('Status').AsString);
     llstTemp.SubItems.Add(TmpDados.FieldByName('Cod_formaPagamento').AsString);
     llstTemp.SubItems.Add(TmpDados.FieldByname('PagamentoCaixa').AsString);
     TmpDados.Next;
  end;
end;


procedure TfrmRecebimentoRomaneio.btnProrrogarVencimentoClick(Sender: TObject);
var lsDias : String;
    liDias : Integer;
    DaoVenda : TDaoVenda;
    I: Integer;
begin
   if not inputQuery('Numero de Dias','Numero de Dias',lsDias) Then
      Exit;
   liDias := StrTointDef(lsDias,0);
   if liDias=0 then
   begin
      CaixaMensagem( 'Quantidade de dias invalida ', ctAviso, [ cbOk ], 0 );
      exit;
   end;
   DaoVenda := TDaoVenda.Create(gConexao);
   for I := 0 to ListVendas.Items.Count - 1 do
   begin
      if ListVendas.Items[I].Checked then
      begin
         if EstaPendente(I) then
            DaoVenda.ProrrogarVencimento(StrToint(ListVendas.Items[I].Caption),liDias)
         else
         begin
           CaixaMensagem( 'A Venda não esta pendentea ', ctAviso, [ cbOk ], 0 );
           exit;
         end;
      end;
   end;
   FreeAndNil(DaoVenda);
   btnCarregarClick(btnCarregar);
end;

procedure TfrmRecebimentoRomaneio.btnCancelarClick(Sender: TObject);
begin
   edtRomaneioId.enabled := True;
   edtRomaneioId.Text := '';
   ListVendas.Items.Clear;
end;

procedure TfrmRecebimentoRomaneio.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmRecebimentoRomaneio.btnGerarClick(Sender: TObject);
var I : Integer;
    DaoVenda : TDaoVenda;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   for I := 0 to ListVendas.Items.Count - 1 do
   begin
      if ListVendas.Items[I].Checked then
      begin
         if EstaPendente(I) then
            DaoVenda.MarcarComoEntregue(StrToint(ListVendas.Items[I].Caption))
         else
         begin
           CaixaMensagem( 'A Venda não esta pendentea ', ctAviso, [ cbOk ], 0 );
           exit;
         end;
      end;
   end;
   FreeAndNil(DaoVenda);
   btnCarregarClick(btnCarregar);
end;

procedure TfrmRecebimentoRomaneio.btnMarcarRecebidoClick(Sender: TObject);
var lsDias : String;
    liDias : Integer;
    DaoVenda : TDaoVenda;
    I: Integer;
    tipoPagamento : Integer;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   frmselFormaPagamento           := TfrmselFormaPagamento.Create(Self);
   frmselFormaPagamento.SoAvista  := True;
   frmselFormaPagamento.ShowModal;
   tipoPagamento                  := frmselFormaPagamento.cmbNome_formaPagamento.KeyValue;
   for I := 0 to ListVendas.Items.Count - 1 do
   begin
      if ListVendas.Items[I].Checked then
      begin
         if EstaPendente(I) then
         begin
            DaoVenda.MarcarComoServicoPago(StrToint(ListVendas.Items[I].Caption));
            DaoVenda.MarcarComoEntregue(StrToint(ListVendas.Items[I].Caption));
            DaoVenda.AtualizarAnimal(StrToint(ListVendas.Items[I].Caption),tipoPagamento);
         end                         
         else
         begin
           CaixaMensagem( 'A Venda não esta pendentea ', ctAviso, [ cbOk ], 0 );
           exit;
         end;
      end;
   end;
   FreeAndNil(DaoVenda);
   btnCarregarClick(btnCarregar);
end;

procedure TfrmRecebimentoRomaneio.btnNaoRecebidoClick(Sender: TObject);
var DaoVenda : TDaoVenda;
    I: Integer;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   for I := 0 to ListVendas.Items.Count - 1 do
   begin
      if ListVendas.Items[I].Checked then
      begin
         if EstaPendente(I) then
         begin
            DaoVenda.MarcarComoNaoPagouSinal(StrToint(ListVendas.Items[I].Caption));
            DaoVenda.MarcarComoEntregue(StrToint(ListVendas.Items[I].Caption));
         end
         else
         begin
           CaixaMensagem( 'A Venda não esta pendentea ', ctAviso, [ cbOk ], 0 );
           exit;
         end;
      end;
   end;
   FreeAndNil(DaoVenda);
   btnCarregarClick(btnCarregar);
end;

function TfrmRecebimentoRomaneio.EstaPendente(LinhaId : integer) : Boolean;
begin
   Result := (ListVendas.Items[LinhaId].SubItems[4]='Pendente');
end;

end.
