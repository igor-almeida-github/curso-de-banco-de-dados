 -- Create
 
CREATE TABLE tipos_produto(
    codigo SERIAL PRIMARY KEY,
	descricao VARCHAR(30) NOT NULL
 );
 
CREATE TABLE produtos(
	
	codigo SERIAL PRIMARY KEY,7
	descricao VARCHAR(30) NOT NULL,
	preco MONEY NOT NULL,
	codigo_tipo INT REFERENCES tipos_produto NOT NULL  
);

-- Alter 
ALTER TABLE tipos_produto ADD peso DECIMAL(8, 2);

-- Drop
DROP TABLE produtos;
DROP TABLE tipos_produto;

-- Podemos deletar o banco de dados
DROP DATABASE secao03;

 
 
 