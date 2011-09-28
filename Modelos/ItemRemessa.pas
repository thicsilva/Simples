unit ItemRemessa;

interface

type TItemRemessa = Class
  private
    FRemessaId: Integer;
    FDataAtualizacao: TDateTime;
    FQuantidadeEnviada: Integer;
    FQuantidadeVendida: Integer;
    FQuantidadeDevolvida: Integer;
    FProdutoId: Integer;
    FId: Integer;
    FOperador: String;
    procedure SetDataAtualizacao(const Value: TDateTime);
    procedure SetId(const Value: Integer);
    procedure SetOperador(const Value: String);
    procedure SetProdutoId(const Value: Integer);
    procedure SetQuantidadeDevolvida(const Value: Integer);
    procedure SetQuantidadeEnviada(const Value: Integer);
    procedure SetQuantidadeVendida(const Value: Integer);
    procedure SetRemessaId(const Value: Integer);
  published
  public
    Property Id : Integer read FId write SetId;
    Property RemessaId  : Integer read FRemessaId write SetRemessaId;
    Property ProdutoId  : Integer read FProdutoId write SetProdutoId;
    Property QuantidadeEnviada  : Integer read FQuantidadeEnviada write SetQuantidadeEnviada;
    Property QuantidadeDevolvida  : Integer read FQuantidadeDevolvida write SetQuantidadeDevolvida;
    Property QuantidadeVendida  : Integer read FQuantidadeVendida write SetQuantidadeVendida;
    Property DataAtualizacao  : TDateTime read FDataAtualizacao write SetDataAtualizacao;
    Property Operador  : String read FOperador write SetOperador;
End;

implementation

{ TItemRemessa }

procedure TItemRemessa.SetDataAtualizacao(const Value: TDateTime);
begin
  FDataAtualizacao := Value;
end;

procedure TItemRemessa.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TItemRemessa.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TItemRemessa.SetProdutoId(const Value: Integer);
begin
  FProdutoId := Value;
end;

procedure TItemRemessa.SetQuantidadeDevolvida(const Value: Integer);
begin
  FQuantidadeDevolvida := Value;
end;

procedure TItemRemessa.SetQuantidadeEnviada(const Value: Integer);
begin
  FQuantidadeEnviada := Value;
end;

procedure TItemRemessa.SetQuantidadeVendida(const Value: Integer);
begin
  FQuantidadeVendida := Value;
end;

procedure TItemRemessa.SetRemessaId(const Value: Integer);
begin
  FRemessaId := Value;
end;

end.
