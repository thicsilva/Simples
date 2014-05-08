unit UdtmVendas;

interface

uses
  SysUtils, Classes, DB;

type
  TdtmVendas = class(TDataModule)
    srcTamanhos: TDataSource;
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
