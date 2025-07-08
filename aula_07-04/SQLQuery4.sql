-- EXERCÍCIO 3

-- Criação das tabelas

CREATE TABLE Estado(
	sigla char(2) not null,
	nome varchar(30) not null,
	primary key(sigla)
)
CREATE TABLE Cidade(
	id int identity not null,
	nome varchar(30) not null,
	estado_id char(2) not null,
	primary key (id),
	FOREIGN KEY (estado_id) REFERENCES Estado(sigla)
)
CREATE TABLE Bairro(
	id int identity not null,
	nome varchar(30) not null,
	cidade_id int not null,
	primary key(id),
	FOREIGN KEY (cidade_id) REFERENCES Cidade(id)
)



-- Inclusão dos regisros

-- ESTADO:
INSERT INTO Estado(sigla, nome) VALUES ('RN', 'Rio Grande do Norte')
INSERT INTO Estado(sigla, nome) VALUES ('PB', 'Paraíba')

-- CIDADE:
-- RN:
INSERT INTO Cidade(nome, estado_id) VALUES ('Natal', 'RN')
INSERT INTO Cidade(nome, estado_id) VALUES ('Mossoró', 'RN')
INSERT INTO Cidade(nome, estado_id) VALUES ('Parnamirim', 'RN')
-- PB:
INSERT INTO Cidade(nome, estado_id) VALUES ('João Pessoa', 'PB')
INSERT INTO Cidade(nome, estado_id) VALUES ('Sousa', 'PB')
INSERT INTO Cidade(nome, estado_id) VALUES ('Bananeiras', 'PB')

--BAIRROS:
-- Natal:
INSERT INTO Bairro(nome, cidade_id) VALUES ('Ponta Negra', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Lagoa Nova', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alecrim', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tirol', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cidade Alta', 4)
-- Mossoró
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Nova Betânia', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alto de São Manoel', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Belo Horizonte', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Santo Antônio', 5)
-- Parnamirim
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cohabinal', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Rosa dos Ventos', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Passagem de Areia', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Monte Castelo', 6)
-- João Pessoa
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tambaú', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Manaíra', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Bessa', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cabo Branco', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Valentina', 7);
-- Sousa
INSERT INTO Bairro(nome, cidade_id) VALUES ('Gato Preto', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alto do Cruzeiro', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Jardim Sorrilândia', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Estação', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 8);
-- Bananeiras
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Roma', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tabuleiro', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Matinhas', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Chã de Oiti', 9);


SELECT * FROM Estado
SELECT * FROM Cidade
SELECT * FROM Bairro