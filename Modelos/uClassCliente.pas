unit uClassCliente;

interface
type TCliente = class
  private
    FDescrcao: string;
    FIdCliente: integer;
    FCPF: String;
    procedure SetDescrcao(const Value: string);
    procedure SetIdCliente(const Value: integer);
    procedure SetCPF(const Value: String);
  published
   public
     property IdCliente : integer read FIdCliente write SetIdCliente;
     property Descrcao : string read FDescrcao write SetDescrcao;
     property CPF : String read FCPF write SetCPF;

end;
implementation

{ TCliente }

procedure TCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCliente.SetDescrcao(const Value: string);
begin
  FDescrcao := Value;
end;

procedure TCliente.SetIdCliente(const Value: integer);
begin
  FIdCliente := Value;
end;

end.
