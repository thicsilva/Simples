unit uSelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, bsdbctrls, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls,
  DB;

type
  TfrmSelProduto = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    bsSkinStdLabel2: TbsSkinStdLabel;
    cmbProdutoUm: TbsSkinDBLookupComboBox;
    cmbProdutoDois: TbsSkinDBLookupComboBox;
    qtdeProdutoUm: TSpinEdit;
    qtdeProdutoDois: TSpinEdit;
    srcProdutos: TDataSource;
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelProduto: TfrmSelProduto;

implementation

uses uDaoProduto, uPrePagamento, uPrincipal;

{$R *.dfm}

procedure TfrmSelProduto.btnokClick(Sender: TObject);
begin
   tag := 1;
   Close;
end;

procedure TfrmSelProduto.FormShow(Sender: TObject);
var DaoProduto : TDaoProduto;
begin
  DaoProduto := TDaoProduto.Create(gConexao);
  srcProdutos.DataSet := DaoProduto.BuscarTodos;
end;

end.
