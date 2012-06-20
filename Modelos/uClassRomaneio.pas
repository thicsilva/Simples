unit uClassRomaneio;

interface

type TRomaneio = class
  private
    FPesoL_total: Real;
    FData_Cadastro: TDatetime;
    FPesoB_Total: Real;
    FTotal: Real;
    FId: Integer;
    FData_movimento: TDatetime;
    FOperador: String;
    FData_Atualizacao: TDateTime;
    FCod_Emp: integer;
    FFuncionarioId: Integer;
    FQtde_vendas: Integer;
    procedure SetCod_Emp(const Value: integer);
    procedure SetData_Atualizacao(const Value: TDateTime);
    procedure SetData_Cadastro(const Value: TDatetime);
    procedure SetData_movimento(const Value: TDatetime);
    procedure SetId(const Value: Integer);
    procedure SetOperador(const Value: String);
    procedure SetPesoB_Total(const Value: Real);
    procedure SetPesoL_total(const Value: Real);
    procedure SetTotal(const Value: Real);
    procedure SetFuncionarioId(const Value: Integer);
    procedure SetQtde_vendas(const Value: Integer);
  published
   public
     property Id : Integer read FId write SetId;
     property Total : Real read FTotal write SetTotal;
     property PesoB_Total : Real read FPesoB_Total write SetPesoB_Total;
     property PesoL_total : Real read FPesoL_total write SetPesoL_total;
     property Data_Cadastro : TDatetime read FData_Cadastro write SetData_Cadastro;
     property Data_movimento : TDatetime read FData_movimento write SetData_movimento;
     property Data_Atualizacao : TDateTime read FData_Atualizacao write SetData_Atualizacao;
     property Operador : String read FOperador write SetOperador;
     property Cod_Emp : integer read FCod_Emp write SetCod_Emp;
     property FuncionarioId : Integer read FFuncionarioId write SetFuncionarioId;
     property Qtde_vendas : Integer read FQtde_vendas write SetQtde_vendas;
end;

implementation

{ TRomaneio }

procedure TRomaneio.SetCod_Emp(const Value: integer);
begin
  FCod_Emp := Value;
end;

procedure TRomaneio.SetData_Atualizacao(const Value: TDateTime);
begin
  FData_Atualizacao := Value;
end;

procedure TRomaneio.SetData_Cadastro(const Value: TDatetime);
begin
  FData_Cadastro := Value;
end;

procedure TRomaneio.SetData_movimento(const Value: TDatetime);
begin
  FData_movimento := Value;
end;

procedure TRomaneio.SetFuncionarioId(const Value: Integer);
begin
  FFuncionarioId := Value;
end;

procedure TRomaneio.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TRomaneio.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TRomaneio.SetPesoB_Total(const Value: Real);
begin
  FPesoB_Total := Value;
end;

procedure TRomaneio.SetPesoL_total(const Value: Real);
begin
  FPesoL_total := Value;
end;

procedure TRomaneio.SetQtde_vendas(const Value: Integer);
begin
  FQtde_vendas := Value;
end;

procedure TRomaneio.SetTotal(const Value: Real);
begin
  FTotal := Value;
end;

end.
