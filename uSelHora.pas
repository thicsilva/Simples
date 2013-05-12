unit uSelHora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,uFormBase,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, uPrincipal, StdCtrls, Mask,
  bsSkinBoxCtrls;

type
  TfrmSelHora = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinLabel1: TbsSkinLabel;
    edtHora: TbsSkinTimeEdit;
    procedure btnincluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelHora: TfrmSelHora;

implementation

{$R *.dfm}

procedure TfrmSelHora.btnFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmSelHora.btnincluirClick(Sender: TObject);
begin
   tag := 1;
   Close;
end;

end.
