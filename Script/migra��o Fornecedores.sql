delete from T_fornecedores
alter table T_fornecedores add insc_Estadual varchar(20)
sp_Help T_Fornecedores

select * from T_clientes

Select count(codigo) from T_Fornecedores_pro group by Codigo
order by 1 desc

--select *  from T_Clientes where len(cnpjcpf)>11

insert into T_fornecedores (Codigo,Descricao,cnpjcpf,endereco,bairro,cidade,uf,
                            cep,Telefone,Celular,Fax,Tipo_Fornecedor,Contato,Insc_Estadual,Email)
select  Col001,
        substring(col002,1,50),
        substring(col003,1,14),
        substring(col006+','+col007+' '+col008,1,50),
        substring(col009,1,30),
        substring(col010,1,30),
        substring(col011,1,2),
        substring(col012,1,9),
        SubsTring(col013,1,13),
        SubsTring(col014,1,13),
        SubsTring(' ',1,13),
        SubsTring(' ',1,30),
        SubsTring(col028,1,30),
        SubsTring(col004,1,20),
        SubsTring(col017,1,50)
 from T_fornecedores_art

 

--update t_Fornecedores_pro set cgc_cpf=substring(cgc_cpf,1,3)+substring(cgc_cpf,5,3)+substring(cgc_cpf,9,3)+substring(cgc_cpf,13,2)
--where len(cgc_cpf)=14

--update t_Fornecedores_pro set cgc_cpf=substring(cgc_cpf,1,2)+substring(cgc_cpf,4,3)+substring(cgc_cpf,8,3)+substring(cgc_cpf,12,4)+substring(cgc_cpf,17,2)
--where len(cgc_cpf)=18


select * from T_fornecedores_art