unit uselFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, bsdbctrls, ComCtrls, ExtCtrls, bsSkinCtrls, ToolWin,
  BusinessSkinForm;

type
    TfrmSelFuncionario = class(TForm)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    StatusBar1: TStatusBar;
    cmbNome_Funcionario: TbsSkinDBLookupComboBox;
    Label1: TLabel;
    srcMecanico: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelFuncionario: TfrmSelFuncionario;

implementation

uses uFuncoes,uprincipal;
{$R *.dfm}

procedure TfrmSelFuncionario.btnFecharClick(Sender: TObject);
begin
   if cmbNome_Funcionario.KeyValue = null then
   begin
      CaixaMensagem( 'Selecione o Mecânico para continua ', ctAviso, [ cbOk ], 0 );
      Exit
   end;
   close;
end;

end.
