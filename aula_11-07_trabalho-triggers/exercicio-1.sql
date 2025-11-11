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

	-- validar CPF
	if ( @cpf like '%[^0-9.-]%' )
        begin
			rollback transaction
			raiserror ('O CPF possui caracteres inválidos.', 0, 0, 0)
		end

	if ( @cpf not like '[0-9][0-9][0-9].[0-9][0-9][0-9].[0-9][0-9][0-9]-[0-9][0-9]' )
		begin
			rollback transaction
			raiserror ('O formato do CPF é inválido.', 0, 0, 0);
		end

--  TESTES  --

INSERT INTO Cliente (nome, data_nascimento, cpf)
VALUES ('Amanda Lara', '2007-06-22', '123.456.789-00');

INSERT INTO Cliente (nome, data_nascimento, cpf)
VALUES ('   ', '2007-06-22', '123.456.789-00'); -- Nome vazio

INSERT INTO Cliente (nome, data_nascimento, cpf)
VALUES ('Clara Teodósio', '2100-12-16', '123.456.789-00'); -- Data de nascimento inválida

INSERT INTO Cliente (nome, data_nascimento, cpf)
VALUES ('Clara Teodósio', '2007-12-16', '123A456B789C00'); -- CPF inválido

INSERT INTO Cliente (nome, data_nascimento, cpf)
VALUES ('Clara Teodósio', '2007-12-16', '12345678900'); -- CPF inválido


UPDATE Cliente
SET nome = 'Amanda Lara Duarte da Costa'
WHERE id = 1;

UPDATE Cliente
SET cpf = '111.111.111.111'
WHERE id = 1; -- Atualização com CPF inválido

Select *
From Cliente 