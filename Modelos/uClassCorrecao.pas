unit uClassCorrecao;

interface

uses SysUtils;

type TCorrecao = class
  private
    FDataCadastro: TDateTime;
    FCorrecao: String;
    procedure SetCorrecao(const Value: String);
    procedure SetDataCadastro(const Value: TDateTime);
  published
  public
    property Correcao :String read FCorrecao write SetCorrecao;
    property DataCadastro : TDateTime read FDataCadastro write SetDataCadastro;
end;
implementation

{ TCorrecao }

procedure TCorrecao.SetCorrecao(const Value: String);
begin
  FCorrecao := Value;
end;

procedure TCorrecao.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

end.
