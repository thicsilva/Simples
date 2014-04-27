unit uselEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, ExtCtrls;

type
  TfrmselEndereco = class(TForm)
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    edtEnderecoObra: TbsSkinEdit;
    bsSkinLabel1: TbsSkinLabel;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselEndereco: TfrmselEndereco;

implementation

{$R *.dfm}

procedure TfrmselEndereco.btnFecharClick(Sender: TObject);
begin
   CLOSE;
end;

end.
