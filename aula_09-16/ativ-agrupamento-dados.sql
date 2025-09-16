-- 1: Quais são os 5 produtos mais vendidos? 
--    Usar o campo Quantity de Order Details

select top (5)
	p.NomeProduto as Produto,
	sum(d.Quantidade) as Total

	from DetalhesPedido d
	INNER JOIN Produtos p
		ON p.ProdutoID = d.ProdutoID

	group by p.NomeProduto
	order by sum(d.Quantidade) desc, p.NomeProduto asc


-- 2: Quais são os 3 países para os quais a empresa
--    mais vende? Usar o campo ShipCountry de Orders.

select top(3)
	 PaisEntrega as Pais,
	 count(PaisEntrega) as Quantidade

	 from Pedidos
	 group by PaisEntrega
	 order by count(PaisEntrega) desc
	

select * from Pedidos