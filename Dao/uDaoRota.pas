unit uDaoRota;

interface

uses uClassconexao,DBClient;

type TDaoRota = class
  private
    FConexao : TConexao;
  public
    constructor Create(Conexao : TConexao);
    function  BuscarTodos : TClientDataSet;
end;

implementation

{ TDaoRotas }

function TDaoRota.BuscarTodos: TClientDataSet;
begin
   Result := FConexao.BuscarDadosSQL('Select * from T_Rotas order by descricao',Nil);
end;

constructor TDaoRota.Create(Conexao: TConexao);
begin
  FConexao := Conexao;
end;

end.
