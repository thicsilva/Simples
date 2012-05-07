unit uClassEventoAnimal;

interface

type TEventoAnimal = class
  private
    FData_Agendada: TDateTime;
    FData_Cadastro: TDateTime;
    FAnimalId: Integer;
    FOperador: String;
    FData_Realizada: TDateTime;
    FEvento: String;
    procedure SetAnimalId(const Value: Integer);
    procedure SetData_Agendada(const Value: TDateTime);
    procedure SetData_Cadastro(const Value: TDateTime);
    procedure SetData_Realizada(const Value: TDateTime);
    procedure SetEvento(const Value: String);
    procedure SetOperador(const Value: String);
  published
   public
     property AnimalId : Integer read FAnimalId write SetAnimalId;
     property Evento : String read FEvento write SetEvento;
     property Data_Cadastro : TDateTime read FData_Cadastro write SetData_Cadastro;
     property Data_Agendada : TDateTime read FData_Agendada write SetData_Agendada;
     property Data_Realizada : TDateTime read FData_Realizada write SetData_Realizada;
     property Operador : String read FOperador write SetOperador;
end;

implementation

{ TEventoAnimal }

procedure TEventoAnimal.SetAnimalId(const Value: Integer);
begin
  FAnimalId := Value;
end;

procedure TEventoAnimal.SetData_Agendada(const Value: TDateTime);
begin
  FData_Agendada := Value;
end;

procedure TEventoAnimal.SetData_Cadastro(const Value: TDateTime);
begin
  FData_Cadastro := Value;
end;

procedure TEventoAnimal.SetData_Realizada(const Value: TDateTime);
begin
  FData_Realizada := Value;
end;

procedure TEventoAnimal.SetEvento(const Value: String);
begin
  FEvento := Value;
end;

procedure TEventoAnimal.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

end.
