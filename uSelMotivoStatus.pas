unit uSelMotivoStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls,
  BusinessSkinForm;

type
  TfrmMotivoStatus = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel3: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    pnlMensagem: TbsSkinExPanel;
    MemoMotivoStatus: TbsSkinMemo;
    SkinForm: TbsBusinessSkinForm;
    procedure btnFecharClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMotivoStatus: TfrmMotivoStatus;

implementation

uses uprincipal,ufuncoes;

{$R *.dfm}

procedure TfrmMotivoStatus.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmMotivoStatus.btnokClick(Sender: TObject);
begin
   frmMotivoStatus.tag := 1;
   Close;
end;

end.
