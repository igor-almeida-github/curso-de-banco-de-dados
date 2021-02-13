SELECT * FROM generos;
SELECT * FROM filmes;
SELECT * FROM dvds;
SELECT * FROM filmes_emprestimo;
SELECT * FROM emprestimo;
SELECT * FROM filmes_devolucao;
SELECT * FROM atores_filme;

DELETE FROM filmes_devolucao WHERE id = 1;
DELETE FROM filmes_emprestimo WHERE id = 1;
DELETE FROM dvds WHERE id = 1;
DELETE FROM atores_filme WHERE id = 1;
DELETE FROM filmes WHERE id = 1;
DELETE FROM generos WHERE id = 3;



