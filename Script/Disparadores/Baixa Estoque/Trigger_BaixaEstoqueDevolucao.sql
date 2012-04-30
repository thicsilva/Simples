SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

alter TRIGGER BaixaEstoqueDevolucao
ON T_ItensDevolucoes
after INSERT
AS

DECLARE @parCod_Produto VARCHAR(5)
DECLARE @parQtde_Devolvida Integer
DECLARE @SetorId int

DECLARE ItensDevolucoes CURSOR FOR ( SELECT SetorId, COD_PRODUTO, QTDE_DEVOLVIDA FROM INSERTED )
BEGIN

   OPEN ItensDevolucoes
   FETCH NEXT FROM ItensDevolucoes INTO @SetorId, @parCod_Produto,@parQtde_Devolvida
   WHILE @@FETCH_STATUS = 0
   BEGIN
      if @SetorId = 1
      BEGIN
         UPDATE T_Produtos set Saldo = Saldo+@parQtde_Devolvida where Codigo=@parCod_Produto 
  
         SET NOCOUNT ON

         INSERT INTO T_MOVESTOQUE
                     ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                       QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR               ) 
         SELECT        '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_CAD,'E',
                       INSERTED.OPERADOR,INSERTED.SEQVENDA,INSERTED.QTDE_DEVOLVIDA,'DEVOLUCAO DE VENDA', (T_PRODUTOS.SALDO-INSERTED.QTDE_DEVOLVIDA), 
                       T_PRODUTOS.SALDO
         FROM INSERTED INNER JOIN T_PRODUTOS
         ON INSERTED.COD_PRODUTO = T_PRODUTOS.CODIGO
      END
      FETCH NEXT FROM ItensDevolucoes INTO @SetorId, @parCod_Produto,@parQtde_Devolvida
   END 
   CLOSE ItensDevolucoes
   DEALLOCATE ItensDevolucoes

   SET NOCOUNT OFF
END




GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

