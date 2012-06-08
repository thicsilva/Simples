unit uRomaneioDeCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  bsSkinCtrls, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Mask, bsSkinBoxCtrls,
  bsSkinTabs, DBClient;

type
  TfrmRomaneioDeEntrega = class(TForm)
    bsSkinCoolBar3: TbsSkinCoolBar;
    bsSkinToolBar3: TbsSkinToolBar;
    btnFechar: TbsSkinSpeedButton;
    bsSkinBevel1: TbsSkinBevel;
    btnok: TbsSkinSpeedButton;
    bsSkinBevel2: TbsSkinBevel;
    bsSkinPageControl1: TbsSkinPageControl;
    PagNovoRomaneio: TbsSkinTabSheet;
    cxGrid1: TcxGrid;
    GrdVendas: TcxGridDBTableView;
    GrdItensVendas: TcxGridDBTableView;
    Colum_Codigo: TcxGridDBColumn;
    Colum_Descrisao: TcxGridDBColumn;
    Colum_Quantidade: TcxGridDBColumn;
    Colum_PcoVenda: TcxGridDBColumn;
    Colum_Desconto: TcxGridDBColumn;
    Colum_VlrTotal: TcxGridDBColumn;
    Colum_Complemento: TcxGridDBColumn;
    grdDevolucoes: TcxGridDBTableView;
    grdDevolucoesColumn1: TcxGridDBColumn;
    GrdItensDevolvidos: TcxGridDBTableView;
    GrdItensDevolvidosColumn1: TcxGridDBColumn;
    GrdItensDevolvidosColumn2: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bsSkinExPanel1: TbsSkinExPanel;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinLabel1: TbsSkinLabel;
    edtNumeroVenda: TbsSkinEdit;
    bsSkinButton3: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    cdsRomaneio: TClientDataSet;
    cdsRomaneioNumeroVenda: TIntegerField;
    cdsRomaneioClienteId: TIntegerField;
    cdsRomaneioNome_cliente: TStringField;
    cdsRomaneioVendedor: TStringField;
    cdsRomaneioDataVenda: TDateTimeField;
    cdsRomaneioTotal_Financeiro: TFloatField;
    cdsRomaneioTotal_Peso: TFloatField;
    srcRomaneio: TDataSource;
    GrdVendasNumeroVenda: TcxGridDBColumn;
    GrdVendasClienteId: TcxGridDBColumn;
    GrdVendasNome_cliente: TcxGridDBColumn;
    GrdVendasVendedor: TcxGridDBColumn;
    GrdVendasDataVenda: TcxGridDBColumn;
    GrdVendasTotal_Financeiro: TcxGridDBColumn;
    GrdVendasTotal_Peso: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRomaneioDeEntrega: TfrmRomaneioDeEntrega;

implementation

uses uPrincipal;

{$R *.dfm}

end.
