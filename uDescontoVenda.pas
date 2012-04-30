unit uDescontoVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, EditNew;

type
  TFrmDescontoVenda = class(TForm)
    bsSkinPanel3: TbsSkinPanel;
    bsSkinStdLabel7: TbsSkinStdLabel;
    bsSkinStdLabel9: TbsSkinStdLabel;
    bsSkinStdLabel10: TbsSkinStdLabel;
    bsSkinStdLabel11: TbsSkinStdLabel;
    edtTotalVenda: TEditN;
    edtTotDesconto: TEditN;
    edtTotalLiquido: TEditN;
    btnFinalizar: TbsSkinButton;
    procedure edtTotDescontoExit(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDescontoVenda: TFrmDescontoVenda;

implementation

{$R *.dfm}

procedure TFrmDescontoVenda.btnFinalizarClick(Sender: TObject);
var Perc_Desconto : Real;
begin
   Perc_Desconto := StrToFloat(edtTotalVenda.text);
end;

procedure TFrmDescontoVenda.edtTotDescontoExit(Sender: TObject);
begin
   edtTotalLiquido.Text := FormatFloat('0.00', (StrToFloat(edtTotalVenda.text)-StrToFloat(edtTotalVenda.text)));
end;

end.
