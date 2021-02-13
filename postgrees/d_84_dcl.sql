-- Criar um usuário
CREATE USER estagiario WITH PASSWORD '123456';

/*
CREATE TABLE empresas(
    id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	funcionarios INT NOT NULL,
	cidade VARCHAR(50) NOT NULL
);
*/

GRANT ALL ON empresas TO estagiario;

GRANT USAGE, SELECT ON SEQUENCE empresas_id_seq TO estagiario;

REVOKE ALL ON empresas FROM estagiario;

REVOKE USAGE, SELECT ON SEQUENCE empresas_id_seq FROM estagiario;

GRANT SELECT ON empresas TO estagiario;

-- Remover usuário

DROP USER estagiario;
