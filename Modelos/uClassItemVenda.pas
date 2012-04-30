unit uClassItemVenda;

interface

type TItemVenda = class
  private
    FVendaID: Integer;
    FOperador: String;
    FDataMovimento: TDateTime;
    FCodigoEmpresa: Integer;
    procedure SetCodigoEmpresa(const Value: Integer);
    procedure SetDataMovimento(const Value: TDateTime);
    procedure SetOperador(const Value: String);
    procedure SetVendaID(const Value: Integer);
  published
  public
    property Operador : String read FOperador write SetOperador;
    property VendaID : Integer read FVendaID write SetVendaID;
    property DataMovimento : TDateTime read FDataMovimento write SetDataMovimento;
    property CodigoEmpresa : Integer read FCodigoEmpresa write SetCodigoEmpresa;
end;

implementation

{ TItemVenda }

procedure TItemVenda.SetCodigoEmpresa(const Value: Integer);
begin
  FCodigoEmpresa := Value;
end;

procedure TItemVenda.SetDataMovimento(const Value: TDateTime);
begin
  FDataMovimento := Value;
end;

procedure TItemVenda.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TItemVenda.SetVendaID(const Value: Integer);
begin
  FVendaID := Value;
end;

end.
