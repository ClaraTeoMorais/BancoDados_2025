SELECT 
	m.uf as UF,
	COUNT(DISTINCT(c.id_campus)) as quantidade

	from Campus c
	INNER JOIN Municipio m
		ON m.id_municipio = c.id_municipio

	group by m.uf
	order by m.uf asc