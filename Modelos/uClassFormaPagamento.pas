unit uClassFormaPagamento;

interface
type TFormaPagamento = class
  private
    FDescricao: String;
    FIdFormaPagamento: Integer;
    FImprimeMensagem: Boolean;
    FMensagem: String;
    FId: Integer;
    procedure SetDescricao(const Value: String);
    procedure SetImprimeMensagem(const Value: Boolean);
    procedure SetMensagem(const Value: String);
    procedure SetId(const Value: Integer);
  public
    property Id : Integer read FId write SetId;
    property Descricao : String read FDescricao write SetDescricao;
    property ImprimeMensagem : Boolean read FImprimeMensagem write SetImprimeMensagem;
    property Mensagem : String read FMensagem write SetMensagem;
end;

implementation

{ TFormaPagamento }

procedure TFormaPagamento.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TFormaPagamento.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TFormaPagamento.SetImprimeMensagem(const Value: Boolean);
begin
  FImprimeMensagem := Value;
end;

procedure TFormaPagamento.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

end.
