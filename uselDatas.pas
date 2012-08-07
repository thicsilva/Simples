unit uselDatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, bsSkinBoxCtrls, StdCtrls,
  Mask,uDaoCaixaMovimento,DbClient;

type
  TfrmSelDatas = class(TForm)
    PanelConsulta: TbsSkinPanel;
    dtpData_Ini: TbsSkinDateEdit;
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    cmbTipoResumoVenda: TbsSkinComboBox;
    cmbturno: TbsSkinComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure dtpData_IniChange(Sender: TObject);
  private
    { Private declarations }
  public
     idCaixa : integer;
     procedure CarregarDoTurno;
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

procedure TfrmSelDatas.CarregarDoTurno;
var DaoCaixaMovimento : TDaoCaixaMovimento;
    Dados : TclientDataSet;
begin
   DaoCaixaMovimento := TDaoCaixaMovimento.Create(gConexao);
   Dados := DaoCaixaMovimento.RetornarTurnosFechados(dtpData_Ini.Date, idCaixa);
   cmbturno.Items.Clear;
   cmbturno.Items.Add('Caixa Aberto');
   while not Dados.Eof do
   begin
     if Dados.FieldByName('Turno').AsInteger<>0 then
        cmbturno.Items.Add('Turno '+Dados.FieldByName('Turno').AsString);
     Dados.Next;
   end;
   try
   cmbturno.ItemIndex := 0;
   except
   end;
end;

procedure TfrmSelDatas.dtpData_IniChange(Sender: TObject);
begin
   CarregarDoTurno;
end;

procedure TfrmSelDatas.FormShow(Sender: TObject);
begin
  dtpData_Ini.Date := gsData_Mov;
  CarregarDoTurno;
end;

end.
