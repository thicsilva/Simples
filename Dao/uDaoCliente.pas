unit uDaoCliente;

interface

uses uClassconexao,uClassCliente,
     Classes,DBClient,SysUtils;

type TDaoCliente = class
   private
     FConexao : TConexao;
   public
     Constructor Create( conexao : TConexao);
     function Buscar(idCliente : Integer) : TCliente;
end;


implementation

{ TDaoCliente }

function TDaoCliente.Buscar(idCliente: Integer): TCliente;
var Cliente : TCliente;
    Parametros : TStringList;
    Dados : TClientDataSet;
begin
  Cliente := TCliente.Create;
  Parametros := TStringList.Create;
  Parametros.ADD(IntToStr(idCliente));
  Try
     Dados := FConexao.BuscarDadosSQL('Select * from T_clientes where Codigo=:parcodigo',Parametros);
     Cliente.Id := Dados.FieldByName('Codigo').AsInteger;
     Cliente.CPF := Dados.FieldByName('CNPJCPF').AsString;
     Cliente.Descricao := Dados.FieldByName('Descricao').AsString;
     Result := Cliente;
  Finally
    FreeandNil(Dados);
    FreeandNil(Parametros);
  End;

end;

constructor TDaoCliente.Create(conexao: TConexao);
begin
  Fconexao := conexao;
end;

end.
