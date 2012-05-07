unit uConfigTabSheet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, bsSkinBoxCtrls, ExtCtrls, ToolWin, ComCtrls;

type
  TfrmConfigTabSheet = class(TForm)
    chkConfiguracao: TbsSkinCheckListBox;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    procedure btnincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
     psFormulario : String;
    { Public declarations }
  end;

var
  frmConfigTabSheet: TfrmConfigTabSheet;

implementation

uses uPrincipal;
{$R *.dfm}

procedure TfrmConfigTabSheet.btnFecharClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmConfigTabSheet.btnincluirClick(Sender: TObject);
var liCont    : Integer;
    I         : Integer;
    lstConfig : TStringList;
begin
   lstConfig := TStringList.Create;
   for liCont := 0 to ( frmConfigTabSheet.chkConfiguracao.Items.Count - 1 ) do
   begin
      if chkConfiguracao.Checked[liCont] then
         lstConfig.Add(chkConfiguracao.items[liCont]);
   end;
   lstConfig.SaveToFile(gsPath+'\Config\TabShet'+psFormulario+'.config');
   Close;
end;

procedure TfrmConfigTabSheet.FormShow(Sender: TObject);
var lstConfig : TStringList;
    licont : integer;
begin
   lstConfig := TStringList.Create;
   lstConfig.LoadFromFile(gsPath+'\Config\TabShet'+psFormulario+'.config');
   for liCont := 0 to ( frmConfigTabSheet.chkConfiguracao.Items.Count - 1 ) do
   begin
     if lstConfig.IndexOf(chkConfiguracao.items[liCont]) >= 0 then
        chkConfiguracao.Checked[liCont]:= true
   end;
end;

end.
