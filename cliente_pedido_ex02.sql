CREATE DATABASE cliente_pedido_ex02;

USE cliente_pedido_ex02;

CREATE TABLE cliente (
id INT,
nome VARCHAR(50),
cpf CHAR(11),

PRIMARY KEY (id)

);

CREATE TABLE pedido (
id INT,
titulo VARCHAR(150),
item VARCHAR(150),
descricao TEXT,

id_cliente INT,

PRIMARY KEY (id),

FOREIGN KEY (id_cliente) REFERENCES cliente (id)

);