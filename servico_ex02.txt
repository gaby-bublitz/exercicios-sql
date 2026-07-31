CREATE DATABASE servico_ex03;

USE servico_ex03;

CREATE TABLE cor (
id INT,
nome_cor VARCHAR(50),

PRIMARY KEY (id)

);

CREATE TABLE marca (
id INT,
nome_marca VARCHAR(50),

PRIMARY KEY (id)

);

CREATE TABLE modelo (
id INT,
nome_modelo VARCHAR(50),

id_marca INT,

PRIMARY KEY (id),

FOREIGN KEY (id_marca)
REFERENCES marca(id)

);

CREATE TABLE proprietario (
id INT,
nome VARCHAR(50),
telefone VARCHAR(11),
email VARCHAR (50),

PRIMARY KEY (id)

);

CREATE TABLE combustivel (
id INT,
nome_combustivel VARCHAR(50),

PRIMARY KEY (id)

);

CREATE TABLE veiculo (
id INT,
ano_fabricacao INT,
ano_modelo INT,
quilometragem INT,
portas INT,

id_proprietario INT,
id_cor INT,
id_modelo INT,

PRIMARY KEY (id),

FOREIGN KEY (id_proprietario)
REFERENCES proprietario(id),

FOREIGN KEY (id_cor)
REFERENCES cor(id),

FOREIGN KEY (id_modelo)
REFERENCES modelo(id)

);

CREATE TABLE veiculo_combustivel (
id_veiculo INT,
id_combustivel INT,

PRIMARY KEY (id_veiculo, id_combustivel),

FOREIGN KEY (id_veiculo) REFERENCES veiculo (id),
FOREIGN KEY (id_combustivel) REFERENCES combustivel (id)
);