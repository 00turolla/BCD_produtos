CREATE DATABASE db_vendas

USE db_vendas



CREATE TABLE preco (
    id_preco INT PRIMARY KEY AUTO_INCREMENT,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE quantidade (
    id_quantidade INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_quantidade INT,
    id_preco INT,
    FOREIGN KEY (id_quantidade) REFERENCES quantidade(id_quantidade),
    FOREIGN KEY (id_preco) REFERENCES preco(id_preco)
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    nome VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE empresa (
    id_empresa INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_produto INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE Telefone (
    id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    telefone VARCHAR(15),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE email (
    id_email INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    email VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);