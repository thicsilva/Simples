unit uDescontoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, EditNew,uFormBase, bsSkinBoxCtrls;

type
  TFrmDescontoVenda = class(TFormBase)
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    edtTotalVenda: TEditN;
    edtTotDesconto: TEditN;
    edtTotalLiquido: TEditN;
    btnFinalizar: TbsSkinButton;
    cmbTipoDesconto: TbsSkinComboBox;
    procedure edtTotDescontoExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
  private
    function Calculatotal : Real;
    { Private declarations }
  public
    { Public declarations }
    pPercDesconto : Real;
    pTotalDesconto : Real
  end;

var
  FrmDescontoVenda: TFrmDescontoVenda;

implementation

uses uPrincipal,Ufuncoes;
{$R *.dfm}

procedure TFrmDescontoVenda.btnFinalizarClick(Sender: TObject);
var Perc_Desconto : Real;
begin
   if cmbTipoDesconto.ItemIndex = 1 then
      edtTotDesconto.text :=  formatFloat('0.00',(StrToFloat(edtTotalVenda.text) * StrToFloat( edtTotDesconto.text ) / 100));

   Perc_Desconto := (StrToFloat(edtTotalVenda.text)-StrToFloat(edtTotalLiquido.Text));
   Perc_Desconto := (Perc_Desconto/StrToFloat(edtTotalVenda.text))*100;
   pTotalDesconto := StrTofloat(edtTotDesconto.text);

   if ( Perc_Desconto > gsPerfilAcesso.Desc_Maximo ) then
   Begin
      CaixaMensagem( 'O valor do desconto ultrapassa sua margem de '+formatFloat('0.00',gsPerfilAcesso.Desc_Maximo), ctAviso, [ cbOk ], 0 );
      edtTotDesconto.SetFocus;
      Exit;
   End;
   Tag := 1;
   pPercDesconto := Perc_Desconto;
   Close;
end;

procedure TFrmDescontoVenda.edtTotDescontoExit(Sender: TObject);
begin
   edtTotalLiquido.Text := FormatFloat('0.00', Calculatotal);
end;

function TFrmDescontoVenda.Calculatotal : Real;
var Desconto : Real;
begin
   if cmbTipoDesconto.ItemIndex = 1 then
      Desconto := (StrToFloat(edtTotalVenda.text) * StrToFloat( edtTotDesconto.text ) / 100)
   else
      Desconto := StrToFloat( edtTotDesconto.text );

   result := Strtofloat(edtTotalVenda.Text)-Desconto;

end;

end.
