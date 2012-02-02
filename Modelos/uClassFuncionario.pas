unit uClassFuncionario;

interface

type TFuncionario = class
  private
    FDescricao: String;
    FIdFuncionario: Integer;
    procedure SetDescricao(const Value: String);
    procedure SetIdFuncionario(const Value: Integer);
  public
    property IdFuncionario : Integer read FIdFuncionario write SetIdFuncionario;
    property Descricao : String read FDescricao write SetDescricao;
end;

implementation

{ TFuncionario }

procedure TFuncionario.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TFuncionario.SetIdFuncionario(const Value: Integer);
begin
  FIdFuncionario := Value;
end;

end.
