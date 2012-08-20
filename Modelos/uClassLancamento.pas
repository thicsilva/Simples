unit uClassLancamento;

interface

type TLancamento = class
  private
    FHistorico: String;
    FSeqVenda: Integer;
    FTroco: Real;
    FCod_tipoDespesa: String;
    FValor: Real;
    FD_C: String;
    FData_Lancamento: TDateTime;
    FSeqeuencia: Integer;
    FOperador: String;
    FCod_FormaPagamento: Integer;
    FCod_Caixa: Integer;
    FSequencia: String;
    procedure SetCod_Caixa(const Value: Integer);
    procedure SetCod_FormaPagamento(const Value: Integer);
    procedure SetCod_tipoDespesa(const Value: String);
    procedure SetD_C(const Value: String);
    procedure SetData_Lancamento(const Value: TDateTime);
    procedure SetHistorico(const Value: String);
    procedure SetOperador(const Value: String);
    procedure SetSeqeuencia(const Value: Integer);
    procedure SetSeqVenda(const Value: Integer);
    procedure SetTroco(const Value: Real);
    procedure SetValor(const Value: Real);
    procedure SetSequencia(const Value: String);
  public
    property Cod_Caixa : Integer read FCod_Caixa write SetCod_Caixa;
    property Troco : Real read FTroco write SetTroco;
    property Valor : Real read FValor write SetValor;
    property Historico : String read FHistorico write SetHistorico;
    property Data_Lancamento : TDateTime read FData_Lancamento write SetData_Lancamento;
    property D_C : String read FD_C write SetD_C;
    property SeqVenda : Integer read FSeqVenda write SetSeqVenda;
    property Cod_tipoDespesa : String read FCod_tipoDespesa write SetCod_tipoDespesa;
    property Seqeuencia : Integer read FSeqeuencia write SetSeqeuencia;
    property Cod_FormaPagamento : Integer read FCod_FormaPagamento write SetCod_FormaPagamento;
    property Operador : String read FOperador write SetOperador;
    property Sequencia : String read FSequencia write SetSequencia;
end;

implementation

{ TLancamento }

procedure TLancamento.SetCod_Caixa(const Value: Integer);
begin
  FCod_Caixa := Value;
end;

procedure TLancamento.SetCod_FormaPagamento(const Value: Integer);
begin
  FCod_FormaPagamento := Value;
end;

procedure TLancamento.SetCod_tipoDespesa(const Value: String);
begin
  FCod_tipoDespesa := Value;
end;

procedure TLancamento.SetData_Lancamento(const Value: TDateTime);
begin
  FData_Lancamento := Value;
end;

procedure TLancamento.SetD_C(const Value: String);
begin
  FD_C := Value;
end;

procedure TLancamento.SetHistorico(const Value: String);
begin
  FHistorico := Value;
end;

procedure TLancamento.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TLancamento.SetSeqeuencia(const Value: Integer);
begin
  FSeqeuencia := Value;
end;

procedure TLancamento.SetSequencia(const Value: String);
begin
  FSequencia := Value;
end;

procedure TLancamento.SetSeqVenda(const Value: Integer);
begin
  FSeqVenda := Value;
end;

procedure TLancamento.SetTroco(const Value: Real);
begin
  FTroco := Value;
end;

procedure TLancamento.SetValor(const Value: Real);
begin
  FValor := Value;
end;

end.

