unit uMapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw;

type
  TfrmMapa = class(TForm)
    Browser: TWebBrowser;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMapa: TfrmMapa;

implementation

{$R *.dfm}

procedure TfrmMapa.FormShow(Sender: TObject);
begin
    Browser.navigate(Caption);
end;

end.
