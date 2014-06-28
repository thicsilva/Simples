unit uDaoGrade;


interface

uses dbClient,uClassConexao, SqlExpr, SysUtils;

type TDaoGrade = class

  private
      FConexao : TConexao;
      fsqlModific : TSqlQuery;
  public
     Constructor Create(Conexao : TConexao);
     procedure NovaGrade(NomeGrade : String; cdsItensGrade : TclientDataSet; GradeID : Integer );
     procedure ApagarGrade(Gradeid : Integer);
     function RetornarGradeId(NomeGrade : String) : Integer;
     function BuscarTodos : tClientDataSet;

end;


implementation

{ TDaoGrade }

procedure TDaoGrade.ApagarGrade(Gradeid: Integer);
begin
   FConexao.Conection.ExecuteDirect('Delete from ItensGrade where GradeId=('+QuotedStr(IntToStr(Gradeid))+')');
end;

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

procedure TDaoGrade.NovaGrade(NomeGrade: String; cdsItensGrade: TclientDataSet; GradeID : Integer);
var liGradeId : Integer;
begin
   if GradeID<>0 then
      FConexao.Conection.ExecuteDirect('Update Grade set Descricao='+QuotedStr(NomeGrade)+' where ID='+IntToStr(GradeId))
   else
      FConexao.Conection.ExecuteDirect('Insert into Grade (Descricao) Values ('+QuotedStr(NomeGrade)+')');

   liGradeId := RetornarGradeId(NomeGrade);

   while not cdsItensGrade.Eof do
   begin
      if cdsItensGrade.FieldByName('Id').AsString='0' then
      begin
         fsqlModific.Close;
         fsqlModific.Sql.Text := 'Insert into ItensGrade (GradeId,Tamanho,CaminhoImagemFrente,CaminhoImagemVerso) values '+
                                 '                       (:parGradeId,:parTamanho,:parCaminhoImagemFrente,:parCaminhoImagemVerso) ';
         fsqlModific.close;
         fsqlModific.ParamByName('parGradeId').AsInteger := liGradeId;
      end
      else
      Begin
         fsqlModific.Close;
         fsqlModific.Sql.Text := 'update ItensGrade set Tamanho=:parTamanho,CaminhoImagemFrente=:parCaminhoImagemFrente, '+
                                 '                      CaminhoImagemVerso=:parCaminhoImagemVerso where Id=:parId ';
         fsqlModific.close;
         fsqlModific.ParamByName('parId').AsInteger := cdsItensGrade.FieldByName('Id').AsInteger;
      End;
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
