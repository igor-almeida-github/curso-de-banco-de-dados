SELECT * FROM atores;

-- Encontrar todos os filmes que determinado ator atua
SELECT f.titulo, g.genero, f.valor
	FROM filmes AS f, generos AS g
	WHERE f.id_genero = g.id AND f.id IN 
	(SELECT af.id_filme FROM atores_filme AS af, atores AS at WHERE af.id_ator = at.id AND at.nome = 'Felicity Jones');

-- Encontrar todos os filmes que determinado ator atuou por genero
SELECT f.titulo, g.genero, f.valor
	FROM filmes AS f, generos AS g
	WHERE f.id_genero = g.id AND g.genero = 'Comedia' AND f.id IN 
	(SELECT af.id_filme FROM atores_filme AS af, atores AS at WHERE af.id_ator = at.id AND at.nome = 'Bred Pitt');

-- Verificar qual cliente alugou o que.
SELECT c.nome, c.sobrenome , c.telefone, e.data AS data_de_emprestimo, f.titulo AS filme, f.valor 
    FROM emprestimos AS e, clientes AS c, filmes AS f, filmes_emprestimo AS fe, dvds
	WHERE fe.id_emprestimo = e.id AND fe.id_dvd = dvds.id AND dvds.id_filme = f.id AND e.id_cliente = c.id;

-- Verificar o que os clientes devolveram.
SELECT c.nome, c.sobrenome , c.telefone, d.data AS data_de_devolucao, f.titulo AS filme, f.valor 
	FROM emprestimos AS e, 
		clientes AS c, 
		filmes AS f, 
		filmes_emprestimo AS fe, 
		dvds, devolucoes AS d, 
		filmes_devolucao AS fd 
	WHERE fe.id_emprestimo = e.id 
		AND fe.id_dvd = dvds.id 
		AND dvds.id_filme = f.id 
		AND e.id_cliente = c.id
		AND d.id_emprestimo = e.id 
		AND fd.id_devolucao = d.id 
		AND fd.id_filme_emprestimo = fe.id;



