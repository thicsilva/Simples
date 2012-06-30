unit uConsultasSemSinalPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls,uFormBase, bsSkinGrids,
  bsDBGrids, DB;

type
  TfrmConsultaSemSinalPago = class(TFormBase)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinSpeedButton1: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    dbgConsulta: TbsSkinDBGrid;
    srcVendas: TDataSource;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsSkinSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pNumeroVenda : Integer;
    PCodCaixa : Integer;
  end;

var
  frmConsultaSemSinalPago: TfrmConsultaSemSinalPago;

implementation

uses uDaoVenda,uPrincipal;

{$R *.dfm}

procedure TfrmConsultaSemSinalPago.bsSkinSpeedButton1Click(Sender: TObject);
begin
   pNumeroVenda := srcVendas.DataSet.FieldByname('SeqVenda').AsInteger;
   PCodCaixa    := srcVendas.DataSet.FieldByname('Cod_Caixa').AsInteger;
   Close;
end;

procedure TfrmConsultaSemSinalPago.btnFecharClick(Sender: TObject);
begin
   pNumeroVenda := 0;
   close;
end;

procedure TfrmConsultaSemSinalPago.FormShow(Sender: TObject);
var DaoVenda : TDaoVenda;
begin
   DaoVenda := TDaoVenda.Create(gConexao);
   srcVendas.dataset := DaoVenda.RetonarVendasSemSinalPago;
   pNumeroVenda := 0;
end;

end.
