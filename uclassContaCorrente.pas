unit uclassContaCorrente;

interface

Type TContaCorrente = Class
   Private

      FHistorico: String;
      FValor: Double;
      FD_C: String;
      FDocumento: Integer;
      FCod_Cliente: integer;
      procedure SetCod_Cliente(const Value: integer);
      procedure SetD_C(const Value: String);
      procedure SetDocumento(const Value: Integer);
      procedure SetHistorico(const Value: String);
      procedure SetValor(const Value: Double);

   Public
      Property D_C : String read FD_C write SetD_C;
      Property Historico  : String read FHistorico write SetHistorico;
      Property Cod_Cliente : integer read FCod_Cliente write SetCod_Cliente;
      Property Documento : Integer read FDocumento write SetDocumento;
      Property Valor : Double read FValor write SetValor;

End;

implementation

{ TContaCorrente }

procedure TContaCorrente.SetCod_Cliente(const Value: integer);
begin
  FCod_Cliente := Value;
end;

procedure TContaCorrente.SetDocumento(const Value: Integer);
begin
  FDocumento := Value;
end;

procedure TContaCorrente.SetD_C(const Value: String);
begin
  FD_C := Value;
end;

procedure TContaCorrente.SetHistorico(const Value: String);
begin
  FHistorico := Value;
end;

procedure TContaCorrente.SetValor(const Value: Double);
begin
  FValor := Value;
end;

end.
