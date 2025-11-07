-- >>  EXERCÍCIO 2  << --

--  TABELA  --

CREATE TABLE Veiculo(
	id int identity not null,
	fabricante varchar(60) not null,
	modelo varchar(60) not null,
	ano_fabricacao int not null,
	placa char(8) not null,
	uf char(2) not null
	primary key (id)
)

--  TRIGGER  --

CREATE TRIGGER validar_dados_veiculo on Veiculo
for insert, update
as
	declare @fabricante varchar(60)
	declare @modelo varchar(60)
	declare @ano int
	declare @placa char(8)
	declare @uf char(2)

	select @fabricante = fabricante,
		   @modelo = modelo,
		   @ano = ano_fabricacao,
		   @placa = placa,
		   @uf = uf
	from inserted

	-- validar FABRICANTE em branco ou somente com espaços
	if ( ltrim(@fabricante) = '' )
		begin
			rollback transaction
			raiserror ('O FABRICANTE não pode ser vazio', 0, 0, 0, 0, 0)
		end

	-- validar MODELO em branco ou somente com espaços
	if ( ltrim(@modelo) = '' )
		begin
			rollback transaction
			raiserror ('O MODELO não pode ser vazio', 0, 0, 0, 0, 0)
		end