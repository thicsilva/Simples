delete from produtos where codigo is null

insert into T_produtos (codigo,Descricao,pco_custo,pco_CustoMedio,pco_venda,unid)
select Codigo, Produto,"Preço de Custo","Custo Médio","Preço de venda",Unidade from produtos

update T_produtos set Tipo_Produto=0,Cod_Grupo=1, saldo = 0
