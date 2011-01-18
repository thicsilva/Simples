sp_Help T_produtos
alter table T_Produtos add complemento varchar(150)
Select * from T_Produtos

select len(obs1), * from T_produtos_Pro 

insert into T_produtos (Codigo,Descricao,Cod_Grupo,Cod_Barras,pco_Venda,Pco_Custo,unid,Aliquota_ECF,Complemento)
Select  Codigo, nome, codigo_GRupo, Codigo_Barra, pco_Venda,Pco_Custo,medida,codigo_Tributo,
 OBs1+' '+OBS2 From T_produtos_Pro