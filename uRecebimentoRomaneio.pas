unit uRecebimentoRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin,
  ComCtrls, DBClient, CheckLst,uFormBase;

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
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinButton1: TbsSkinButton;
    btnCancelar: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    procedure btnCarregarClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    function EstaPendente(LinhaId: integer): Boolean;
    function FoiProrrogado(LinhaId: Integer): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoRomaneio: TfrmRecebimentoRomaneio;

implementation

uses uDaoRomaneio,uPrincipal, uDaoVenda, uFuncoes;

{$R *.dfm}

procedure TfrmRecebimentoRomaneio.bsSkinButton1Click(Sender: TObject);
var I : Integer;
    DaoRomaneio : TDaoRomaneio;
    DaoVenda : TDaoVenda;
begin
   DaoRomaneio := TDaoRomaneio.Create(gConexao);
   DaoVenda := TDaoVenda.Create(gConexao);
   try
     for I := 0 to ListVendas.Items.Count - 1 do
     begin
        if EstaPendente(I) then
        begin
           CaixaMensagem( 'Existe Vendas Pendentes, Inpossivel Fechar o Romaneio ', ctAviso, [ cbOk ], 0 );
           exit;
        end;
        if FoiProrrogado(I) then
           DaoVenda.TirarVendaRomaneio( StrToInt(ListVendas.Items[I].Caption));
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
         CaixaMensagem( 'Romaneio ja Fechado', ctAviso, [ cbOk ], 0 );
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
      if Dados.FieldByName('Entregue').Asboolean then
         llstTemp.SubItems.Add('Entregue')
      else if Dados.FieldByName('Prorrogado').Asboolean then
         llstTemp.SubItems.Add('Prorrogado')
      else
        llstTemp.SubItems.Add('Pendente');
      Dados.Next;
   end;
end;


procedure TfrmRecebimentoRomaneio.bsSkinSpeedButton1Click(Sender: TObject);
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

function TfrmRecebimentoRomaneio.EstaPendente(LinhaId : integer) : Boolean;
begin
   Result := (ListVendas.Items[LinhaId].SubItems[4]='Pendente');
end;

end.
