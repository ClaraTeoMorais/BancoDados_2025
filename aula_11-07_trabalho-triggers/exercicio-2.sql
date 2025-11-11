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

	-- validar ANO FABRICAÇÃO
	if ( @ano > year(getdate()) )
		begin 
			rollback transaction
			raiserror ('O ANO DE FABRICAÇÃO não pode ser menor que o ano atual', 0, 0, 0)
		end

	-- validar se ANO contém 4 dígitos
	if ( len(@ano) <> 4 )
		begin 
			rollback transaction
			raiserror ('O ANO DE FABRICAÇÃO precisa conter 4 dígitos', 0, 0, 0)
		end

	-- validar PLACA 
	if ( @placa not like '[A-Z][A-Z][A-Z]-[0-9][0-9][0-9][0-9]')
		begin
			rollback transaction
			raiserror ('A PLACA é inválida', 0, 0, 0)
		end

	-- validar UF
	if ( @uf not in ('AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO') )
		begin
			rollback transaction
			raiserror ('A UF informada não é válida', 0, 0, 0)
		end

--  TESTES  --

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf)
VALUES ('Fiat Automóveis', 'Argo Drive 1.0', '2024', 'AAA-9999', 'RN');

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf) -- Nome do fabricante e modelo em branco
VALUES ('', '', '2024', 'AAA-9999', 'RN');

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf) -- Ano de fabricação inválido
VALUES ('Fiat Automóveis', 'Argo Drive 1.0', '2028', 'AAA-9999', 'RN');

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf) -- Placa inválida
VALUES ('Fiat Automóveis', 'Argo Drive 1.0', '2024', 'AAA9999', 'RN');

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf) -- Placa inválida
VALUES ('Fiat Automóveis', 'Argo Drive 1.0', '2024', '1119999', 'RN');

INSERT INTO Veiculo (fabricante, modelo, ano_fabricacao, placa, uf) -- UF inválida
VALUES ('Fiat Automóveis', 'Argo Drive 1.0', '2024', 'AAA-9999', 'NN');


UPDATE Veiculo
SET fabricante = 'Fiat carros e motos'
WHERE id = 6;

UPDATE Veiculo
SET placa = 'AAA-8888'
WHERE id = 6; -- Atualização da placa

Select *
FROM Veiculo
