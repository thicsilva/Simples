unit uDaoFuncionario;


interface

uses DBClient,SysUtils,
     uClassConexao,uClassFuncionario,Classes;

type TDaoFuncionario = class
   private
     FConexao : TConexao;
   public
     Constructor Create(Conexao : TConexao);
     function Buscar( idFuncionario : Integer ) : TFuncionario;
     function BuscarTodos : TClientDataSet;

end;
implementation

{ TDaoFuncionario }

function TDaoFuncionario.Buscar(idFuncionario: Integer): TFuncionario;
var Dados : TclientDataSet;
    Funcionario : TFuncionario;
    parametros : TStringList;
begin
    parametros := TStringList.Create;
    Parametros.Add(IntToStr(idFuncionario));
    Dados := FConexao.BuscarDadosSQL('Select * from T_Funcionarios where Codigo=:parcodigo',Parametros);
    Funcionario := TFuncionario.Create;
    Funcionario.IdFuncionario := Dados.FieldByName('Codigo').AsInteger;
    Funcionario.Descricao     := Dados.FieldByName('Descricao').AsString;
    Result := Funcionario;
end;

function TDaoFuncionario.BuscarTodos: TClientDataSet;
begin
  Result := FConexao.BuscarDadosSQL('Select * from T_Funcionarios order by Descricao',Nil);
end;

constructor TDaoFuncionario.Create(Conexao: TConexao);
begin
  Fconexao := Conexao;
end;

end.
