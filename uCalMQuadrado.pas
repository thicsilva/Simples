unit uCalMQuadrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uFormBase, StdCtrls, bsSkinCtrls, Mask, bsSkinBoxCtrls, ExtCtrls,
  ToolWin, ComCtrls;

const METRO_QUADRADO = 2;
      METRO_LINEAR = 3;
type

  TfrmCalMQuadrado = class(TFormbase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    panelgeral: TbsSkinExPanel;
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
    edtComplemento: TbsSkinNumericEdit;
    lbl01: TbsSkinStdLabel;
    procedure AtualizaRecClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Function MetroQuadrado(Altura,Comprimento : Real) : Real;
    function MetroLinear (Altura,Comprimento,Complemento : Real) : Real;
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
  if frmCalMQuadrado.tag = METRO_QUADRADO then
     edtMEtroQ.text := FormatFloat ('0.00' , MetroQuadrado( StrtoFloat(edtaltura.text), Strtofloat(edtcomprimento.text)))
  else
     edtMEtroQ.text := FormatFloat ('0.00' , MetroLinear( StrtoFloat(edtaltura.text), Strtofloat(edtcomprimento.text),Strtofloat(edtComplemento.text) ) );

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

procedure TfrmCalMQuadrado.FormShow(Sender: TObject);
begin
  inherited;
  panelgeral.caption:= 'Informe as Medidas para o Metro Linear';
  if frmCalMQuadrado.tag = METRO_QUADRADO then
  begin
     edtComplemento.Visible := False;
     lbl01.Visible := False;
     panelgeral.caption:= 'Informe as Medidas para o Metro Quadrado'
  end;
end;

function TfrmCalMQuadrado.MetroLinear(Altura, Comprimento,
  Complemento: Real): Real;
begin
   Result := (Altura *2)+ (Comprimento*2)+Complemento;
end;

function TfrmCalMQuadrado.MetroQuadrado(Altura, Comprimento: Real): Real;
begin
   Result := (Altura * Comprimento)
end;

end.
