unit uDtmRelatorios;

interface

uses
  SysUtils, Classes, RDprint;

type
  TdtmRelatorios = class(TDataModule)
    ImpMatricial: TRDprint;
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmRelatorios: TdtmRelatorios;

implementation

uses uFuncoes;

{$R *.dfm}

end.
