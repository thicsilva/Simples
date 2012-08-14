unit uDaoClienteAnimal;

interface

uses uClassConexao,DbClient,Classes,SysUtils,uClassAnimal, SqlExpr,SqlTimSt;

type TDaoClienteAnimal = class
   private
     FQueryModific : TSqlQuery;
     FConexao : TConexao;
   public
     constructor create(Conexao : TConexao);
     function BucarAnimalCliente(ClienteId : Integer) : TClientDataSet;
     function BuscarTodos: TClientDataSet;
     procedure Inserir(Animal : TAnimal);

end;
implementation

{ TDaoClinteAnimal }

function TDaoClienteAnimal.BucarAnimalCliente(ClienteId: Integer): TClientDataSet;
Var Parametros : TStringList;
begin
  Parametros := TStringList.Create;
  Parametros.add(IntToStr(ClienteId));
  Result:= FConexao.BuscarDadosSQL('Select * from ClienteAnimais where ClienteId=:parClienteId',Parametros);
end;

function TDaoClienteAnimal.BuscarTodos: TClientDataSet;
Var Parametros : TStringList;
begin
   Result:= FConexao.BuscarDadosSQL('Select * from ClienteAnimais order by nomeanimal',Nil);
end;

constructor TDaoClienteAnimal.create(Conexao: TConexao);
begin
   FConexao := Conexao;
   FQueryModific := TSqlQuery.Create(Nil);
end;

procedure TDaoClienteAnimal.Inserir(Animal: TAnimal);
begin
  FQueryModific.Close;
  FQueryModific.SQLConnection := FConexao.Conection;
  if Animal.id=0 then
  begin
     FQueryModific.Sql.Text := 'Insert into ClienteAnimais '+
                               '( NomeAnimal,Especie,Raca,Cor,Data_Nascimento, '+
                               '  CaminhoImagem,Operador,Data_Cadastro,Data_Aquisicao,'+
                               '  ClienteId ) Values '+
                               '( :parNomeAnimal, :parEspecie, :parRaca, :parCor, :parData_Nascimento, '+
                               '  :parCaminhoImagem, :parOperador, :parData_Cadastro, '+
                               '  :parData_Aquisicao, :parClienteId )';
     FQueryModific.PAramByName('parData_Cadastro').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Animal.Data_Cadastro);
  end
  else
  begin
     FQueryModific.Sql.Text := 'update ClienteAnimais set '+
                               '  NomeAnimal =:parNomeAnimal, Especie =:parEspecie,Raca =:parRaca, '+
                               '  Cor =:parCor,Data_Nascimento =:parData_Nascimento, '+
                               '  CaminhoImagem =:parCaminhoImagem,Operador =:parOperador,'+
                               '  Data_Aquisicao=:parData_Aquisicao where  ClienteId=:parClienteId and AnimalId=:parAnimalId ';
     FQueryModific.PAramByName('parAnimalId').AsInteger := Animal.ID;
  end;



  FQueryModific.PAramByName('parNomeAnimal').AsString := Animal.Nome;
  FQueryModific.PAramByName('parEspecie').AsString := Animal.Especie;
  FQueryModific.PAramByName('parRaca').AsString := Animal.Raca;
  FQueryModific.PAramByName('parCor').AsString := Animal.Cor;
  FQueryModific.PAramByName('parData_Nascimento').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Animal.Data_Nascmento);

  FQueryModific.PAramByName('parData_Aquisicao').AsSQLTimeStamp := DateTimeToSqlTimeStamp(Animal.Data_Aquisicao);
  FQueryModific.PAramByName('parClienteId').AsInteger := Animal.ClienteId;
  FQueryModific.PAramByName('parCaminhoImagem').AsString := Animal.CaminhoImagem;
  FQueryModific.PAramByName('parOperador').AsString := Animal.Operador;
  FQueryModific.ExecSQL;
end;

end.
