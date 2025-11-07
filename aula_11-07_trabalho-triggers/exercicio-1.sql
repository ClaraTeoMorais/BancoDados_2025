-- >>  EXERCÍCIO 1  << --

--  TABELA  --

CREATE TABLE Cliente(
	id int identity not null,
	nome varchar(100) not null,
	data_nascimento date not null,
	cpf char(14) not null,
	primary key (id)
)

--  TRIGGER  --

CREATE TRIGGER validar_dados_cliente on Cliente
for insert, update
as
	declare @nome varchar(100)
	declare @nasc date
	declare @cpf char(14)

	select @nome = nome,
		   @nasc = data_nascimento,
		   @cpf = cpf
	from inserted

	-- validar NOME em branco ou somente com espaços
	if ( ltrim(@nome) = '' )
		begin
			rollback transaction
			raiserror ('O NOME não pode ser vazio', 0, 0, 0)
		end

	-- validar DATA DE NASCIMENTO
	if ( @nasc > getdate() )
		begin 
			rollback transaction
			raiserror ('A DATA DE NASCIMENTO não pode ser maior que o dia atual', 0, 0, 0)
		end
