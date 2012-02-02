unit uClassFormaPagamento;

interface
type TFormaPagamento = class
  private
    FDescricao: String;
    FIdFormaPagamento: Integer;
    FImprimeMensagem: Boolean;
    FMensagem: String;
    procedure SetDescricao(const Value: String);
    procedure SetIdFormaPagamento(const Value: Integer);
    procedure SetImprimeMensagem(const Value: Boolean);
    procedure SetMensagem(const Value: String);
  public
    property IdFormaPagamento : Integer read FIdFormaPagamento write SetIdFormaPagamento;
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

procedure TFormaPagamento.SetIdFormaPagamento(const Value: Integer);
begin
  FIdFormaPagamento := Value;
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
