# DDL

-- CREATE

CREATE DATABASE e_ddl_52;

USE e_ddl_52;

CREATE TABLE pessoas(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO pessoas VALUES (NULL, 'Felicity Jones');

-- ALTER

ALTER TABLE pessoas ADD ano_nascimento INT;
ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;

UPDATE pessoas set mes_nascimento = 6 WHERE id = 1;

-- DROP -> Deleta uma estrutura
DROP TABLE pessoas;
DROP DATABASE e_ddl_52;

SELECT * FROM pessoas;

