unit uselDatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, bsSkinBoxCtrls, StdCtrls,
  Mask;

type
  TfrmSelDatas = class(TForm)
    PanelConsulta: TbsSkinPanel;
    lblTurma: TbsSkinStdLabel;
    dtpData_Fim: TbsSkinDateEdit;
    dtpData_Ini: TbsSkinDateEdit;
    cmbPeriodo: TbsSkinComboBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    procedure cmbPeriodoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelDatas: TfrmSelDatas;

implementation

uses ufuncoes, uPrincipal;
{$R *.dfm}

procedure TfrmSelDatas.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmSelDatas.btnincluirClick(Sender: TObject);
begin
   tag :=1;
   close;
end;

procedure TfrmSelDatas.cmbPeriodoChange(Sender: TObject);
begin
   ListaPeriodo2( TbsSkinDateEdit( dtpData_Ini ), TbsSkinDateEdit( dtpData_Fim ), cmbperiodo.ItemIndex,gsData_Mov );
end;

procedure TfrmSelDatas.FormShow(Sender: TObject);
begin
   cmbPeriodoChange(Sender)
end;

end.
