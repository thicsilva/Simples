unit ufechames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,uFormBase,
  Dialogs, bsSkinBoxCtrls, StdCtrls, bsSkinCtrls, ExtCtrls, ToolWin,sqltimst,
  ComCtrls, DB, ADODB, BusinessSkinForm, Mask, FMTBcd, SqlExpr;

type
  Tfrmfechames = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinGroupBox1: TbsSkinGroupBox;
    dtpData_Fim: TbsSkinDateEdit;
    lblTurma: TbsSkinStdLabel;
    qryModific: TSQLQuery;
    procedure btnokClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfechames: Tfrmfechames;

implementation

uses uprincipal,Ufuncoes;
{$R *.dfm}

procedure Tfrmfechames.btnokClick(Sender: TObject);
begin
   if CaixaMensagem( 'Deseja Realizar o fechamento do Periodo na data de '+dtpData_Fim.Text , ctConfirma, [ cbSimNao ], 0 )  Then
   Begin
      case frmfechames.tag of
        0 :
        Begin
           qryModific.Close;
           qryModific.Sql.Text:='Update T_CtasReceber set Repasse=:parRepasse Where Status=:parstatus ';
           qryModific.ParamByName('parStatus').AsInteger := 1;
           qryModific.ParamByName('parRepasse').AsString := 'N';
           qryModific.ExecSQL;

           qryModific.Close;
           qryModific.Sql.Text:='Update T_CtasReceber set Repasse=:parRepasse Where Status=:parstatus ' +
                                ' and Data_Vencimento<=:parData_Vencimento ';
           qryModific.ParamByName('parStatus').AsInteger  := 0;
           qryModific.ParamByName('parRepasse').AsString  := 'S';
           qryModific.ParamByName('parData_Vencimento').AsSQLTimeStamp := StrToSQLTimeStamp(dtpData_Fim.Text);
           qryModific.ExecSQL;
        End;
        1 :
        Begin
           qryModific.Close;
           qryModific.Sql.Text:='Update T_CtasReceber set Fechado=:parFechado '+
                                'Where Data_Vencimento<=:parData_Vencimento ';
           qryModific.ParamByName('parData_Vencimento').AsSQLTimeStamp := StrToSQLTimeStamp(dtpData_Fim.Text);
           qryModific.ParamByName('parFechado').AsInteger  := 1;
           qryModific.ExecSQL;
        End;
      end;
      CaixaMensagem( 'Concluido com Sucesso!!!', ctInforma, [ cbOk ], 0 );
   End;
end;

procedure Tfrmfechames.FormShow(Sender: TObject);
begin
   dtpData_Fim.Date := Now;
end;

procedure Tfrmfechames.btnFecharClick(Sender: TObject);
begin
   close;
end;

end.
