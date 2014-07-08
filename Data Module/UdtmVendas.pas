unit UdtmVendas;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TdtmVendas = class(TDataModule)
    srcTamanhos: TDataSource;
    cdsItensVendasTamhos: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVendas: TdtmVendas;

implementation

{$R *.dfm}

end.
