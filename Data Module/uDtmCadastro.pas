unit uDtmCadastro;

interface

uses
  SysUtils, Classes, DB, DBClient;

type
  TdtmCadastro = class(TDataModule)
    cdsEmpresa: TClientDataSet;
    srcEmpresa: TDataSource;
    srcCliente: TDataSource;
    cdsClientes: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmCadastro: TdtmCadastro;

implementation

{$R *.dfm}

end.
