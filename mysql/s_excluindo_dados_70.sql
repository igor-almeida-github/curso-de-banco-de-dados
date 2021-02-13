# Excluindo dados

USE n_farmacia_mysql_64;

SELECT * FROM produtos_compra;

DELETE FROM produtos_compra WHERE id = 3;  -- Erro - nao deixa deletar por que receitas_medicas tem um registro que faz referência a linha com id 3 de produtos_compra.

SELECT * FROM receitas_medicas;

DELETE FROM receitas_medicas WHERE id_produto_compra = 3;















