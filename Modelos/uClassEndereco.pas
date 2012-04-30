unit uClassEndereco;

interface

type TEndereco = Class
  private
    Flogradouro: string;
    Fbairro: string;
    Fuf: string;
    Fnumero: string;
    Fcidade: string;
    procedure Setbairro(const Value: string);
    procedure Setcidade(const Value: string);
    procedure Setlogradouro(const Value: string);
    procedure Setnumero(const Value: string);
    procedure Setuf(const Value: string);
  published

   public
     property logradouro : string read Flogradouro write Setlogradouro;
     property bairro : string read Fbairro write Setbairro;
     property cidade : string read Fcidade write Setcidade;
     property uf : string read Fuf write Setuf;
     property numero : string read Fnumero write Setnumero;

end;

implementation

{ TEndereco }

procedure TEndereco.Setbairro(const Value: string);
begin
  Fbairro := Value;
end;

procedure TEndereco.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure TEndereco.Setlogradouro(const Value: string);
begin
  Flogradouro := Value;
end;

procedure TEndereco.Setnumero(const Value: string);
begin
  Fnumero := Value;
end;

procedure TEndereco.Setuf(const Value: string);
begin
  Fuf := Value;
end;

end.
