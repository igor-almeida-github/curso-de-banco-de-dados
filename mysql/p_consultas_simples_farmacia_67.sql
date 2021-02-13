# Realizando Consultas simples

USE n_farmacia_mysql_64;

-- Tipos Produtos
SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos ORDER BY id DESC;
SELECT id, tipo FROM tipos_produtos ORDER BY tipo DESC;

-- Fabricantes
SELECT * FROM fabricantes;

-- Medicos
SELECT * FROM medicos;

-- Clientes
SELECT * FROM clientes;

-- Compras
SELECT * FROM compras;

-- Produtos Compra
SELECT * FROM produtos_compra;
SELECT * FROM produtos_compra WHERE quantidade > 2;

-- Receitas_medicas
SELECT * FROM receitas_medicas;

