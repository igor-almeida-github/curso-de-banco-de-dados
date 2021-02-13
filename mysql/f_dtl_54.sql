SELECT * FROM tipos_produto;

# DTL

-- TRANSACTION
START TRANSACTION;
    INSERT INTO tipos_produto (codigo, descricao) VALUES (5, 'Acessórios');
    INSERT INTO tipos_produto (descricao) VALUES ('Equipamentos');
    
-- COMMIT
COMMIT;  -- Efetiva tudo que foi feito dentro da transação

-- ROLLBACK
ROLLBACK;  -- Desfaz tudo que foi feito na transação

