unit uProdDescricaoComplementar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, bsSkinCtrls, ToolWin, ComCtrls, StdCtrls, bsSkinGrids,
  bsDBGrids, Mask, bsSkinBoxCtrls, DB, DBClient, FMTBcd, Provider, SqlExpr;

type
  TfrmProdDescricaoComplementar = class(TForm)
    bsSkinCoolBar1: TbsSkinCoolBar;
    bsSkinToolBar1: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel3: TbsSkinBevel;
    bsSkinExPanel1: TbsSkinExPanel;
    edtCod_Produto: TbsSkinEdit;
    bsSkinStdLabel15: TbsSkinStdLabel;
    edtProd_Descricao: TbsSkinEdit;
    bsSkinExPanel2: TbsSkinExPanel;
    bsSkinStatusBar1: TbsSkinStatusBar;
    bsSkinDBGrid1: TbsSkinDBGrid;
    MemComplemento: TMemo;
    bsSkinPanel1: TbsSkinPanel;
    cdsDescricaoComplementar: TClientDataSet;
    DataSource1: TDataSource;
    QryVariavel: TSQLQuery;
    dspVariavel: TDataSetProvider;
    bsSkinScrollBar1: TbsSkinScrollBar;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdDescricaoComplementar: TfrmProdDescricaoComplementar;

implementation

uses Cl_TBuscaDados;

{$R *.dfm}

procedure TfrmProdDescricaoComplementar.FormShow(Sender: TObject);
var  lBuscaProdutos : TBuscaDados;
     llistParametro : TStringList;
     llistValores   : TStringList;
begin
  {
   lBuscaProdutos  := TbuscaDados.Create;
   llistParametro  := TStringList.Create;
   llistValores    := TStringList.Create;

   //cdsDescricaoComplementar := lBuscaProdutos.BuscaDados('Select * from T_produtos',llistParametro,llistValores);

   QryVariavel.Close;
   QryVariavel.Params.Clear;
   QryVariavel.SQL.Text := 'Select * from T_DescricaoComplementar where Cod_produto=:parCod_Produto ';
   QryVariavel.ParamByName('parCod_Produto').Asinteger := StrtoInt(edtCod_Produto.Text);

   cdsDescricaoComplementar.Close;
   cdsDescricaoComplementar.ProviderName := dspVariavel.Name;
   cdsDescricaoComplementar.Open;

   MemComplemento.Clear;
   MemComplemento.Lines.Add(edtProd_Descricao.Text);
   }
end;

end.
