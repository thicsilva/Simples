unit cl_TCadastros;

interface

uses cl_tConexao,Classes, SqlExpr ;

Type TCadastros = Class(Tconexao)

   Private

      FCod_emp: String;
      FData_cad: TDateTime;
      FOperador: String;
      FData_Atu: TDateTime;
      FData_Mov: TDateTime;
      FQryPersisteDados : TSqlQuery;

      procedure setCod_Emp(const Value: String);
      procedure setData_Atu(const Value: TDateTime);
      procedure setData_cad(const Value: TDateTime);
      procedure setOperador(const Value: String);
      procedure setData_Mov(const Value: TDateTime);
    procedure SetQryPersisteDados(const Value: TSqlQuery);

   Protected


   public

      Property cod_emp  : String Read FCod_emp write setCod_Emp ;
      Property Data_cad : TDateTime Read FData_cad write setData_cad ;
      Property Data_Atu : TDateTime Read FData_Atu write setData_Atu ;
      Property Data_Mov : TDateTime Read FData_Mov write setData_Mov ;
      Property Operador : String Read FOperador write setOperador ;
      Property QryPersisteDados : TSqlQuery Read FQryPersisteDados  write SetQryPersisteDados;

      Constructor Create(aowner : TComponent);
      destructor destroy;

   published

End;

implementation

uses
  SysUtils;

{ TCadastros }

constructor TCadastros.Create(aowner: TComponent);
begin
   inherited create;

end;

destructor TCadastros.destroy;
begin
end;

procedure TCadastros.setCod_Emp(const Value: String);
begin
  FCod_emp := Value;
end;

procedure TCadastros.setData_Atu(const Value: TDateTime);
begin
  FData_Atu := Value;
end;

procedure TCadastros.setData_cad(const Value: TDateTime);
begin
  FData_cad := Value;
end;

procedure TCadastros.setData_Mov(const Value: TDateTime);
begin
  FData_Mov := Value;
end;

procedure TCadastros.setOperador(const Value: String);
begin
  FOperador := Value;
end;

procedure TCadastros.SetQryPersisteDados(const Value: TSqlQuery);
begin
  FQryPersisteDados := Value;
end;

end.
