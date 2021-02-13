SELECT * FROM tipos_produto;

SELECT * FROM produtos;

-- Update

UPDATE tipos_produto SET descricao = 'Nobreak' WHERE codigo = 2;

-- Errado (pgAdmin4 permite)
-- UPDATE produtos SET descricao = 'Notebook', preco = 2800;

-- Delete
DELETE FROM tipos_produto WHERE codigo = 2;

-- O pgAdmin4 não irá impedir a remoção incorreta dos elementos.
DELETE FROM produtos;


