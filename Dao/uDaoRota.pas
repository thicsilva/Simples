unit uDaoRota;

interface

uses uClassconexao,DBClient,Classes,SysUtils;

type TDaoRota = class
  private
    FConexao : TConexao;
  public
    constructor Create(Conexao : TConexao);
    function  BuscarTodos : TClientDataSet;
    function  BuscarClientesDarota(RotaId : Integer) : TClientDataSet;
end;

implementation

{ TDaoRotas }

function TDaoRota.BuscarClientesDarota(RotaId: Integer): TClientDataSet;
var Parametros : TStringList;
begin
   Parametros := TStringList.Create;
   Parametros.Add(IntToStr(RotaId));
   Result := FConexao.BuscarDadosSQL(' Select Codigo,Descricao,Bairro,Cidade,SequenciaEntrega'+
                                     ' from T_Clientes where Cod_Rota=:parod_Rota order by SequenciaEntrega',Parametros);
end;

function TDaoRota.BuscarTodos: TClientDataSet;
begin
   Result := FConexao.BuscarDadosSQL('Select * from T_Rotas order by descricao',Nil);
end;

constructor TDaoRota.Create(Conexao: TConexao);
begin
  FConexao := Conexao;
end;

end.
