SELECT 
	m.uf as UF,
	COUNT(DISTINCT(c.id_campus)) as quantidade

	from Campus c
	INNER JOIN Municipio m
		ON m.id_municipio = c.id_municipio

	group by m.uf
	order by m.uf asc

SELECT top (15)
	m.nome as municipio,
	m.uf as uf,
	COUNT(c.id_campus) as quantidade

	from Campus c
	INNER JOIN Municipio m
		ON m.id_municipio = c.id_municipio

	group by m.nome, m.uf
	order by COUNT(c.id_campus) desc, m.nome asc