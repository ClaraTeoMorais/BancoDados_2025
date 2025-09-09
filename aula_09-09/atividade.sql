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

-- 2
SELECT COUNT(Pais) From Clientes
	WHERE Pais = 'Spain'

-- 3
SELECT COUNT(UnidadesEmEstoque) From Produtos
	WHERE UnidadesEmEstoque <= 10

-- 4    COMO FAZ ESSA????
SELECT COUNT(UnidadesEmEstoque) From Produtos
	WHERE UnidadesEmEstoque <= 6
	and CategoriaID = 2

-- 5


select * From Produtos
select * from Categorias
