USE [Aulas_BD]
GO
/****** Object:  Table [dbo].[Aluno]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aluno](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](90) NOT NULL,
	[telefones] [varchar](20) NULL,
	[idade] [int] NULL,
	[data_nascimento] [date] NULL,
	[turma_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[cidade_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cor] [varchar](30) NOT NULL,
	[placa] [varchar](8) NOT NULL,
	[ano_fabricacao] [int] NOT NULL,
	[preco] [numeric](10, 2) NOT NULL,
	[modelo_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cidade]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cidade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[estado_id] [char](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[sigla] [char](2) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sigla] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](30) NULL,
	[fabricante_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turma]    Script Date: 11/07/2025 14:12:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turma](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Aluno] ON 

INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (1, N'Clara', N'84988469627', 17, CAST(N'2007-12-17' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (2, N'Lucas', N'84999887766', 18, CAST(N'2006-08-25' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (3, N'Mariana', N'84999112233', 17, CAST(N'2007-05-14' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (4, N'João', N'84998765432', 18, CAST(N'2006-03-30' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (5, N'Isabela', N'84997654321', 17, CAST(N'2007-10-02' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (6, N'Pedro', N'84996543210', 18, CAST(N'2006-07-20' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (7, N'Ana', N'84995432109', 17, CAST(N'2007-11-08' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (8, N'Rafael', N'84994321098', 18, CAST(N'2006-01-19' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (9, N'Rafael', N'84994321098', 18, CAST(N'2006-01-19' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (10, N'Rafael', N'84994321098', 18, CAST(N'2006-01-19' AS Date), 1)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (11, N'Laura', N'84991098765', 17, CAST(N'2007-02-01' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (12, N'Gustavo', N'84990987654', 18, CAST(N'2006-12-05' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (13, N'Camila', N'84990876543', 17, CAST(N'2007-03-15' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (14, N'Thiago', N'84990765432', 18, CAST(N'2006-05-08' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (15, N'Manuela', N'84990654321', 17, CAST(N'2007-09-22' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (16, N'Eduardo', N'84990543210', 18, CAST(N'2006-06-18' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (17, N'Bruna', N'84990432109', 17, CAST(N'2007-04-04' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (18, N'Felipe', N'84990321098', 18, CAST(N'2006-11-30' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (19, N'Júlia', N'84990210987', 17, CAST(N'2007-07-11' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (20, N'André', N'84990109876', 18, CAST(N'2006-10-28' AS Date), 2)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (21, N'Sophia', N'84990098765', 17, CAST(N'2007-08-17' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (22, N'Henrique', N'84989987654', 18, CAST(N'2006-04-23' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (23, N'Letícia', N'84989876543', 17, CAST(N'2007-01-29' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (24, N'Bruno', N'84989765432', 18, CAST(N'2006-02-12' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (25, N'Gabriela', N'84989654321', 17, CAST(N'2007-05-07' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (26, N'Daniel', N'84989543210', 18, CAST(N'2006-07-01' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (27, N'Nicole', N'84989432109', 17, CAST(N'2007-10-14' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (28, N'Vinícius', N'84989321098', 18, CAST(N'2006-09-25' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (29, N'Lívia', N'84989210987', 17, CAST(N'2007-06-19' AS Date), 3)
INSERT [dbo].[Aluno] ([id], [nome], [telefones], [idade], [data_nascimento], [turma_id]) VALUES (30, N'Diego', N'84989109876', 18, CAST(N'2006-03-06' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Aluno] OFF
GO
SET IDENTITY_INSERT [dbo].[Bairro] ON 

INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (1, N'Ponta Negra', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (2, N'Lagoa Nova', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (3, N'Alecrim', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (4, N'Tirol', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (5, N'Cidade Alta', 1)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (6, N'Centro', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (7, N'Nova Betânia', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (8, N'Alto de São Manoel', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (9, N'Belo Horizonte', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (10, N'Santo Antônio', 2)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (11, N'Cohabinal', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (12, N'Rosa dos Ventos', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (13, N'Centro', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (14, N'Passagem de Areia', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (15, N'Monte Castelo', 3)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (16, N'Tambaú', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (17, N'Manaíra', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (18, N'Bessa', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (19, N'Cabo Branco', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (20, N'Valentina', 4)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (21, N'Gato Preto', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (22, N'Alto do Cruzeiro', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (23, N'Jardim Sorrilândia', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (24, N'Estação', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (25, N'Centro', 5)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (26, N'Centro', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (27, N'Roma', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (28, N'Tabuleiro', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (29, N'Matinhas', 6)
INSERT [dbo].[Bairro] ([id], [nome], [cidade_id]) VALUES (30, N'Chã de Oiti', 6)
SET IDENTITY_INSERT [dbo].[Bairro] OFF
GO
SET IDENTITY_INSERT [dbo].[Carro] ON 

INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (1, N'Prata', N'ABC1234', 2022, CAST(95000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (2, N'Branco', N'DEF5678', 2023, CAST(98000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (3, N'Preto', N'GHI9101', 2021, CAST(90000.00 AS Numeric(10, 2)), 1, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (4, N'Preto', N'JKL1122', 2022, CAST(180000.00 AS Numeric(10, 2)), 2, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (5, N'Branco', N'MNO3344', 2021, CAST(175000.00 AS Numeric(10, 2)), 2, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (6, N'Vermelho', N'PQR5566', 2023, CAST(185000.00 AS Numeric(10, 2)), 2, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (7, N'Cinza', N'STU7788', 2022, CAST(79000.00 AS Numeric(10, 2)), 3, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (8, N'Azul', N'VWX9900', 2023, CAST(83000.00 AS Numeric(10, 2)), 3, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (9, N'Preto', N'YZA1112', 2021, CAST(75000.00 AS Numeric(10, 2)), 3, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (10, N'Branco', N'BCD2233', 2022, CAST(70000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (11, N'Cinza', N'EFG4455', 2023, CAST(74000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (12, N'Vermelho', N'HIJ6677', 2021, CAST(68000.00 AS Numeric(10, 2)), 4, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (13, N'Preto', N'KLM8899', 2022, CAST(92000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (14, N'Branco', N'NOP0011', 2023, CAST(95000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (15, N'Azul', N'QRS2233', 2021, CAST(89000.00 AS Numeric(10, 2)), 5, 2)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (16, N'Branco', N'TUV4455', 2022, CAST(85000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (17, N'Prata', N'WXY6677', 2023, CAST(88000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (18, N'Preto', N'ZAB8899', 2021, CAST(81000.00 AS Numeric(10, 2)), 6, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (19, N'Vermelho', N'CDE1122', 2022, CAST(75000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (20, N'Branco', N'FGH3344', 2023, CAST(78000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (21, N'Azul', N'IJK5566', 2021, CAST(72000.00 AS Numeric(10, 2)), 7, 1)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (22, N'Prata', N'LMN7788', 2022, CAST(160000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (23, N'Preto', N'OPQ9900', 2023, CAST(165000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (24, N'Branco', N'RST1112', 2021, CAST(158000.00 AS Numeric(10, 2)), 8, 3)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (25, N'Cinza', N'UVW2233', 2022, CAST(88000.00 AS Numeric(10, 2)), 9, 4)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (26, N'Branco', N'XYZ4455', 2023, CAST(91000.00 AS Numeric(10, 2)), 9, 4)
INSERT [dbo].[Carro] ([id], [cor], [placa], [ano_fabricacao], [preco], [modelo_id], [categoria_id]) VALUES (27, N'Preto', N'ABC6677', 2021, CAST(85000.00 AS Numeric(10, 2)), 9, 4)
SET IDENTITY_INSERT [dbo].[Carro] OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (1, N'Hatch')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (2, N'Sedã')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (3, N'Picape')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (4, N'Utilitário')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Cidade] ON 

INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (1, N'Natal', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (2, N'Mossoró', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (3, N'Parnamirim', N'RN')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (4, N'João Pessoa', N'PB')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (5, N'Sousa', N'PB')
INSERT [dbo].[Cidade] ([id], [nome], [estado_id]) VALUES (6, N'Bananeiras', N'PB')
SET IDENTITY_INSERT [dbo].[Cidade] OFF
GO
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'PB', N'Paraíba')
INSERT [dbo].[Estado] ([sigla], [nome]) VALUES (N'RN', N'Rio Grande do Norte')
GO
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (1, N'Toyota')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (2, N'Volkswagen')
INSERT [dbo].[Fabricante] ([id], [descricao]) VALUES (3, N'Chevrolet')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
GO
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (1, N'Corolla', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (2, N'Hilux', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (3, N'Yaris', 1)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (4, N'Gol', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (5, N'Virtus', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (6, N'Saveiro', 2)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (7, N'Onix', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (8, N'S10', 3)
INSERT [dbo].[Modelo] ([id], [descricao], [fabricante_id]) VALUES (9, N'Spin', 3)
SET IDENTITY_INSERT [dbo].[Modelo] OFF
GO
SET IDENTITY_INSERT [dbo].[Turma] ON 

INSERT [dbo].[Turma] ([id], [nome]) VALUES (1, N'Infoweb')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (2, N'Geologia')
INSERT [dbo].[Turma] ([id], [nome]) VALUES (3, N'Administração')
SET IDENTITY_INSERT [dbo].[Turma] OFF
GO
ALTER TABLE [dbo].[Aluno]  WITH CHECK ADD FOREIGN KEY([turma_id])
REFERENCES [dbo].[Turma] ([id])
GO
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD FOREIGN KEY([cidade_id])
REFERENCES [dbo].[Cidade] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([categoria_id])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD FOREIGN KEY([modelo_id])
REFERENCES [dbo].[Modelo] ([id])
GO
ALTER TABLE [dbo].[Cidade]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[Estado] ([sigla])
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD FOREIGN KEY([fabricante_id])
REFERENCES [dbo].[Fabricante] ([id])
GO
