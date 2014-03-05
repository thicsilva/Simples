alter table T_clientes add Fax char(13)
sp_Help T_clientes

select * from T_clientes

Select * from T_clientes_pro

--select *  from T_Clientes where len(cnpjcpf)>11

insert into T_clientes (Codigo,Descricao,Razao_Social,cnpjcpf,endereco,bairro,cidade,uf,cep,Telefone,Celular,Fax)
select  Cliente,
        substring(Nome,1,50),
        substring(Nome,1,50),
        substring(cgc,1,14),
        substring(Endereco+','+numero+' '+Complement,1,50),
        substring(Bairro,1,30),
        substring(municipio,1,30),
        substring(UF,1,2),
        substring(cep,1,9),
        SubsTring(telefone,1,13),
        SubsTring(telefone,1,13),
        SubsTring(Fax,1,13)
--        SubsTring(Ref_Entrega,1,50)
 from T_clientes_art where cgc<>''

select count(cgc), Cgc from T_clientes_art group by cgc
order by 1 desc

--update t_clientes_pro set cgc_cpf=substring(cgc_cpf,1,3)+substring(cgc_cpf,5,3)+substring(cgc_cpf,9,3)+substring(cgc_cpf,13,2)
--where len(cgc_cpf)=14

--update t_clientes_pro set cgc_cpf=substring(cgc_cpf,1,2)+substring(cgc_cpf,4,3)+substring(cgc_cpf,8,3)+substring(cgc_cpf,12,4)+substring(cgc_cpf,17,2)
--where len(cgc_cpf)=18

delete  from T_clientes

sp_help T_clientes