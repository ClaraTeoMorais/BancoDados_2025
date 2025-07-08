-- EXERCÍCIO 2

-- Criação das tabelas

CREATE TABLE Turma(
	id int identity not null,
	nome varchar(30) not null,
	primary key(id)
)
CREATE TABLE Aluno(
	id int identity not null,
	nome varchar(90) not null,
	telefones varchar(20),
	idade int,
	data_nascimento date,
	turma_id int not null,
	primary key(id),
	FOREIGN KEY(turma_id) REFERENCES Turma(id)
)

-- Inclusão dos regisros

INSERT INTO Turma(nome)
	VALUES ('Infoweb')
INSERT INTO Turma(nome)
	VALUES ('Geologia')
INSERT INTO Turma(nome)
	VALUES ('Administração')

-- infoweb:
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Clara', '84988469627', 17, '2007-12-17', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Lucas', '84999887766', 18, '2006-08-25', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Mariana', '84999112233', 17, '2007-05-14', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('João', '84998765432', 18, '2006-03-30', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Isabela', '84997654321', 17, '2007-10-02', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Pedro', '84996543210', 18, '2006-07-20', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Ana', '84995432109', 17, '2007-11-08', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Rafael', '84994321098', 18, '2006-01-19', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Rafael', '84994321098', 18, '2006-01-19', 1)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Rafael', '84994321098', 18, '2006-01-19', 1)

-- geologia:
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Laura', '84991098765', 17, '2007-02-01', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Gustavo', '84990987654', 18, '2006-12-05', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Camila', '84990876543', 17, '2007-03-15', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Thiago', '84990765432', 18, '2006-05-08', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Manuela', '84990654321', 17, '2007-09-22', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Eduardo', '84990543210', 18, '2006-06-18', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Bruna', '84990432109', 17, '2007-04-04', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Felipe', '84990321098', 18, '2006-11-30', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Júlia', '84990210987', 17, '2007-07-11', 2)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('André', '84990109876', 18, '2006-10-28', 2)

-- administração:
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Sophia', '84990098765', 17, '2007-08-17', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Henrique', '84989987654', 18, '2006-04-23', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Letícia', '84989876543', 17, '2007-01-29', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Bruno', '84989765432', 18, '2006-02-12', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Gabriela', '84989654321', 17, '2007-05-07', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Daniel', '84989543210', 18, '2006-07-01', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Nicole', '84989432109', 17, '2007-10-14', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Vinícius', '84989321098', 18, '2006-09-25', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Lívia', '84989210987', 17, '2007-06-19', 3)
INSERT INTO Aluno(nome, telefones, idade, data_nascimento, turma_id)
	VALUES ('Diego', '84989109876', 18, '2006-03-06', 3)


SELECT * FROM Turma
SELECT * FROM Aluno
