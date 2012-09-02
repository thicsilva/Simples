unit uClassRota;

interface

type TRota =class
  private
    FDescricao: String;
    FId: Integer;
    procedure SetDescricao(const Value: String);
    procedure SetId(const Value: Integer);
  public
    property Id : Integer read FId write SetId;
    property Descricao : String read FDescricao write SetDescricao;
end;

implementation

{ TRota }

{ TRota }

procedure TRota.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TRota.SetId(const Value: Integer);
begin
  FId := Value;
end;

end.
