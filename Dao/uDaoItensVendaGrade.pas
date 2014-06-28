unit uDaoItensVendaGrade;

interface

uses uClassConexao,DbClient, SqlExpr, SysUtils;

type TDaoItensVendaGrade = class
  private
    FConexao : TConexao;
    FQueryModific : TSqlQuery;
  public
     Constructor Create(Conexao : TConexao);
     procedure InserirItens(ItensVendaGrade: TClientDataSet; IdVenda : Integer );
     procedure AtualizaQtdeProduzida(ItenGradeId, IdVenda, ProdutoId: Integer; QtdeProduzida : Real);
     procedure AtualizaQtdeProduto( VendaId : Integer );


end;

implementation


{ TDaoItensVendaGrade }


procedure TDaoItensVendaGrade.AtualizaQtdeProduto(VendaId: Integer);
var Data : TClientDataSet;
begin
   Data := FConexao.BuscarDadosSQL('select ProdutoId, Sum(QtdeProduzida) as Total from ItensVendaGrade where VendaId='+IntToStr(VendaId)+' '+
                                   ' group by ProdutoId  ',Nil);
   while not data.eof do
   begin
      FQueryModific.Close;
      FQueryModific.SQLConnection := Fconexao.Conection;
     // FQueryModific.Sql.Text := 'update ItensVendas set Qtde_Venda = :parQtde_Venda '+
     //                           'where VendaId='+IntToStr(IdVenda)+' and ProdutoId='+IntToStr(ProdutoId)+' and ItenGradeId='+IntToStr(ItenGradeId);
     // FQueryModific.ParamByName('parQtdeProduzida').AsFloat := QtdeProduzida;
      FQueryModific.ExecSql;

   end;
end;

procedure TDaoItensVendaGrade.AtualizaQtdeProduzida(ItenGradeId, IdVenda, ProdutoId: Integer; QtdeProduzida : Real);
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := Fconexao.Conection;
   FQueryModific.Sql.Text := 'update ItensVendaGrade set QtdeProduzida =:parQtdeProduzida '+
                             'where VendaId='+IntToStr(IdVenda)+' and ProdutoId='+IntToStr(ProdutoId)+' and ItenGradeId='+IntToStr(ItenGradeId);
   FQueryModific.ParamByName('parQtdeProduzida').AsFloat := QtdeProduzida;
   FQueryModific.ExecSql;
end;

constructor TDaoItensVendaGrade.Create(Conexao: TConexao);
begin
  Fconexao := Conexao;
  FQueryModific := TSqlQuery.Create(Nil);
end;

procedure TDaoItensVendaGrade.InserirItens(ItensVendaGrade: TClientDataSet; IdVenda : Integer );
begin
   FQueryModific.Close;
   FQueryModific.SQLConnection := Fconexao.Conection;
   FQueryModific.Sql.Text := 'insert into ItensVendaGrade ( ProdutoId, ItenGradeId, QtdeSolicitada, VendaId ) Values '+
                             '                            ( :parProdutoId, :parItenGradeId, :parQtdeSolicitada, :parVendaId )';
   FQueryModific.Prepared := True;
   ItensVendaGrade.Filtered := False;
   ItensVendaGrade.First;
   while not ItensVendaGrade.eof do
   begin
      FQueryModific.close;
      FQueryModific.ParamByName('parProdutoId').AsInteger      := ItensVendaGrade.FieldByname('IDProduto').AsInteger;
      FQueryModific.ParamByName('parItenGradeId').AsInteger    := ItensVendaGrade.FieldByname('ItenGradeId').AsInteger;
      FQueryModific.ParamByName('parVendaId').AsInteger        := IdVenda;
      FQueryModific.ParamByName('parQtdeSolicitada').AsFloat   := ItensVendaGrade.FieldByname('Qtde').AsFloat;
      FQueryModific.ExecSql;
      ItensVendaGrade.Next;
   end;
end;

end.
