unit Remessa;

interface
type TRemessa = class
  private
    FDataFechamento: Tdatetime;
    FDataAtualizacao: TDateTime;
    FId: integer;
    FStatus: string;
    FFuncionarioID: integer;
    FOperador: string;
    FDataCadastro: TDateTime;
    procedure SetDataAtualizacao(const Value: TDateTime);
    procedure SetDataCadastro(const Value: TDateTime);
    procedure SetDataFechamento(const Value: Tdatetime);
    procedure SetFuncionarioID(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetOperador(const Value: string);
    procedure SetStatus(const Value: string);
  published
  public
    Property Id : integer read FId write SetId;
    Property Operador : string read FOperador write SetOperador;
    Property DataCadastro : TDateTime read FDataCadastro write SetDataCadastro;
    Property DataAtualizacao : TDateTime read FDataAtualizacao write SetDataAtualizacao;
    Property FuncionarioID : integer read FFuncionarioID write SetFuncionarioID;
    Property Status : string read FStatus write SetStatus;
    Property DataFechamento : Tdatetime read FDataFechamento write SetDataFechamento;
end;

implementation

{ TRemessa }

procedure TRemessa.SetDataAtualizacao(const Value: TDateTime);
begin
  FDataAtualizacao := Value;
end;

procedure TRemessa.SetDataCadastro(const Value: TDateTime);
begin
  FDataCadastro := Value;
end;

procedure TRemessa.SetDataFechamento(const Value: Tdatetime);
begin
  FDataFechamento := Value;
end;

procedure TRemessa.SetFuncionarioID(const Value: integer);
begin
  FFuncionarioID := Value;
end;

procedure TRemessa.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure TRemessa.SetOperador(const Value: string);
begin
  FOperador := Value;
end;

procedure TRemessa.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

end.
