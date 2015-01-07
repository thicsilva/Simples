unit uMostrarDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, ToolWin, ComCtrls, bsSkinCtrls, Grids, DBGrids,
  ExtCtrls;

type
  TfrmMostrarDados = class(TForm)
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinBevel4: TbsSkinBevel;
    cdsDados: TClientDataSet;
    cdsDadosDescricao: TStringField;
    srcDados: TDataSource;
    cdsDadosCodigo: TIntegerField;
    cdsDadosTelefone: TStringField;
    bsSkinSpeedButton2: TbsSkinSpeedButton;
    procedure bsSkinSpeedButton1Click(Sender: TObject);
    procedure bsSkinSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
     PTelefone : String;
    { Public declarations }
  end;

var
  frmMostrarDados: TfrmMostrarDados;

implementation

{$R *.dfm}

procedure TfrmMostrarDados.bsSkinSpeedButton1Click(Sender: TObject);
begin
   pTelefone := cdsDados.FieldByName('Telefone').AsString;
   Tag := 1;
   Close;
end;

procedure TfrmMostrarDados.bsSkinSpeedButton2Click(Sender: TObject);
begin
   Close;
end;

end.
