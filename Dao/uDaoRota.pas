unit uDaoRota;

interface

uses uClassconexao,DBClient,Classes,SysUtils,uClassRota;

type TDaoRota = class
  private
    FConexao : TConexao;
  public
    constructor Create(Conexao : TConexao);
    function  BuscarTodos : TClientDataSet;
    function  BuscarClientesDarota(RotaId : Integer) : TClientDataSet;
    function  BuscarPorId(prRotaId : Integer ) : TRota;
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

function TDaoRota.BuscarPorId(prRotaId: Integer): TRota;
var lstParametros : TStringList;
    Rota : TRota;
    Dados : TClientDataSet;
begin
   Rota := TRota.Create;
   lstParametros := TStringList.Create;
   lstParametros.add(IntToStr(prRotaId));
   Dados := FConexao.BuscarDadosSQL('Select * from T_Rotas where codigo=:parcodigo',lstParametros);
   if not Dados.IsEmpty then
   begin
      Rota.Id := Dados.FieldByName('Codigo').AsInteger;
      Rota.Descricao := Dados.FieldByName('Descricao').AsString;
   end;
   Result := Rota
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
