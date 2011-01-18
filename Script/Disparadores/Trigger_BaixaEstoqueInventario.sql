USE [Simples]
GO
/****** Object:  Trigger [BaixaEstoqueEntrada]    Script Date: 01/31/2009 15:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [BaixaEstoqueInventario]
ON [dbo].[T_itensInventario]
AFTER INSERT
AS

DECLARE @parCod_Produto Integer
DECLARE @parQtde_Entrada Integer
DECLARE @parPco_Entrada float

DECLARE ItensProduto CURSOR FOR ( SELECT Cod_Produto, Diferenca, pco_Venda FROM INSERTED )
BEGIN

   OPEN ItensProduto
   FETCH NEXT FROM ItensProduto INTO @parCod_Produto,@parQtde_Entrada,@parPco_Entrada
   WHILE @@FETCH_STATUS = 0
   BEGIN
      UPDATE T_Produtos set Saldo = Saldo+@parQtde_Entrada, Pco_Compra=@ParPco_Entrada where Codigo=@parCod_Produto AND TIPO_PRODUTO<>'1'
      FETCH NEXT FROM ItensProduto INTO @parCod_Produto,@parQtde_Entrada,@parPco_Entrada
   END 
   CLOSE ItensProduto
   DEALLOCATE ItensProduto

   SET NOCOUNT ON

   INSERT INTO T_MOVESTOQUE
               ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                 QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR               ) 
   SELECT        '001',INSERTED.COD_PRODUTO,INSERTED.DATA_CAD,INSERTED.DATA_MOV,'E',
                 INSERTED.OPERADOR,INSERTED.SEQInventario,INSERTED.Diferenca,'ENTRDADA DE INVENTARIO ',(T_PRODUTOS.SALDO-INSERTED.Diferenca),
                 T_PRODUTOS.SALDO
   FROM INSERTED INNER JOIN T_PRODUTOS
   ON INSERTED.COD_PRODUTO = T_PRODUTOS.CODIGO AND T_PRODUTOS.TIPO_PRODUTO<>'1'

   SET NOCOUNT OFF
END



