-- EXERC�CIO 3

-- Cria��o das tabelas

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



-- Inclus�o dos regisros

-- ESTADO:
INSERT INTO Estado(sigla, nome) VALUES ('RN', 'Rio Grande do Norte')
INSERT INTO Estado(sigla, nome) VALUES ('PB', 'Para�ba')

-- CIDADE:
-- RN:
INSERT INTO Cidade(nome, estado_id) VALUES ('Natal', 'RN')
INSERT INTO Cidade(nome, estado_id) VALUES ('Mossor�', 'RN')
INSERT INTO Cidade(nome, estado_id) VALUES ('Parnamirim', 'RN')
-- PB:
INSERT INTO Cidade(nome, estado_id) VALUES ('Jo�o Pessoa', 'PB')
INSERT INTO Cidade(nome, estado_id) VALUES ('Sousa', 'PB')
INSERT INTO Cidade(nome, estado_id) VALUES ('Bananeiras', 'PB')

--BAIRROS:
-- Natal:
INSERT INTO Bairro(nome, cidade_id) VALUES ('Ponta Negra', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Lagoa Nova', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alecrim', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tirol', 4)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cidade Alta', 4)
-- Mossor�
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Nova Bet�nia', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alto de S�o Manoel', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Belo Horizonte', 5)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Santo Ant�nio', 5)
-- Parnamirim
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cohabinal', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Rosa dos Ventos', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Passagem de Areia', 6)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Monte Castelo', 6)
-- Jo�o Pessoa
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tamba�', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Mana�ra', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Bessa', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Cabo Branco', 7)
INSERT INTO Bairro(nome, cidade_id) VALUES ('Valentina', 7);
-- Sousa
INSERT INTO Bairro(nome, cidade_id) VALUES ('Gato Preto', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Alto do Cruzeiro', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Jardim Sorril�ndia', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Esta��o', 8);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 8);
-- Bananeiras
INSERT INTO Bairro(nome, cidade_id) VALUES ('Centro', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Roma', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Tabuleiro', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Matinhas', 9);
INSERT INTO Bairro(nome, cidade_id) VALUES ('Ch� de Oiti', 9);


SELECT * FROM Estado
SELECT * FROM Cidade
SELECT * FROM Bairro