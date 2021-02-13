# DML

USE c_dql_50;

-- Insert
INSERT INTO produtos (descricao, preco, codigo_tipo) VALUES ('Notebook', 1200, 1);
# INSERT INTO produtos VALUES ('Macbook Pro', 7200, 1); -- Erro - Quantidade errada de colunas
INSERT INTO produtos VALUES (NULL, 'Macbook Pro', 7200, 1);
INSERT INTO produtos VALUES (20, 'Macbook Pro 2009', 5200, 1);
INSERT INTO produtos VALUES (NULL, 'Macbook Air', 3200, 3); -- Erro - Chave estrangeira 3 não existe

-- Update
UPDATE produtos SET descricao = 'Macbook Air' WHERE codigo = 20;
UPDATE produtos SET codigo = 7 WHERE codigo = 20;

-- Consertando o auto incremento 
ALTER TABLE produtos AUTO_INCREMENT = 8;
INSERT INTO produtos VALUES (NULL, 'Predator', 5000, 1); 

-- Update continuação 
UPDATE produtos SET descricao = 'Impressora Laser', preco = 700 WHERE codigo = 4;
UPDATE produtos SET preco = 140 WHERE codigo < 4;

# OBS - NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM WHERE!
# UPDATE produtos SET preco = 150;  -- O mysql workbench não deixa executar, porém se uma linguagem de programação for usada, todos os registros serão alterados.

-- DELETE
DELETE FROM produtos WHERE codigo = 4;
# OBS - NUNCA ESQUEÇA DE FILTRAR O REGISTRO COM WHERE!
# DELETE FROM produtos; -- O mysql workbench não deixa executar, porém se uma linguagem de programação for usada, todos os registros serão deletados.

SELECT * FROM tipos_produto;
SELECT * FROM produtos;
