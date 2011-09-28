unit DaoSupervisor;

interface
uses uClassconexao, DBClient;
type
  TDaoSupervisor = class
    private
      FConexao : TConexao;
    public
      constructor Create(conexao : TConexao);
      function BuscarTodos : TClientDataSet;
  end;


implementation

{ TSupervisor }

function TDaoSupervisor.BuscarTodos: TClientDataSet;
begin
   Result := FConexao.BuscarDadosSQL('select * from T_Funcionarios where Codigo in (Select Cod_Supervisor from T_funcionarios where cod_Supervisor is not null)',nil);
end;

constructor TDaoSupervisor.Create(conexao: TConexao);
begin
  FConexao := Conexao;
end;

end.
