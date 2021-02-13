 SELECT p.codigo AS codigo, p.descricao AS descricao, p.preco AS preco, tp.descricao AS tipo 
    FROM produtos as p, tipos_produto as tp
	WHERE p.codigo_tipo = tp.codigo;
	

