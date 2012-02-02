unit uClassEmpresa;

interface
type TEmpresa = class
  private
    FIdEmpresa: Integer;
    FDescricao: String;
    procedure SetDescricao(const Value: String);
    procedure SetIdEmpresa(const Value: Integer);
  published
  public
    property IdEmpresa : Integer read FIdEmpresa write SetIdEmpresa;
    property Descricao : String read FDescricao write SetDescricao;
end;

implementation

{ TEmpresa }

procedure TEmpresa.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TEmpresa.SetIdEmpresa(const Value: Integer);
begin
  FIdEmpresa := Value;
end;

end.
