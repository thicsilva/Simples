unit uClassContaReceber;

interface

type TContaReceber = class
  private
    FVlr_Recebido: Real;
    FData_Pagamento: TdateTime;
    FVlr_Desconto: Real;
    FDocumento: String;
    FStatus: Integer;
    FOperador: String;
    FData_Atu: TDateTime;
    FTipo_Baixa: String;
    procedure SetData_Atu(const Value: TDateTime);
    procedure SetData_Pagamento(const Value: TdateTime);
    procedure SetDocumento(const Value: String);
    procedure SetOperador(const Value: String);
    procedure SetStatus(const Value: Integer);
    procedure SetTipo_Baixa(const Value: String);
    procedure SetVlr_Desconto(const Value: Real);
    procedure SetVlr_Recebido(const Value: Real);
  published
   public
   property Documento : String read FDocumento write SetDocumento;
   property Data_Pagamento : TdateTime read FData_Pagamento write SetData_Pagamento;
   property Data_Atu : TDateTime read FData_Atu write SetData_Atu;
   property Operador : String read FOperador write SetOperador;
   property Status : Integer read FStatus write SetStatus;
   property Tipo_Baixa : String read FTipo_Baixa write SetTipo_Baixa;
   property Vlr_Desconto : Real read FVlr_Desconto write SetVlr_Desconto;
   property Vlr_Recebido : Real read FVlr_Recebido write SetVlr_Recebido;



end;


implementation

{ TContaReceber }

procedure TContaReceber.SetData_Atu(const Value: TDateTime);
begin
  FData_Atu := Value;
end;

procedure TContaReceber.SetData_Pagamento(const Value: TdateTime);
begin
  FData_Pagamento := Value;
end;

procedure TContaReceber.SetDocumento(const Value: String);
begin
  FDocumento := Value;
end;

procedure TContaReceber.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TContaReceber.SetStatus(const Value: Integer);
begin
  FStatus := Value;
end;

procedure TContaReceber.SetTipo_Baixa(const Value: String);
begin
  FTipo_Baixa := Value;
end;

procedure TContaReceber.SetVlr_Desconto(const Value: Real);
begin
  FVlr_Desconto := Value;
end;

procedure TContaReceber.SetVlr_Recebido(const Value: Real);
begin
  FVlr_Recebido := Value;
end;

end.
