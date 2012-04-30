unit uClassSaldo;

interface

type TSaldo = class
  private
    FSetorId: Integer;
    FProdutoId: Integer;
    FValor: integer;
    FDiferenca: integer;
    procedure SetProdutoId(const Value: Integer);
    procedure SetSetorId(const Value: Integer);
    procedure SetValor(const Value: integer);
    procedure SetDiferenca(const Value: integer);
  published
  public
    property SetorId : Integer read FSetorId write SetSetorId;
    property ProdutoId : Integer read FProdutoId write SetProdutoId;
    property Valor : Integer read FValor write SetValor;
    property Diferenca : integer read FDiferenca write SetDiferenca;
end;

implementation

{ TSaldo }

procedure TSaldo.SetDiferenca(const Value: integer);
begin
  FDiferenca := Value;
end;

procedure TSaldo.SetProdutoId(const Value: Integer);
begin
  FProdutoId := Value;
end;

procedure TSaldo.SetSetorId(const Value: Integer);
begin
  FSetorId := Value;
end;

procedure TSaldo.SetValor(const Value: integer);
begin
  FValor := Value;
end;

end.
