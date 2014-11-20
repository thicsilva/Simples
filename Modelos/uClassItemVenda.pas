unit uClassItemVenda;

interface

type TItemVenda = class
  private
    FVendaID: Integer;
    FOperador: String;
    FDataMovimento: TDateTime;
    FCodigoEmpresa: Integer;
    FTipoCalculo: Integer;
    FSetorId: Integer;
    FTotal: Real;
    FPrecoVenda: Real;
    FProdutoId: Integer;
    FFuncionarioId: Integer;
    FPrecoTabela: Real;
    FQunatidade: Real;
    procedure SetCodigoEmpresa(const Value: Integer);
    procedure SetDataMovimento(const Value: TDateTime);
    procedure SetOperador(const Value: String);
    procedure SetVendaID(const Value: Integer);
    procedure SetFuncionarioId(const Value: Integer);
    procedure SetPrecoTabela(const Value: Real);
    procedure SetPrecoVenda(const Value: Real);
    procedure SetProdutoId(const Value: Integer);
    procedure SetQunatidade(const Value: Real);
    procedure SetSetorId(const Value: Integer);
    procedure SetTipoCalculo(const Value: Integer);
    procedure SetTotal(const Value: Real);
  published
  public
    property Operador : String read FOperador write SetOperador;
    property VendaID : Integer read FVendaID write SetVendaID;
    property DataMovimento : TDateTime read FDataMovimento write SetDataMovimento;
    property CodigoEmpresa : Integer read FCodigoEmpresa write SetCodigoEmpresa;
    property ProdutoId : Integer read FProdutoId write SetProdutoId;
    property Qunatidade : Real read FQunatidade write SetQunatidade;
    Property PrecoVenda : Real read FPrecoVenda write SetPrecoVenda;
    property PrecoTabela : Real read FPrecoTabela write SetPrecoTabela;
    property Total : Real read FTotal write SetTotal;
    property SetorId : Integer read FSetorId write SetSetorId;
    property TipoCalculo : Integer read FTipoCalculo write SetTipoCalculo;
    property FuncionarioId : Integer read FFuncionarioId write SetFuncionarioId;
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

procedure TItemVenda.SetFuncionarioId(const Value: Integer);
begin
  FFuncionarioId := Value;
end;

procedure TItemVenda.SetOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TItemVenda.SetPrecoTabela(const Value: Real);
begin
  FPrecoTabela := Value;
end;

procedure TItemVenda.SetPrecoVenda(const Value: Real);
begin
  FPrecoVenda := Value;
end;

procedure TItemVenda.SetProdutoId(const Value: Integer);
begin
  FProdutoId := Value;
end;

procedure TItemVenda.SetQunatidade(const Value: Real);
begin
  FQunatidade := Value;
end;

procedure TItemVenda.SetSetorId(const Value: Integer);
begin
  FSetorId := Value;
end;

procedure TItemVenda.SetTipoCalculo(const Value: Integer);
begin
  FTipoCalculo := Value;
end;

procedure TItemVenda.SetTotal(const Value: Real);
begin
  FTotal := Value;
end;

procedure TItemVenda.SetVendaID(const Value: Integer);
begin
  FVendaID := Value;
end;

end.
