unit cl_TConexao;

interface

uses DBXpress,SqlExpr,Forms,IniFiles, SysUtils;

  Type TConexao = Class

     Private

       Fconection : TSQLConnection;

    Public

       Procedure  Conectar;

       Property conection : TSQLConnection read Fconection ;

   Constructor Create;

  End;

implementation

{ TConexao }

procedure TConexao.Conectar;
var lsPath : String;
     gsParametros : TIniFile;
begin

   lspath := ExtractFilePath( ParamStr( 0 ) );
   If Copy( lspath, Length(lspath), 1) <> '\' Then
     lspath := lspath+'\';
   gsParametros := TIniFile.Create(lspath+'Config.ini');

   Fconection.Close;
   Fconection.DriverName                   := 'MSSQL';
   Fconection.LibraryName                  := 'dbxmss30.dll';
   Fconection.LoginPrompt                  :=  False;
   Fconection.Params.Values[ 'HostName' ]  := gsParametros.ReadString('ACESSODADOS','HostName','(Local)');
   Fconection.Params.Values[ 'DataBase' ]  := gsParametros.ReadString('ACESSODADOS','DataBaseName','Controler');
   Fconection.Params.Values[ 'User_Name' ] := gsParametros.ReadString('ACESSODADOS','Usuario','Controler');
   Fconection.Params.Values[ 'Password' ]  := gsParametros.ReadString('ACESSODADOS','Senha','remoto');
   Fconection.Params.Values[ 'DriverName' ]:= 'MSSQL';
   Fconection.LoginPrompt := False;
   Fconection.Open;

end;

constructor TConexao.Create;
begin
   Fconection := TSQLConnection.Create(application);
   Conectar;
end;

end.
