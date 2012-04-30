DROP TRIGGER BaixaEstoqueVenda_Setor
GO

CREATE TRIGGER BaixaEstoqueVenda_Setor
ON T_ItensVendas
after INSERT
AS

DECLARE @parCod_Produto VARCHAR(5)
DECLARE @parQtde_venda Integer
DECLARE @SetorId int

DECLARE ItensVendas CURSOR FOR ( SELECT SetorId, COD_PRODUTO, QTDE_VENDA FROM INSERTED )
BEGIN

   OPEN ItensVendas
   FETCH NEXT FROM ItensVendas INTO @SetorId, @parCod_Produto,@parQtde_Venda
   WHILE @@FETCH_STATUS = 0
   BEGIN
      UPDATE SaldosSetor set Saldo = Saldo-@parQtde_Venda where ProdutoId=@parCod_Produto and SetorId=@SetorId
      FETCH NEXT FROM ItensVendas INTO @SetorId, @parCod_Produto,@parQtde_Venda
   END 
   CLOSE ItensVendas
   DEALLOCATE ItensVendas

   SET NOCOUNT ON

   INSERT INTO T_MOVESTOQUE
               ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                 QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR,SetorId     ) 
   SELECT       '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_CAD,'S',
                 INSERTED.OPERADOR,INSERTED.SEQVENDA,INSERTED.QTDE_VENDA,'VENDA DE MERCADORIA (T_ITENSVENDAS) ',(Estoque.SALDO+INSERTED.QTDE_VENDA), 
                 Estoque.SALDO,INSERTED.SetorID
   FROM INSERTED 
        INNER JOIN SaldosSetor Estoque on Estoque.ProdutoId=INSERTED.COD_PRODUTO and Estoque.SetorId=INSERTED.SetorID  

   SET NOCOUNT OFF
END


