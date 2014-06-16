unit ufrmFinalizaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, bsSkinGrids,
  bsDBGrids, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, cxImage, ExtCtrls,
  ToolWin, ComCtrls;

type
  TfrmFinalizaServico = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    Panel4: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    bsSkinLabel1: TbsSkinLabel;
    bsSkinLabel2: TbsSkinLabel;
    Panel3: TPanel;
    imgFrente: TcxImage;
    imgVerso: TcxImage;
    bsSkinButton1: TbsSkinButton;
    edtQtdeTamanho: TbsSkinEdit;
    bsSkinLabel5: TbsSkinLabel;
    gridTamanho: TbsSkinDBGrid;
    dbGridItensGrade: TbsSkinDBGrid;
    pnlteste: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinalizaServico: TfrmFinalizaServico;

implementation

{$R *.dfm}

end.
