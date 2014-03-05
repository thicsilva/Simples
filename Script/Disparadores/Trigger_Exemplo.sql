update T_Produtos set saldo=100
select * from T_movEstoque

select * from T_itensvendas


insert into T_itensvendas (SEqvenda,Cod_Produto,Qtde_Venda) Values
                          ( 39,1,10 )


Select * from T_Teste

select * from T_itensvendas

Select * 

DROP   TRIGGER BaixaEstoqueVeNda
GO
CREATE TRIGGER BaixaEstoqueVeNda
ON T_ItensVendas
INSTEAD OF INSERT
AS
BEGIN
        DECLARE Cod_Porduto CURSOR FOR ( SELECT Cod_Produto FROM Inserted )
        Go
	
        UPDATE T_Produtos set Saldo = Saldo-T_itensvendas.Qtde_Venda where Codigo=Cod_Porduto
        Go

        SET NOCOUNT ON
       
 	INSERT INTO T_MovEstoque
                   ( COD_EMP,COD_PRODUTO,DATA_CAD,DATA_MOV, E_S, OPERADOR, DOCUMENTO,
                     QTDE_BAIXA, ROTINA,SALDO_ANTERIOR, SALDO_POSTERIOR               ) 

	SELECT       '001',INSERTED.Cod_Produto,INSERTED.Data_cad,INSERTED.Data_Cad,'S',
                     INSERTED.Operador,INSERTED.Seqvenda,INSERTED.Qtde_Venda,'Venda de Mercadoria (T_itensvendas) ',(T_Produtos.Saldo+INSERTED.Qtde_Venda), 
                     T_Produtos.Saldo
	FROM INSERTED INNER JOIN T_Produtos
	ON INSERTED.Cod_Produto = T_Produtos.Codigo


	SET NOCOUNT OFF

END


