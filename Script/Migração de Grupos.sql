select * from T_Grupos_Pro


insert into T_grupos (Codigo, Descricao)
select Codigo,nome from T_grupos_Pro