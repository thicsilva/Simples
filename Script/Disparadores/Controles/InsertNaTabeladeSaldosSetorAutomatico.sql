CREATE TRIGGER InsertSaldosSetores
ON T_Produtos
AFTER INSERT
AS
BEGIN
   SET NOCOUNT ON
       insert into SaldosSetor 
                  ( ProdutoId,SetorId,saldo ) 
                     select Codigo,2,0 from T_produtos 
                            where codigo not in ( select ProdutoId from SaldosSetor )    
   SET NOCOUNT OFF
END

