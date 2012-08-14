unit uClassAnimal;

interface

type TAnimal = class
  private
    FCor: String;
    FEspecie: String;
    FData_Cadastro: TDateTime;
    FRaca: String;
    FOperador: String;
    FData_Atualizacao: TDateTime;
    FData_Nascmento: TDateTime;
    FClienteId: Integer;
    FNome: String;
    FCaminhoImagem: String;
    FData_Aquisicao: TDateTime;
    FId: Integer;
    procedure SetClienteId(const Value: Integer);
    procedure SetCor(const Value: String);
    procedure SetData_Atualizacao(const Value: TDateTime);
    procedure SetData_Cadastro(const Value: TDateTime);
    procedure SetData_Nascmento(const Value: TDateTime);
    procedure SetEspecie(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetOperador(const Value: String);
    procedure SetRaca(const Value: String);
    procedure SetCaminhoImagem(const Value: String);
    procedure SetData_Aquisicao(const Value: TDateTime);
    procedure SetId(const Value: Integer);
  published
   public
     property Nome : String read FNome write SetNome;
     property Especie : String read FEspecie write SetEspecie;
     property Raca : String read FRaca write SetRaca;
     property Cor : String read FCor write SetCor;
     property Data_Nascmento : TDateTime read FData_Nascmento write SetData_Nascmento;
     property CaminhoImagem : String read FCaminhoImagem write SetCaminhoImagem;
     property Operador : String read FOperador write SetOperador;
     property Data_Cadastro : TDateTime read FData_Cadastro write SetData_Cadastro;
     property ClienteId : Integer read FClienteId write SetClienteId;
     property Data_Atualizacao :TDateTime read FData_Atualizacao write SetData_Atualizacao;
     property Data_Aquisicao : TDateTime read FData_Aquisicao write SetData_Aquisicao;
     property Id : Integer read FId write SetId;
end;

implementation

{ TAnimal }


procedure TAnimal.SetCaminhoImagem(const Value: String);
begin
  FCaminhoImagem := Value;
end;

procedure TAnimal.SetClienteId(const Value: Integer);
begin
  FClienteId := Value;
end;

procedure TAnimal.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TAnimal.SetData_Aquisicao(const Value: TDateTime);
begin
  FData_Aquisicao := Value;
end;

procedure TAnimal.SetData_Atualizacao(const Value: TDateTime);
begin
  FData_Atualizacao := Value;
end;

procedure TAnimal.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TAnimal.SetData_Nascmento(const Value: TDateTime);
begin
  FData_Nascmento := Value;
end;

procedure TAnimal.SetEspecie(const Value: String);
begin
  FEspecie := Value;
end;

procedure TAnimal.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TAnimal.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAnimal.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TAnimal.SetRaca(const Value: String);
begin
  FRaca := Value;
end;

end.
