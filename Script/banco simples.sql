if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Clientes_T_Atividades]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Clientes] DROP CONSTRAINT FK_T_Clientes_T_Atividades
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_ClientesBrindes_T_Clientes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_ClientesBrindes] DROP CONSTRAINT FK_T_ClientesBrindes_T_Clientes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_CtasReceber_T_Clientes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_CtasReceber] DROP CONSTRAINT FK_T_CtasReceber_T_Clientes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Ocorrencias_T_Clientes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Ocorrencias] DROP CONSTRAINT FK_T_Ocorrencias_T_Clientes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Vendas_T_Clientes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Vendas] DROP CONSTRAINT FK_T_Vendas_T_Clientes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_MovCaixa_T_FormasPagamento]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_MovCaixa] DROP CONSTRAINT FK_T_MovCaixa_T_FormasPagamento
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_PagamentosInformados_T_FormasPagamento]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_PagamentosInformados] DROP CONSTRAINT FK_T_PagamentosInformados_T_FormasPagamento
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Vendas_T_Funcionarios]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Vendas] DROP CONSTRAINT FK_T_Vendas_T_Funcionarios
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_MovCaixa_T_Operacoes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_MovCaixa] DROP CONSTRAINT FK_T_MovCaixa_T_Operacoes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Produtos_T_Operacoes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Produtos] DROP CONSTRAINT FK_T_Produtos_T_Operacoes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_ClientesBrindes_T_Produtos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_ClientesBrindes] DROP CONSTRAINT FK_T_ClientesBrindes_T_Produtos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_ItensVendas_T_Produtos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_ItensVendas] DROP CONSTRAINT FK_T_ItensVendas_T_Produtos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_Clientes_T_Rotas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_Clientes] DROP CONSTRAINT FK_T_Clientes_T_Rotas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_CtasReceber_T_Vendas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_CtasReceber] DROP CONSTRAINT FK_T_CtasReceber_T_Vendas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_ItensVendas_T_Vendas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_ItensVendas] DROP CONSTRAINT FK_T_ItensVendas_T_Vendas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_T_MovCaixa_T_Vendas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[T_MovCaixa] DROP CONSTRAINT FK_T_MovCaixa_T_Vendas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Atividades]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Atividades]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Auditoria]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Auditoria]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Clientes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Clientes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_ClientesBrindes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_ClientesBrindes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_CtasReceber]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_CtasReceber]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Ctaspagar]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Ctaspagar]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Entradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Entradas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_FormasPagamento]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_FormasPagamento]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Fornecedores]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Fornecedores]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Funcionarios]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Funcionarios]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Grupos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Grupos]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_ItensVendas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_ItensVendas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_MovCaixa]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_MovCaixa]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Ocorrencias]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Ocorrencias]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Operacoes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Operacoes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_PARAMETROS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_PARAMETROS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_PagamentosInformados]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_PagamentosInformados]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Produtos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Produtos]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Rotas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Rotas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_SEQUENCIAS]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_SEQUENCIAS]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Usuarios]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Usuarios]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_Vendas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_Vendas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_itensEntradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_itensEntradas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ademir]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ademir]
GO

CREATE TABLE [dbo].[T_Atividades] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Auditoria] (
	[Type] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[TableName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL ,
	[PK] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL ,
	[FieldName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL ,
	[OldValue] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL ,
	[NewValue] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL ,
	[UpdateDate] [datetime] NULL ,
	[UserName] [varchar] (128) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Clientes] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CNPJCPF] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[Endereco] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Bairro] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Cidade] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Telefone] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[celular] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Limite_Credito] [float] NULL ,
	[Status] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[ativo] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Atividade] [int] NULL ,
	[Cep] [char] (9) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Rota] [int] NULL ,
	[Qtde_PedAberto] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_ClientesBrindes] (
	[Sequencia] [int] NOT NULL ,
	[Cod_Cliente] [int] NULL ,
	[cod_Produto] [int] NULL ,
	[Qtde_Brinde] [float] NULL ,
	[Pco_Brinde] [float] NULL ,
	[data_Cad] [datetime] NULL ,
	[data_Atu] [datetime] NULL ,
	[Cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[vlr_Total] [float] NULL ,
	[Documento] [char] (11) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_CtasReceber] (
	[sequencia] [int] NULL ,
	[vlr_Areceber] [float] NULL ,
	[Historico] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Vencimento] [datetime] NULL ,
	[Data_Cad] [datetime] NULL ,
	[Cod_FormaPagamento] [int] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Cliente] [int] NULL ,
	[Documento] [char] (11) COLLATE Latin1_General_CI_AS NULL ,
	[seqvenda] [int] NULL ,
	[Data_Emissao] [datetime] NULL ,
	[Status] [int] NULL ,
	[vlr_Recebido] [float] NULL ,
	[vlr_Devolvido] [float] NULL ,
	[Vlr_Desconto] [float] NULL ,
	[vlr_Comissao] [float] NULL ,
	[tipo_Baixa] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[data_pagamento] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Ctaspagar] (
	[sequencia] [int] NOT NULL ,
	[Cod_Fornecedor] [smallint] NULL ,
	[Valor] [float] NULL ,
	[Historico] [nvarchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [smalldatetime] NULL ,
	[Data_Emissao] [smalldatetime] NULL ,
	[Data_vencimento] [smalldatetime] NULL ,
	[seqParCela] [smallint] NULL ,
	[Data_Atu] [smalldatetime] NULL ,
	[status] [smallint] NULL ,
	[Cod_TipoDespesa] [nvarchar] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Entradas] (
	[Codigo] [int] NOT NULL ,
	[SeqEntrada] [smallint] NULL ,
	[Cod_Fornecedor] [smallint] NULL ,
	[Vlr_Total] [float] NULL ,
	[Status] [nvarchar] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Entrada] [smalldatetime] NULL ,
	[Data_atu] [smalldatetime] NULL ,
	[Data_Cancel] [smalldatetime] NULL ,
	[Operador] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_FormasPagamento] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[TipoPagamento] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Prazo] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Fornecedores] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CNPJCPF] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[Endereco] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Bairro] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Cidade] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Telefone] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[celular] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Status] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[ativo] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (9) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Funcionarios] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CNPJCPF] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[Endereco] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Bairro] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Cidade] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Telefone] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[celular] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[ativo] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (9) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Supervisor] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Grupos] (
	[Codigo] [char] (4) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_ItensVendas] (
	[SeqVenda] [int] NULL ,
	[Cod_Produto] [int] NULL ,
	[Qtde_Venda] [int] NULL ,
	[pco_Venda] [float] NULL ,
	[Vlr_Total] [float] NULL ,
	[Complemento] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Vlr_Desconto] [float] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_MovCaixa] (
	[sequencia] [int] NOT NULL ,
	[Cod_TipoDespesa] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Caixa] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Valor] [float] NULL ,
	[Historico] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Lancamento] [datetime] NULL ,
	[D_C] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[SeqVenda] [int] NULL ,
	[Operador] [char] (30) COLLATE Latin1_General_CI_AS NULL ,
	[cod_FormaPagamento] [int] NULL ,
	[Turno] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[PrePagamento] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Estornado] [char] (1) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Ocorrencias] (
	[Cod_Cliente] [int] NULL ,
	[Ocorrencia] [varchar] (250) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Sequencia] [int] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Operacoes] (
	[Codigo] [char] (4) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[META] [float] NULL ,
	[SOMADESPESA] [nvarchar] (1) COLLATE Latin1_General_CI_AS NULL ,
	[data_cad] [datetime] NULL ,
	[Data_atu] [datetime] NULL ,
	[Tipo_Conta] [smallint] NULL ,
	[Operador] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Sequencia] [int] NOT NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_PARAMETROS] (
	[CHAVE] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[COD_EMP] [varchar] (3) COLLATE Latin1_General_CI_AS NULL ,
	[CODIGO] [smallint] NULL ,
	[DATA_ATU] [datetime] NULL ,
	[DATA_CAD] [datetime] NULL ,
	[DESCRICAO] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[ESTACAO] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[OPERADOR] [varchar] (20) COLLATE Latin1_General_CI_AS NULL ,
	[VALOR] [varchar] (255) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_PagamentosInformados] (
	[sequencia] [int] NULL ,
	[Cod_emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[data_cad] [datetime] NULL ,
	[data_Atu] [datetime] NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Turno] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[cod_Caixa] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_FormaPagamento] [int] NULL ,
	[data_Mov] [datetime] NULL ,
	[vlr_Informado] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Produtos] (
	[Codigo] [int] NOT NULL ,
	[Cod_Barras] [char] (13) COLLATE Latin1_General_CI_AS NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Tipo_Produto] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Pco_Venda] [float] NULL ,
	[Pco_Custo] [float] NULL ,
	[Pco_CustoMedio] [float] NULL ,
	[Cod_Operacao] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[M2] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Data_cad] [datetime] NULL ,
	[Data_Atu] [datetime] NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[unid] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Cod_Grupo] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[aliquota_ECF] [char] (3) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Rotas] (
	[Codigo] [int] NOT NULL ,
	[Descricao] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_Cad] [datetime] NULL ,
	[data_atu] [datetime] NULL ,
	[Cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[Operador] [varchar] (30) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_SEQUENCIAS] (
	[COD_EMP] [varchar] (3) COLLATE Latin1_General_CI_AS NULL ,
	[DATA_ATU] [datetime] NULL ,
	[DATA_CAD] [datetime] NULL ,
	[DATA_IMPORTACAO] [datetime] NULL ,
	[SEQUENCIA] [varchar] (10) COLLATE Latin1_General_CI_AS NULL ,
	[TIPO_SEQUENCIA] [varchar] (20) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Usuarios] (
	[Data_cad] [smalldatetime] NULL ,
	[Data_atu] [smalldatetime] NULL ,
	[Operador] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Descricao] [nvarchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[Codigo] [nvarchar] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Senha] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL ,
	[sequencia] [int] NOT NULL ,
	[acessos] [nvarchar] (150) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_Vendas] (
	[SeqVenda] [int] NOT NULL ,
	[Cod_Cliente] [int] NULL ,
	[Vlr_Total] [float] NULL ,
	[Status] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Situacao] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Data_venda] [datetime] NULL ,
	[Bordero] [int] NULL ,
	[Marca] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[Data_atu] [datetime] NULL ,
	[Data_Cancel] [datetime] NULL ,
	[vlr_Desconto] [float] NULL ,
	[Perc_comissao] [float] NULL ,
	[vlr_comissao] [float] NULL ,
	[Cod_Funcionario] [int] NULL ,
	[Operador] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Data_cad] [datetime] NULL ,
	[cod_Emp] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[vlr_DescProd] [float] NULL ,
	[Cod_FormaPagamento] [int] NULL ,
	[Tipo_Venda] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Controle] [varchar] (10) COLLATE Latin1_General_CI_AS NULL ,
	[NumeroCupom] [char] (6) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[T_itensEntradas] (
	[codigo] [int] NOT NULL ,
	[SeqEntrada] [smallint] NULL ,
	[Cod_Produto] [smallint] NULL ,
	[Qtde_Entrada] [float] NULL ,
	[pco_Entrada] [float] NULL ,
	[Vlr_Total] [float] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[ademir] (
	[Nome] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[cpf] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[endereco] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[bairro] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[cidade] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[uf] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[telefone] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[codigo] [int] IDENTITY (1, 1) NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[T_Atividades] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Atividades] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Clientes] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Clientes] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_T_Clientes] UNIQUE  NONCLUSTERED 
	(
		[CNPJCPF]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_ClientesBrindes] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_ClientesBrindes] PRIMARY KEY  CLUSTERED 
	(
		[Sequencia]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_FormasPagamento] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_FormasPagamento] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Fornecedores] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Fornecedores] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Funcionarios] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Funcionarios] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Grupos] WITH NOCHECK ADD 
	CONSTRAINT [PK_t_Grupos] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_ItensVendas] WITH NOCHECK ADD 
	CONSTRAINT [IX_T_ItensVendas] UNIQUE  NONCLUSTERED 
	(
		[SeqVenda],
		[Cod_Produto]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_MovCaixa] WITH NOCHECK ADD 
	CONSTRAINT [DF_T_MovCaixa_PrePagamento] DEFAULT ('N') FOR [PrePagamento],
	CONSTRAINT [DF_T_MovCaixa_Estornado] DEFAULT ('N') FOR [Estornado],
	CONSTRAINT [PK_T_MovCaixa] PRIMARY KEY  CLUSTERED 
	(
		[sequencia]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Ocorrencias] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Ocorrencias] PRIMARY KEY  CLUSTERED 
	(
		[Sequencia]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Operacoes] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Operacoes] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Produtos] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Produtos] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Rotas] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Rotas] PRIMARY KEY  CLUSTERED 
	(
		[Codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Vendas] WITH NOCHECK ADD 
	CONSTRAINT [PK_T_Vendas] PRIMARY KEY  CLUSTERED 
	(
		[SeqVenda]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[T_Clientes] ADD 
	CONSTRAINT [FK_T_Clientes_T_Atividades] FOREIGN KEY 
	(
		[Cod_Atividade]
	) REFERENCES [dbo].[T_Atividades] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_Clientes_T_Rotas] FOREIGN KEY 
	(
		[Cod_Rota]
	) REFERENCES [dbo].[T_Rotas] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_ClientesBrindes] ADD 
	CONSTRAINT [FK_T_ClientesBrindes_T_Clientes] FOREIGN KEY 
	(
		[Cod_Cliente]
	) REFERENCES [dbo].[T_Clientes] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_ClientesBrindes_T_Produtos] FOREIGN KEY 
	(
		[cod_Produto]
	) REFERENCES [dbo].[T_Produtos] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_CtasReceber] ADD 
	CONSTRAINT [FK_T_CtasReceber_T_Clientes] FOREIGN KEY 
	(
		[Cod_Cliente]
	) REFERENCES [dbo].[T_Clientes] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_CtasReceber_T_Vendas] FOREIGN KEY 
	(
		[seqvenda]
	) REFERENCES [dbo].[T_Vendas] (
		[SeqVenda]
	)
GO

ALTER TABLE [dbo].[T_ItensVendas] ADD 
	CONSTRAINT [FK_T_ItensVendas_T_Produtos] FOREIGN KEY 
	(
		[Cod_Produto]
	) REFERENCES [dbo].[T_Produtos] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_ItensVendas_T_Vendas] FOREIGN KEY 
	(
		[SeqVenda]
	) REFERENCES [dbo].[T_Vendas] (
		[SeqVenda]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_MovCaixa] ADD 
	CONSTRAINT [FK_T_MovCaixa_T_FormasPagamento] FOREIGN KEY 
	(
		[cod_FormaPagamento]
	) REFERENCES [dbo].[T_FormasPagamento] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_MovCaixa_T_Operacoes] FOREIGN KEY 
	(
		[Cod_TipoDespesa]
	) REFERENCES [dbo].[T_Operacoes] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_MovCaixa_T_Vendas] FOREIGN KEY 
	(
		[SeqVenda]
	) REFERENCES [dbo].[T_Vendas] (
		[SeqVenda]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_Ocorrencias] ADD 
	CONSTRAINT [FK_T_Ocorrencias_T_Clientes] FOREIGN KEY 
	(
		[Cod_Cliente]
	) REFERENCES [dbo].[T_Clientes] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_PagamentosInformados] ADD 
	CONSTRAINT [FK_T_PagamentosInformados_T_FormasPagamento] FOREIGN KEY 
	(
		[Cod_FormaPagamento]
	) REFERENCES [dbo].[T_FormasPagamento] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_Produtos] ADD 
	CONSTRAINT [FK_T_Produtos_T_Operacoes] FOREIGN KEY 
	(
		[Cod_Operacao]
	) REFERENCES [dbo].[T_Operacoes] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

ALTER TABLE [dbo].[T_Vendas] ADD 
	CONSTRAINT [FK_T_Vendas_T_Clientes] FOREIGN KEY 
	(
		[Cod_Cliente]
	) REFERENCES [dbo].[T_Clientes] (
		[Codigo]
	) ON UPDATE CASCADE ,
	CONSTRAINT [FK_T_Vendas_T_Funcionarios] FOREIGN KEY 
	(
		[Cod_Funcionario]
	) REFERENCES [dbo].[T_Funcionarios] (
		[Codigo]
	) ON UPDATE CASCADE 
GO

