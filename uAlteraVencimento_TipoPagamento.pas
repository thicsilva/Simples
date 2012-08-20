unit uAlteraVencimento_TipoPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,uFormBase, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, StdCtrls, Mask,
  bsSkinBoxCtrls, bsdbctrls, DB;

type
  TfrmAlteraVencimento_TipoPagamento = class(TFormBase)
    bsSkinCoolBar2: TbsSkinCoolBar;
    bsSkinToolBar2: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    btnincluir: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    bsSkinBevel2: TbsSkinBevel;
    edtData_Vencimento: TbsSkinDateEdit;
    lblVencimentos: TbsSkinStdLabel;
    cmbNome_formaPagamento: TbsSkinDBLookupComboBox;
    bsSkinStdLabel1: TbsSkinStdLabel;
    srcFormaPagamento: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    pContaAReceberId : Integer;
    { Public declarations }
  end;

var
  frmAlteraVencimento_TipoPagamento: TfrmAlteraVencimento_TipoPagamento;

implementation

uses uDaoFormaPagamento,uPrincipal,uDaoContaReceber;

{$R *.dfm}

procedure TfrmAlteraVencimento_TipoPagamento.btnFecharClick(Sender: TObject);
begin
   Close
end;

procedure TfrmAlteraVencimento_TipoPagamento.btnincluirClick(Sender: TObject);
var DaoContaAReceber : TDaoContaReceber;
begin
   DaoContaAReceber := TDaoContaReceber.Create(gConexao);
   DaoContaAReceber.AtualizarVencimento(edtData_Vencimento.Date, cmbNome_formaPagamento.KeyValue, pContaAReceberId );
   Close;
end;

procedure TfrmAlteraVencimento_TipoPagamento.FormCreate(Sender: TObject);
var DaoFormaPagamento : TDaoFormaPagamento;
begin
  DaoFormaPagamento         := TDaoFormaPagamento.Create(gConexao);
  srcFormaPagamento.DataSet := DaoFormaPagamento.BuscarTodos;
end;

procedure TfrmAlteraVencimento_TipoPagamento.FormShow(Sender: TObject);
begin
  //
end;

end.
