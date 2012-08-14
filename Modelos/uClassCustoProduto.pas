unit uClassCustoProduto;

interface

type TCustoProduto = class
  private
    FValor: Real;
    FDescricao: String;
    Fid: integer;
    FTipo: Integer;
    FOrdem: Integer;
    FProdutoId: Integer;
    procedure SetDescricao(const Value: String);
    procedure Setid(const Value: integer);
    procedure SetOrdem(const Value: Integer);
    procedure SetTipo(const Value: Integer);
    procedure SetValor(const Value: Real);
    procedure SetProdutoId(const Value: Integer);

  public
    property id : integer read Fid write Setid;
    property Descricao : String read FDescricao write SetDescricao;
    property Valor : Real read FValor write SetValor;
    property Ordem : Integer read FOrdem write SetOrdem;
    property Tipo : Integer read FTipo write SetTipo;
    property ProdutoId : Integer read FProdutoId write SetProdutoId;
end;
implementation

{ TCustoProduto }

procedure TCustoProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TCustoProduto.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TCustoProduto.SetOrdem(const Value: Integer);
begin
  FOrdem := Value;
end;

procedure TCustoProduto.SetProdutoId(const Value: Integer);
begin
  FProdutoId := Value;
end;

procedure TCustoProduto.SetTipo(const Value: Integer);
begin
  FTipo := Value;
end;

procedure TCustoProduto.SetValor(const Value: Real);
begin
  FValor := Value;
end;

end.
