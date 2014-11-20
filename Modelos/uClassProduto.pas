unit uClassProduto;

interface

type TProduto = class
  private
    FProdutoId: Integer;
    FPrecoTabela: Real;
    FDescricao: String;
    procedure SetPrecoTabela(const Value: Real);
    procedure SetProdutoId(const Value: Integer);
    procedure SetDescricao(const Value: String);

  public
    property ProdutoId : Integer read FProdutoId write SetProdutoId;
    property PrecoTabela : Real read FPrecoTabela write SetPrecoTabela;
    property Descricao : String read FDescricao write SetDescricao;

end;

implementation


{ TProduto }

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetPrecoTabela(const Value: Real);
begin
  FPrecoTabela := Value;
end;

procedure TProduto.SetProdutoId(const Value: Integer);
begin
  FProdutoId := Value;
end;

end.
