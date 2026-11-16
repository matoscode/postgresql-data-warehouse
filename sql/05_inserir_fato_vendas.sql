
-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 05: Insercao de dados na fato_vendas
-- =====================================================

INSERT INTO fato_vendas
(
    codigo_venda,
    livro_id,
    livraria_id,
    vendedor_id,
    comprador_id,
    tempo_id,
    hora_id,
    condicao_id,
    quantidade,
    preco_unitario,
    desconto,
    valor_total
)
VALUES

-- VENDA 001: dois livros na mesma compra
('V001', 1, 1, 1, 1, 1, 1, 1, 1, 45.00, 5.00, 40.00),
('V001', 3, 1, 1, 1, 1, 1, 1, 1, 55.00, 0.00, 55.00),

-- VENDA 002
('V002', 2, 2, 2, 2, 1, 2, 1, 2, 35.00, 5.00, 65.00),

-- VENDA 003
('V003', 4, 3, 3, 3, 2, 3, 1, 1, 120.00, 10.00, 110.00),

-- VENDA 004: sem vendedor
('V004', 5, 1, NULL, 4, 2, 4, 2, 1, 40.00, 0.00, 40.00),

-- VENDA 005
('V005', 1, 2, 2, 1, 3, 1, 2, 1, 30.00, 0.00, 30.00),

-- VENDA 006
('V006', 3, 3, 3, 2, 3, 2, 1, 2, 55.00, 10.00, 100.00),

-- VENDA 007
('V007', 2, 1, 1, 3, 4, 3, 1, 1, 35.00, 0.00, 35.00),

-- VENDA 008
('V008', 4, 2, 2, 4, 4, 5, 2, 1, 90.00, 5.00, 85.00);
