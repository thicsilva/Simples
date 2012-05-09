unit uselAnimal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,uFormBase,
  Dialogs, bsSkinGrids, bsDBGrids, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, DB;

type
  TfrmSelAnimal = class(TFormbase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnOk: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinDBGrid1: TbsSkinDBGrid;
    srcAnimais: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pAnimalId : Integer;
  end;

var
  frmSelAnimal: TfrmSelAnimal;

implementation

uses uPrincipal;

{$R *.dfm}

procedure TfrmSelAnimal.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmSelAnimal.btnOkClick(Sender: TObject);
begin
   Tag := 1;
   pAnimalId := srcAnimais.DataSet.FieldByName('AnimalId').Asinteger;
   Close;
end;

end.
