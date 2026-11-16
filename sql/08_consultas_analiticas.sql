
-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 08: Consultas Analiticas
-- =====================================================


-- 1. LIVROS MAIS E MENOS VENDIDOS
SELECT
    l.titulo,
    COALESCE(SUM(f.quantidade), 0) AS total_livros_vendidos
FROM dim_livro l
LEFT JOIN fato_vendas f ON l.livro_id = f.livro_id
GROUP BY l.livro_id, l.titulo
ORDER BY total_livros_vendidos DESC;


-- 2. DESEMPENHO DOS VENDEDORES
SELECT
    v.nome AS vendedor,
    COUNT(DISTINCT f.codigo_venda) AS total_vendas,
    COALESCE(SUM(f.quantidade), 0) AS livros_vendidos,
    COALESCE(SUM(f.valor_total), 0) AS faturamento
FROM dim_vendedor v
LEFT JOIN fato_vendas f ON v.vendedor_id = f.vendedor_id
GROUP BY v.vendedor_id, v.nome
ORDER BY total_vendas DESC;


-- 3. VENDAS POR LIVRARIA E LOCALIDADE
SELECT
    lj.nome AS livraria,
    lj.cidade,
    COUNT(DISTINCT f.codigo_venda) AS total_vendas,
    COALESCE(SUM(f.quantidade), 0) AS livros_vendidos,
    COALESCE(SUM(f.valor_total), 0) AS faturamento
FROM dim_livraria lj
LEFT JOIN fato_vendas f ON lj.livraria_id = f.livraria_id
GROUP BY lj.livraria_id, lj.nome, lj.cidade
ORDER BY total_vendas DESC;


-- 4. HISTORICO DE PRECOS DOS LIVROS
SELECT
    l.titulo,
    t.data_completa AS data_alteracao,
    h.preco_anterior,
    h.preco_novo
FROM fato_historico_preco h
JOIN dim_livro l ON h.livro_id = l.livro_id
JOIN dim_tempo t ON h.tempo_id = t.tempo_id
ORDER BY l.titulo, t.data_completa;


-- 5. HISTORICO DE VENDAS POR VENDEDOR E DATA
SELECT
    v.nome AS vendedor,
    t.data_completa AS data_venda,
    COUNT(DISTINCT f.codigo_venda) AS total_vendas,
    SUM(f.quantidade) AS livros_vendidos,
    SUM(f.valor_total) AS faturamento
FROM fato_vendas f
JOIN dim_vendedor v ON f.vendedor_id = v.vendedor_id
JOIN dim_tempo t ON f.tempo_id = t.tempo_id
GROUP BY v.nome, t.data_completa
ORDER BY t.data_completa, v.nome;


-- 6. HISTORICO DE VENDAS POR LIVRARIA E DATA
SELECT
    lj.nome AS livraria,
    lj.cidade,
    t.data_completa AS data_venda,
    COUNT(DISTINCT f.codigo_venda) AS total_vendas,
    SUM(f.quantidade) AS livros_vendidos,
    SUM(f.valor_total) AS faturamento
FROM fato_vendas f
JOIN dim_livraria lj ON f.livraria_id = lj.livraria_id
JOIN dim_tempo t ON f.tempo_id = t.tempo_id
GROUP BY lj.nome, lj.cidade, t.data_completa
ORDER BY t.data_completa, lj.nome;


-- 7. FATURAMENTO E DESCONTOS
SELECT
    COUNT(DISTINCT codigo_venda) AS total_compras,
    SUM(quantidade) AS livros_vendidos,
    SUM(preco_unitario * quantidade) AS valor_bruto,
    SUM(desconto) AS total_descontos,
    SUM(valor_total) AS faturamento_liquido
FROM fato_vendas;


-- 8. VENDAS SEM VENDEDOR
SELECT
    codigo_venda,
    COUNT(*) AS itens_vendidos,
    SUM(quantidade) AS livros_vendidos,
    SUM(valor_total) AS valor_total
FROM fato_vendas
WHERE vendedor_id IS NULL
GROUP BY codigo_venda;
