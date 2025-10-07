-- EXERCÍCIO 1 --

drop view if exists view_uf;
go

create view view_uf as
	select 
		distinct(uf) as UF
		from Municipio

go

select * from view_uf
	order by UF


drop view if exists view_enade;
go


-- EXERCÍCIO 2 --

create view view_enade as
	select 
		a.descricao as area,
		c.nome as curso,
		AVG(coc.enade) as media_enade

		from Cursos_Oferecidos_por_Campus as coc
		inner join Curso c
			on c.id_curso = coc.id_curso
		inner join Area a
			on a.id_area = coc.id_area

		group by a.descricao, c.nome
		having AVG(coc.enade) >= 3

go

select * from view_enade
	order by area, curso