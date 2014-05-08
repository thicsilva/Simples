unit dtmVendas;

interface

uses
  SysUtils, Classes, DB;

type
  TDataModule1 = class(TDataModule)
    DataSource2: TDataSource;
    srcTamanhos: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
