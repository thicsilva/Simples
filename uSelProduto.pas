unit uSelProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, bsdbctrls, bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls,
  DB, DBClient, bsSkinGrids, bsDBGrids;

type
  TfrmSelProduto = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinStdLabel1: TbsSkinStdLabel;
    cmbProdutoUm: TbsSkinDBLookupComboBox;
    qtdeProdutoUm: TSpinEdit;
    srcProdutos: TDataSource;
    btnAdicionar: TbsSkinButton;
    bsSkinDBGrid1: TbsSkinDBGrid;
    srcVendaProduto: TDataSource;
    cdsVendaProduto: TClientDataSet;
    cdsVendaProdutoCodigo: TStringField;
    cdsVendaProdutoDescricao: TStringField;
    cdsVendaProdutoQuantidade: TIntegerField;
    btnRemover: TbsSkinButton;
    procedure btnokClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
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

procedure TfrmSelProduto.btnAdicionarClick(Sender: TObject);
begin
   cdsVendaProduto.Append;
   cdsVendaProduto.FieldByName('Codigo').AsString      :=  cmbProdutoUm.KeyValue;
   cdsVendaProduto.FieldByName('Descricao ').AsString   :=  cmbProdutoUm.Text;
   cdsVendaProduto.FieldByName('Quantidade').AsInteger := Strtoint(qtdeProdutoUm.text);
   cdsVendaProduto.Post
end;

procedure TfrmSelProduto.btnokClick(Sender: TObject);
begin
   tag := 1;
   Close;
end;

procedure TfrmSelProduto.btnRemoverClick(Sender: TObject);
begin
   cdsVendaProduto.Delete;
end;

procedure TfrmSelProduto.FormShow(Sender: TObject);
var DaoProduto : TDaoProduto;
begin
  DaoProduto := TDaoProduto.Create(gConexao);
  srcProdutos.DataSet := DaoProduto.BuscarTodos;
end;

end.
