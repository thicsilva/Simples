unit uClassEmpresa;

interface

uses  uClassEndereco;

type TEmpresa = class
  private
    FIdEmpresa: Integer;
    FDescricao: String;
    FEmail: string;
    FSite: string;
    FTelefones: String;
    FEndereco: TEndereco;
    procedure SetDescricao(const Value: String);
    procedure SetIdEmpresa(const Value: Integer);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: TEndereco);
    procedure SetSite(const Value: string);
    procedure SetTelefones(const Value: String);
  published
  public
    Constructor Create;
    property IdEmpresa : Integer read FIdEmpresa write SetIdEmpresa;
    property Descricao : String read FDescricao write SetDescricao;
    property Endereco : TEndereco read FEndereco write SetEndereco;
    property Telefones : String read FTelefones write SetTelefones;
    property Site : string read FSite write SetSite;
    property Email : string read FEmail write SetEmail;
end;

implementation

{ TEmpresa }

constructor TEmpresa.Create;
begin
   Fendereco := TEndereco.Create;
   Fendereco.logradouro := 'rua';
   Fendereco.bairro := 'bairro';
   Fendereco.cidade := 'cidade';
   Fendereco.uf := 'RN';
   Self.Site := 'site';
   Self.Email := 'Email';
   Self.Telefones := 'Telefes';

    {
   Fendereco := TEndereco.Create;
   Fendereco.logradouro := 'Rua Dos Caicos 1473';
   Fendereco.bairro := 'Alecrim';
   Fendereco.cidade := 'Natal';
   Fendereco.uf := 'RN';
   Self.Site := 'www.MundoDigital.com.br';
   Self.Email := 'Contato@MundoDigital.com.br';
   Self.Telefones := '(84)3213 - 1476 / (84) 8876-1476 / (84) 8846-9153';
     }

end;

procedure TEmpresa.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TEmpresa.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TEmpresa.SetIdEmpresa(const Value: Integer);
begin
  FIdEmpresa := Value;
end;

procedure TEmpresa.SetSite(const Value: string);
begin
  FSite := Value;
end;

procedure TEmpresa.SetTelefones(const Value: String);
begin
  FTelefones := Value;
end;

end.
