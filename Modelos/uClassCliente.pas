unit uClassCliente;

interface

uses uClassEndereco,uClassRota;

type TCliente = class
  private
    FDescricao: string;
    FCPF: String;
    FId: integer;
    FInscricaoEstadual: String;
    FEndereco: TEndereco;
    FTelefones: String;
    FSequencia: String;
    FRota: TRota;
    procedure SetDescricao(const Value: string);
    procedure SetCPF(const Value: String);
    procedure SetId(const Value: integer);
    procedure SetInscricaoEstadual(const Value: String);
    procedure SetEndereco(const Value: TEndereco);
    procedure SetTelefones(const Value: String);
    procedure SetSequencia(const Value: String);
    procedure SetRota(const Value: TRota);
  published
   public
     Constructor Create;
     property Id : integer read FId write SetId;
     property Descricao : string read FDescricao write SetDescricao;
     property CPF : String read FCPF write SetCPF;
     property Sequencia : String read FSequencia write SetSequencia;
     property InscricaoEstadual : String read FInscricaoEstadual write SetInscricaoEstadual;
     property Endereco : TEndereco read FEndereco write SetEndereco;
     property Telefones : String read FTelefones write SetTelefones;
     property Rota : TRota read FRota write SetRota;
end;
implementation

{ TCliente }

constructor TCliente.Create;
begin
   FEndereco := TEndereco.Create;
end;

procedure TCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TCliente.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TCliente.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TCliente.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TCliente.SetInscricaoEstadual(const Value: String);
begin
  FInscricaoEstadual := Value;
end;

procedure TCliente.SetRota(const Value: TRota);
begin
  FRota := Value;
end;

procedure TCliente.SetSequencia(const Value: String);
begin
  FSequencia := Value;
end;

procedure TCliente.SetTelefones(const Value: String);
begin
  FTelefones := Value;
end;

end.
