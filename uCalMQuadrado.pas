unit uCalMQuadrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uFormBase, StdCtrls, bsSkinCtrls, Mask, bsSkinBoxCtrls, ExtCtrls,
  ToolWin, ComCtrls;

type
  TfrmCalMQuadrado = class(TFormbase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    edtaltura: TbsSkinNumericEdit;
    bsSkinStdLabel1: TbsSkinStdLabel;
    edtcomprimento: TbsSkinNumericEdit;
    bsSkinStdLabel2: TbsSkinStdLabel;
    bsSkinStdLabel3: TbsSkinStdLabel;
    edtMEtroQ: TbsSkinNumericEdit;
    bsSkinStdLabel4: TbsSkinStdLabel;
    edtVlrMetro: TbsSkinNumericEdit;
    edtTotal: TbsSkinNumericEdit;
    bsSkinStdLabel5: TbsSkinStdLabel;
    AtualizaRec: TbsSkinSpeedButton;
    procedure AtualizaRecClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalMQuadrado: TfrmCalMQuadrado;

implementation
uses Uprincipal;
{$R *.dfm}

procedure TfrmCalMQuadrado.AtualizaRecClick(Sender: TObject);
begin
  edtMEtroQ.text := Formatfloat('0.00', StrtoFloat(edtaltura.text) * Strtofloat(edtcomprimento.text));
  edtTotal.text := Formatfloat('0.00', StrtoFloat( edtMEtroQ.text ) * StrtoFloat( edtVlrMetro.Text ) );
end;

procedure TfrmCalMQuadrado.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmCalMQuadrado.btnokClick(Sender: TObject);
begin
   frmCalMQuadrado.Tag := 1;
   Close;
end;

end.
