CREATE DATABASE c_dql_50;

USE c_dql_50;

CREATE TABLE tipos_produto(
    codigo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);

CREATE TABLE produtos(
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

INSERT INTO tipos_produto (descricao) VALUES ('Computador');
INSERT INTO tipos_produto (descricao) VALUES ('Impressora');

INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Desktop', 1200, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Laptop', 1800, 1);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Jato Tinta', 300, 2);
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Impr. Laser', 500, 2);

-- Select
SELECT * FROM tipos_produto;
SELECT codigo, descricao FROM tipos_produto;
SELECT * FROM produtos;
SELECT codigo, descricao, codigo_tipo FROM produtos;

-- Erro
SELECT cod, descr, pre, ctp FROM produtos;

-- Alias
SELECT p.codigo AS Código, p.descricao AS Descrição, p.preco AS Preço, p.codigo_tipo AS Código_do_tipo FROM produtos AS p;






