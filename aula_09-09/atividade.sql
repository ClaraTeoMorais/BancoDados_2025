-- Atividade 1 --

-- 1
SELECT COUNT(*) From Clientes

-- 2
SELECT COUNT(*) From Produtos

-- 3
SELECT COUNT(Fax) From Clientes

-- 4
SELECT DISTINCT(Cidade) From Clientes


-- Atividade 2 --

-- 1
SELECT DISTINCT(Pais) From Clientes
	order by Pais
	-- tinha ficado faltando o "order by"

-- 2
SELECT COUNT(Pais) From Clientes
	WHERE Pais = 'Spain'

-- 3
SELECT COUNT(UnidadesEmEstoque) From Produtos
	WHERE UnidadesEmEstoque <= 10

-- 4 
SELECT COUNT(DISTINCT(prod.UnidadesEmEstoque)) as qnt_produtos
	From Produtos prod
	INNER JOIN Categorias cat
		ON cat.CategoriaID = prod.CategoriaID
	WHERE UnidadesEmEstoque <= 6
	and prod.CategoriaID = 2

-- 5
SELECT AVG(PrecoUnitario) From Produtos
	WHERE CategoriaID = 3

-- 6
SELECT SUM(Quantidade) From DetalhesPedido
	WHERE ProdutoID = 70
-- tinha colocado count, mas era sum

-- 7
SELECT 
	COUNT(Quantidade) as total_vendas, 
	SUM(Quantidade) as total_itens_vendidos,
	AVG(Quantidade) as media_produtos_vendidos,
	MIN(Quantidade) as menor_venda,
	MAX(Quantidade) as maior_venda
	FROM DetalhesPedido
	WHERE ProdutoID = 22

-- 8
SELECT COUNT (PaisEntrega) From Pedidos
	WHERE PaisEntrega in ('Brazil', 'France', 'Germany')

-- 9
SELECT SUM (PaisEntrega) From Pedidos
	WHERE PaisEntrega = 'Brazil'
-- tinha colocado count, mas era sum

-- 10
SELECT COUNT(*) From DetalhesPedido
	WHERE ProdutoID = 1
	and Quantidade >= 20


select * From Produtos
select * from Categorias
select * from Pedidos
select * from DetalhesPedido
