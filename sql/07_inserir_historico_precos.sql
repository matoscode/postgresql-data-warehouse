
-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 07: Insercao do historico de precos
-- =====================================================

INSERT INTO fato_historico_preco
(
    livro_id,
    tempo_id,
    hora_id,
    preco_anterior,
    preco_novo
)
VALUES

-- DOM CASMURRO
(1, 1, 1, NULL, 45.00),
(1, 3, 2, 45.00, 48.00),

-- O PEQUENO PRINCIPE
(2, 1, 2, NULL, 35.00),
(2, 4, 3, 35.00, 38.00),

-- 1984
(3, 1, 3, NULL, 55.00),
(3, 3, 4, 55.00, 60.00),

-- CLEAN CODE
(4, 2, 4, NULL, 120.00),
(4, 4, 5, 120.00, 125.00),

-- O HOBBIT
(5, 2, 1, NULL, 40.00);
