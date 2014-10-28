unit uClassEmpresa;

interface

uses  uClassEndereco;

type TEmpresa = class
  private
    FIdEmpresa: Integer;
    FEmail: string;
    FSite: string;
    FTelefones: String;
    FEndereco: TEndereco;
    FCNPJ: String;
    FFax: String;
    FRazao_social: String;
    FNome_Fantasia: String;
    FTelefone: String;
    FInscricaoEstadual: String;
    FUf: String;
    FUfId: integer;
    FMunicipioId: Integer;
    procedure SetIdEmpresa(const Value: Integer);
    procedure SetEmail(const Value: string);
    procedure SetEndereco(const Value: TEndereco);
    procedure SetSite(const Value: string);
    procedure SetTelefones(const Value: String);
    procedure SetCNPJ(const Value: String);
    procedure SetFax(const Value: String);
    procedure SetNome_Fantasia(const Value: String);
    procedure SetRazao_social(const Value: String);
    procedure SetTelefone(const Value: String);
    procedure SetInscricaoEstadual(const Value: String);
    procedure SetUf(const Value: String);
    procedure SetUfId(const Value: integer);
    procedure SetMunicipioId(const Value: Integer);
  published
  public
    Constructor Create;
    property IdEmpresa : Integer read FIdEmpresa write SetIdEmpresa;
    property Endereco : TEndereco read FEndereco write SetEndereco;
    property Telefones : String read FTelefones write SetTelefones;
    property Site : string read FSite write SetSite;
    property Email : string read FEmail write SetEmail;
    property CNPJ : String read FCNPJ write SetCNPJ;
    property Nome_Fantasia : String read FNome_Fantasia write SetNome_Fantasia;
    property Razao_social : String read FRazao_social write SetRazao_social;
    property Fax : String read FFax write SetFax;
    property Telefone : String read FTelefone write SetTelefone;
    property MunicipioId : Integer read FMunicipioId write SetMunicipioId;
    property UfId : integer read FUfId write SetUfId;
    property InscricaoEstadual : String read FInscricaoEstadual write SetInscricaoEstadual;
end;

implementation

{ TEmpresa }

constructor TEmpresa.Create;
begin
   Fendereco := TEndereco.Create;
end;


procedure TEmpresa.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TEmpresa.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TEmpresa.SetEndereco(const Value: TEndereco);
begin
  FEndereco := Value;
end;

procedure TEmpresa.SetFax(const Value: String);
begin
  FFax := Value;
end;

procedure TEmpresa.SetIdEmpresa(const Value: Integer);
begin
  FIdEmpresa := Value;
end;

procedure TEmpresa.SetInscricaoEstadual(const Value: String);
begin
  FInscricaoEstadual := Value;
end;

procedure TEmpresa.SetMunicipioId(const Value: Integer);
begin
  FMunicipioId := Value;
end;

procedure TEmpresa.SetNome_Fantasia(const Value: String);
begin
  FNome_Fantasia := Value;
end;

procedure TEmpresa.SetRazao_social(const Value: String);
begin
  FRazao_social := Value;
end;

procedure TEmpresa.SetSite(const Value: string);
begin
  FSite := Value;
end;

procedure TEmpresa.SetTelefone(const Value: String);
begin
  FTelefone := Value;
end;

procedure TEmpresa.SetTelefones(const Value: String);
begin
  FTelefones := Value;
end;

procedure TEmpresa.SetUf(const Value: String);
begin
  FUf := Value;
end;

procedure TEmpresa.SetUfId(const Value: integer);
begin
  FUfId := Value;
end;

end.
