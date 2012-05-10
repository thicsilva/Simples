unit uClassItemEntrada;

interface
type TItemEntrada = class
  private
    FOperador: String;
    FDataMovimento: TDateTime;
    FCodigoEmpresa: Integer;
    FCompraID: Integer;
    FDataEntrada: TDateTime;
    procedure SetCodigoEmpresa(const Value: Integer);
    procedure SetDataMovimento(const Value: TDateTime);
    procedure SetOperador(const Value: String);
    procedure SetVendaID(const Value: Integer);
    procedure SetCompraID(const Value: Integer);
    procedure SetDataEntrada(const Value: TDateTime);
  published
  public
    property Operador : String read FOperador write SetOperador;
    property CompraID : Integer read FCompraID write SetCompraID;
    property DataMovimento : TDateTime read FDataMovimento write SetDataMovimento;
    property CodigoEmpresa : Integer read FCodigoEmpresa write SetCodigoEmpresa;
    property DataEntrada : TDateTime read FDataEntrada write SetDataEntrada;
end;

implementation

{ TItemEntrada }

procedure TItemEntrada.SetCodigoEmpresa(const Value: Integer);
begin
  FCodigoEmpresa := Value;
end;

procedure TItemEntrada.SetCompraID(const Value: Integer);
begin
  FCompraID := Value;
end;

procedure TItemEntrada.SetDataEntrada(const Value: TDateTime);
begin
  FDataEntrada := Value;
end;

procedure TItemEntrada.SetDataMovimento(const Value: TDateTime);
begin
  FDataMovimento := Value;
end;

procedure TItemEntrada.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TItemEntrada.SetVendaID(const Value: Integer);
begin

end;

end.
