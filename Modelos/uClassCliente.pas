unit uClassCliente;

interface
type TCliente = class
  private
    FDescricao: string;
    FCPF: String;
    FId: integer;
    procedure SetDescricao(const Value: string);
    procedure SetCPF(const Value: String);
    procedure SetId(const Value: integer);
  published
   public
     property Id : integer read FId write SetId;
     property Descricao : string read FDescricao write SetDescricao;

     property CPF : String read FCPF write SetCPF;

end;
implementation

{ TCliente }

procedure TCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCliente.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TCliente.SetId(const Value: integer);
begin
  FId := Value;
end;


end.
