unit uDtmComprovanteVenda;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet;

type
  TDtmComprovante = class(TDataModule)
    frxOrdemServico: TfrxReport;
    frxDbEmpresa: TfrxDBDataset;
    frxDBCliente: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmComprovante: TDtmComprovante;

implementation

{$R *.dfm}

end.
