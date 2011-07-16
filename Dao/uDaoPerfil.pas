unit uDaoPerfil;

interface
uses uClassPerfil,uClassConexao,uAmbienteSistema, SysUtils,SqlTimSt;

type
  TDaoPerfil = class
    private
      Fconexao : TConexao;
    public
      procedure Incluir(Perfil : TPerfil);

      Constructor Create (Conexao : TConexao);
  end;

implementation

uses
  SqlExpr;

{ TDaoPerfil }

constructor TDaoPerfil.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
end;

procedure TDaoPerfil.Incluir(Perfil: TPerfil);
var QueryPerfil : TSqlQuery;
begin
   QueryPerfil := TSqlQuery.Create(nil);
   QueryPerfil.SqlConnection := fConexao.conection;
   QueryPerfil.SQL.Text := 'Insert Into T_Perfil (Cod_Emp,Data_Cad,Data_Atu,Descricao Values ' +
                           '                      :parCod_Emp,:parData_Cad,:parData_Atu,:parDescricao )';
   QueryPerfil.ParamByName('parCod_Emp').AsString         := Perfil.CodigoEmpresa;
   QueryPerfil.ParamByName('parData_Cad').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(now);
   QueryPerfil.ParamByName('parData_Mov').AsSQLTimeStamp  := DateTimeToSQLTimeStamp(TAmbienteSistema.RetornarDataDoMovimento);
   QueryPerfil.ParamByName('parDescricao').AsString       := Perfil.Descricao;
   QueryPerfil.ExecSQL;
end;

end.
