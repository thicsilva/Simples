if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[T_MovCaixa]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[T_MovCaixa]
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

ALTER TABLE [dbo].[T_MovCaixa] WITH NOCHECK ADD 
	CONSTRAINT [DF_T_MovCaixa_PrePagamento] DEFAULT ('N') FOR [PrePagamento],
	CONSTRAINT [DF_T_MovCaixa_Estornado] DEFAULT ('N') FOR [Estornado],
	CONSTRAINT [PK_T_MovCaixa] PRIMARY KEY  CLUSTERED 
	(
		[sequencia]
	)  ON [PRIMARY] 
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

