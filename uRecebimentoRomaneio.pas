unit uRecebimentoRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls, ToolWin,
  ComCtrls, DBClient, CheckLst;

type
  TfrmRecebimentoRomaneio = class(TForm)
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
    bsSkinButton3: TbsSkinButton;
    ListVendas: TbsSkinListView;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinButton1: TbsSkinButton;
    procedure bsSkinButton3Click(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebimentoRomaneio: TfrmRecebimentoRomaneio;

implementation

uses uDaoRomaneio,uPrincipal, uDaoVenda;

{$R *.dfm}

procedure TfrmRecebimentoRomaneio.bsSkinButton3Click(Sender: TObject);
var DaoRomaneio : TdaoRomaneio;
    Dados : TClientDataSet;
    llstTemp: TListItem;
begin
   DaoRomaneio := TdaoRomaneio.Create(gConexao);
   Dados := DaoRomaneio.RetornarDadosFinanceiros(strToInt(edtRomaneioId.text));
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
      else
         llstTemp.SubItems.Add('Pendente');
      Dados.Next;
   end;
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
         DaoVenda.MarcarComoEntregue(StrToint(ListVendas.Items[I].Caption));
   end;
   FreeAndNil(DaoVenda);
end;

end.
