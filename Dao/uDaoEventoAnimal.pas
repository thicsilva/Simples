unit uDaoEventoAnimal;

interface

uses uClassConexao, SqlExpr, uClassEventoAnimal,DBClient,Classes,SysUtils,SqlTimSt;

type TDaoEventoAnimal = class

  private
    FConexao : TConexao;
    FQueryModific : TSqlQuery;
  public
    Constructor Create(Conexao : TConexao );
    procedure incluir(EventoAnimal : TEventoAnimal);
    function BuscarEvento(AnimalID : Integer) : TClientDataSet;
    procedure Excluir(prEventoId : Integer);
    procedure RealizarEvento(prEventoId : integer; prOperador : String);
    function AgendaPendente : TClientDataSet;
end;

implementation

{ TDaoEventoAnimal }

function TDaoEventoAnimal.AgendaPendente: TClientDataSet;
Var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  Parametros.add(FormatDatetime('dd/mm/yyyy',Now));
  Result:= FConexao.BuscarDadosSQL(' Select Cli.Codigo,cli.Descricao,Animais.NomeAnimal,'+
                                   '         Animais.Especie,Animais.Raca,Eventos.Evento, '+
                                   '         Eventos.Data_Agendada,Eventos.EventoId '+
                                   'From EventosAnimais Eventos '+
                                   '     left join ClienteAnimais animais on Animais.AnimalId = Eventos.AnimalId '+
                                   '     left join T_clientes Cli on Cli.Codigo=Animais.ClienteId where Eventos.Data_Agendada<=:parData_Agendada and Data_Realizada is null',
                                   Parametros );
end;

function TDaoEventoAnimal.BuscarEvento(AnimalID: Integer): TClientDataSet;
Var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  Parametros.add(IntToStr(AnimalID));
  Result:= FConexao.BuscarDadosSQL('Select * from EventosAnimais where AnimalId=:parAnimalId order by data_agendada',Parametros);
end;

constructor TDaoEventoAnimal.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FQueryModific := TSqlQuery.Create(Nil);
end;

procedure TDaoEventoAnimal.Excluir(prEventoId : Integer);
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := FConexao.Conection;
   FQueryModific.Sql.Text := 'Delete from EventosAnimais where eventoId=:parEventoId ';
   FQueryModific.ParamByName('parEventoId').AsInteger := prEventoId;
   FQueryModific.ExecSQL;
end;

procedure TDaoEventoAnimal.incluir(EventoAnimal : TEventoAnimal);
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := FConexao.Conection;
   FQueryModific.Sql.Text := 'Insert into EventosAnimais '+
                             '( AnimalId,Evento,Data_Cadastro,Data_Agendada,Operador) Values '+
                             '( :parAnimalId,:parEvento,:parData_Cadastro,:parData_Agendada,:parOperador)';
   FQueryModific.ParamByName('parAnimalId').Asinteger := EventoAnimal.AnimalId;
   FQueryModific.ParamByName('parEvento').AsString := EventoAnimal.Evento;
   FQueryModific.ParamByName('parOperador').AsString := EventoAnimal.Operador;
   FQueryModific.ParamByName('parData_Cadastro').AsSQLTimeStamp := DateTimeToSqlTimeStamp(EventoAnimal.Data_Cadastro);
   FQueryModific.ParamByName('parData_Agendada').AsSQLTimeStamp := DateTimeToSqlTimeStamp(EventoAnimal.Data_Agendada);
   FQueryModific.ExecSQL;
end;

procedure TDaoEventoAnimal.RealizarEvento(prEventoId: integer; prOperador : String);
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := FConexao.Conection;
   FQueryModific.Sql.Text := 'update EventosAnimais set Data_realizada=:parData_Realizada, operador=:parOperador where eventoId=:parEventoId ';
   FQueryModific.ParamByName('parEventoId').AsInteger := prEventoId;
   FQueryModific.ParamByName('parData_Realizada').AsSQLTimeStamp := DateTimeToSqlTimeStamp(now);
   FQueryModific.ParamByName('parOperador').AsString := prOperador;
   FQueryModific.ExecSQL;
end;

end.
