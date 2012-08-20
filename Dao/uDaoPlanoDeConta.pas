unit uDaoPlanoDeConta;

interface

uses uclassConexao,DBClient;

type TDaoPlanoDeConta = class
  private
    FConexao : TConexao;
  public
    constructor create(Conexao : TConexao);
    function RetornarDespesas : TClientDataSet;
end;


implementation

{ TDaoPlanoDeConta }

constructor TDaoPlanoDeConta.create(Conexao: TConexao);
begin

end;

function TDaoPlanoDeConta.RetornarDespesas: TClientDataSet;
begin

end;

end.
