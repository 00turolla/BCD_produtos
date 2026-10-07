CREATE DATABASE db_biblioteca

USE db_biblioteca



CREATE TABLE curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT FOREIGN KEY,
    curso VARCHAR(30) NOT NULL
);

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT FOREIGN KEY NOT NULL
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50)NOT NULL,
);

CREATE TABLE  livro(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_emprestimo DATE,
    data_devolucao DATE
);