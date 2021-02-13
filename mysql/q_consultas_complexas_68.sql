# Consulta complexa

USE n_farmacia_mysql_64;

-- Compras
-- Passo 1 - Trazer as compras
SELECT * FROM compras;

-- Passo 2 - Colocar o nome do cliente nas compras
SELECT cp.id, cl.nome AS cliente, cp.data 
    FROM compras AS cp, clientes AS cl
    WHERE cp.id_cliente = cl.id;

-- Passo 3 - Produtos Compra
SELECT * FROM produtos_compra;

-- Passo 4 - Total da compra
 SELECT
 compras.id AS 'Venda', 
 clientes.nome AS 'Cliente',
 SUM(produtos.preco_de_venda * produtos_compra.quantidade) AS 'Total',
 compras.data AS 'Data da compra'
 FROM produtos_compra, compras, produtos, clientes
 WHERE compras.id = produtos_compra.id_compra AND produtos.id = produtos_compra.id_produto AND compras.id_cliente = clientes.id
 GROUP BY compras.id;
 
 
 