unit uDaoGrade;


interface

uses dbClient,uClassConexao, SqlExpr, SysUtils;

type TDaoGrade = class

  private
      FConexao : TConexao;
      fsqlModific : TSqlQuery;
  public
     Constructor Create(Conexao : TConexao);
     procedure NovaGrade(NomeGrade : String; cdsItensGrade : TclientDataSet);
     function RetornarGradeId(NomeGrade : String) : Integer;
     function BuscarTodos : tClientDataSet;

end;


implementation

{ TDaoGrade }

function TDaoGrade.BuscarTodos : tClientDataSet;
begin
   Result := fConexao.BuscarDadosSQL('Select id as Codigo,Descricao from Grade ',Nil);
end;

constructor TDaoGrade.Create(Conexao: TConexao);
begin
   FConexao := Conexao;
   fsqlModific := TSqlQuery.Create(Nil);
   fsqlModific.SQLConnection := fConexao.Conection;
end;

procedure TDaoGrade.NovaGrade(NomeGrade: String; cdsItensGrade: TclientDataSet);
var liGradeId : Integer;
begin
   FConexao.Conection.ExecuteDirect('Insert into Grade (Descricao) Values ('+QuotedStr(NomeGrade)+')');
   liGradeId := RetornarGradeId(NomeGrade);
   cdsItensGrade.First;
   fsqlModific.Sql.Text := 'Insert into ItensGrade (GradeId,Tamanho,CaminhoImagemFrente,CaminhoImagemVerso) values '+
                           '                       (:parGradeId,:parTamanho,:parCaminhoImagemFrente,:parCaminhoImagemVerso) ';
   while not cdsItensGrade.Eof do
   begin
     fsqlModific.close;
     fsqlModific.ParamByName('parGradeId').AsInteger := liGradeId;
     fsqlModific.ParamByName('parTamanho').AsString  := cdsItensGrade.FieldByName('Tamanho').AsString;
     fsqlModific.ParamByName('parCaminhoImagemFrente').AsString  := cdsItensGrade.FieldByName('CaminhoImagemFrente').AsString;
     fsqlModific.ParamByName('parCaminhoImagemVerso').AsString  := cdsItensGrade.FieldByName('CaminhoImagemVerso').AsString;
     fsqlModific.ExecSQL;
     cdsItensGrade.Next;
   end;
end;


function TDaoGrade.RetornarGradeId(NomeGrade: String): Integer;
begin
   Result := fConexao.BuscarDadosSQL('Select Id from Grade where descricao='+QuotedStr(NomeGrade),Nil).FieldByName('ID').AsInteger;
end;

end.
