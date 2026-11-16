-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 06: Insercao de dados na fato_estoque
-- =====================================================

INSERT INTO fato_estoque
(
    livro_id,
    livraria_id,
    tempo_id,
    condicao_id,
    quantidade,
    custo_aquisicao
)
VALUES

-- ENTRADAS NA LIVRARIA CENTRAL - LAGARTO
(1, 1, 1, 1, 10, 25.00),
(2, 1, 1, 1, 8, 18.00),
(5, 1, 2, 2, 5, 20.00),

-- ENTRADAS NA LIVRARIA SABER - ARACAJU
(3, 2, 1, 1, 12, 30.00),
(4, 2, 2, 1, 6, 70.00),
(1, 2, 3, 2, 4, 18.00),

-- ENTRADAS NA LIVRARIA CULTURA - ARACAJU
(2, 3, 3, 1, 10, 18.00),
(4, 3, 4, 2, 3, 60.00);