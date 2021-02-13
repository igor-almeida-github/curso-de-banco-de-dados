-- Select Simple
SELECT * FROM atores;
SELECT * FROM clientes;
SELECT * FROM filmes;
SELECT * FROM generos;
SELECT * FROM atores_filme;

-- Select com substituição de chave estrangeira
SELECT f.id, f.titulo, g.genero, f.valor FROM filmes AS f, generos AS g WHERE f.id_genero = g.id;
SELECT at.id, a.nome, f.titulo, at.personagem
	FROM atores_filme AS at, atores AS a, filmes AS f 
	WHERE at.id_ator = a.id AND at.id_filme = f.id;
	
-- Utilizando Filtros
SELECT * FROM generos WHERE id = 2;
SELECT * FROM generos WHERE genero = 'Terror';

-- Funções Agregadas
SELECT SUM(valor) AS soma FROM filmes;
SELECT MAX(valor) AS soma FROM filmes;
SELECT * FROM filmes WHERE valor IN (SELECT MAX(valor) AS soma FROM filmes);







