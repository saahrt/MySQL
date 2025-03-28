# ESTE É UM COMENTÁRIO
-- ESTE É UM COMENTÁRIO
/* ESTE É UM COMENTÁRIO DE VÁRIAS LINHAS */

CREATE DATABASE hoopsonidiomas; -- criar BD
USE hoopsonidiomas; -- comando para usar BD

-- criando tabelas
CREATE TABLE cursos( 
	id_curso INT, -- chave primária do curso
	nome_curso VARCHAR(50),
	valor_curso DECIMAL(10, 2)
);

SELECT * FROM cursos; -- SELECT o dado de uma tabela * (seleciona todos os campos de uma tabela) consulta o dado FROM especificação

CREATE TABLE alunos(
	id_aluno INT, -- tipo de dado, nesse caso é inteiro
	nome_aluno VARCHAR(50), -- tipo de dado, nesse caso é caractere
	email VARCHAR(50)
);

SELECT * FROM alunos;

CREATE TABLE vendas(
	id_venda INT,
	data_venda DATE,
	id_curso INT,
	id_aluno INT
);

SELECT * FROM vendas;

INSERT INTO cursos(id_curso, nome_curso, valor_curso)
VALUES -- adicionar os dados na tabela com sql
	(1, 'Inglês', 1200),
    (2, 'Espanhol', 1000),
    (3, 'Francês', 900);
    
SELECT * FROM cursos;

INSERT INTO alunos(id_aluno, nome_aluno, email)
VALUES
	(1, 'Eliane', 'eliane@gmail.com'),
    (2, 'João', 'j.123@hotmail.com'),
    (3, 'Pedro', 'pedrinho@gmail.com');
    
SELECT * FROM alunos;

INSERT INTO vendas
VALUES
	(1, '2022-01-10', 1, 1),
    (2, '2022-01-10', 2, 1),
    (3, '2022-01-10', 3, 1),
    (4, '2022-01-13', 1, 2),
    (5, '2022-01-21', 2, 3);

SELECT * FROM vendas;

# Restrições (Constraints): Dever de casa 
# UNIQUE, DEFAULT, NOT NULL, PRIMARY KEY, FOREIGN KEY, ...
# O valor do curso de Francês será reajustado de R$900 para R$750. Atualize o valor na tabela de cursos.
SELECT * FROM cursos;

UPDATE cursos -- atualizar os dados na tabela cursos
SET valor_curso = 750 -- aplica o dado 
WHERE id_curso = 3; -- especifica qual é o dado

SELECT * FROM vendas;

# Selecione a tabela de vendas. A compra do cliente 'Pedro' (id_venda = 5) foi reembolsada e por isso ela deve ser excluída do controle de vendas.
DELETE FROM vendas -- remove o dado da tabela
WHERE id_venda = 5;

# Exclua a tabela vendas e em seguida o banco de dados hoopsonidiomas.
DROP TABLE vendas; -- descarta uma tabela existente
DROP DATABASE hoopsonidiomas; -- descarta um banco de dados existente