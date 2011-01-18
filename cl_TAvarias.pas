unit cl_TAvarias;

interface

uses cl_TCadastros, DBClient, classes , forms, SqlExpr, Provider ;

Type TAvarias = Class (TCadastros)

   Private
    FMotivo_Avaria: String;
    Fcod_Funcionario: Integer;
    FSeqAvarias: Integer;
    FVlr_Total: Double;
    procedure Gravar;

   Protected

    procedure SetCod_Funcionario(const Value: Integer);
    procedure SetMotivo_Avaria(const Value: String);
    procedure SetSeqAvarias(const Value: Integer);
    procedure SetVlr_total(const Value: Double);
    function Getcod_Funcionario: Integer;
    function GetMotivo_Avaria: String;
    function GetSeqAvarias: Integer;
    function GetVlr_Total: Double;


   public

    Property Cod_Funcionario : Integer Read Getcod_Funcionario Write SetCod_Funcionario ;
    Property SeqAvaria       : Integer Read GetSeqAvarias Write SetSeqAvarias ;
    Property Motivo_Avaria   : String Read GetMotivo_Avaria Write SetMotivo_Avaria ;
    Property Vlr_Total       : Double  Read GetVlr_Total Write SetVlr_total;

    Procedure Salvar;

    Constructor Create;



End;

implementation

uses
  SysUtils;

{ TAvarias }

constructor TAvarias.Create;
begin
   inherited create(Application);

end;

function TAvarias.Getcod_Funcionario: Integer;
begin
    Result := FCod_Funcionario;
end;

function TAvarias.GetMotivo_Avaria: String;
begin
   Result := FMotivo_Avaria;
end;

function TAvarias.GetSeqAvarias: Integer;
begin
   Result := fSeqAvarias;
end;

function TAvarias.GetVlr_Total: Double;
begin
   Result := FVlr_Total ;
end;

procedure TAvarias.Gravar;
begin

end;

procedure TAvarias.Salvar;
var  ldspPersisteDados : TDataSetProvider;
     lCdsPersisteDados : TClientDataSet;
begin

   Try

     //qryPersisteDados := TSqlQuery.Create(Application);
     qryPersisteDados.SQLConnection := conection;
     qryPersisteDados.SQL.Text      := 'Select * from T_Avarias where 1=2';

     ldspPersisteDados.DataSet       := qryPersisteDados;
     ldspPersisteDados.name          := 'ldspBuscaDados';

     lcdsPersisteDados.ProviderName  := ldspPersisteDados.Name;
     lcdsPersisteDados.Open;

     lcdsPersisteDados.Append;
     lcdsPersisteDados.FieldByName('Cod_Funcionario').AsInteger := Getcod_Funcionario;
     lcdsPersisteDados.FieldByName('SeqAvarias').AsInteger      := GetSeqAvarias;
     lcdsPersisteDados.FieldByName('Motivo_Avaria').AsString    := GetMotivo_Avaria;
     lcdsPersisteDados.FieldByName('Vlr_total').AsFloat         := GetVlr_Total;
     lcdsPersisteDados.Post;
     lcdsPersisteDados.ApplyUpdates(0);

   Finally

     FreeAndNil(lcdsPersisteDados);
     FreeAndNil(ldspPersisteDados);

   End;



end;

procedure TAvarias.SetCod_Funcionario(const Value: Integer);
begin
  Fcod_Funcionario := Value;
end;

procedure TAvarias.SetMotivo_Avaria(const Value: String);
begin
  FMotivo_Avaria := Value;
end;

procedure TAvarias.SetSeqAvarias(const Value: Integer);
begin
  FSeqAvarias := Value;
end;

procedure TAvarias.SetVlr_total(const Value: Double);
begin
  FVlr_Total := Value;
end;

end.
