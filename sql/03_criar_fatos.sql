
-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 03: Criacao das Tabelas de Fatos
-- PostgreSQL 18
-- =====================================================

-- 1. FATO VENDAS
CREATE TABLE IF NOT EXISTS fato_vendas (
    venda_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    codigo_venda VARCHAR(30) NOT NULL,
    livro_id INTEGER NOT NULL,
    livraria_id INTEGER NOT NULL,
    vendedor_id INTEGER,
    comprador_id INTEGER NOT NULL,
    tempo_id INTEGER NOT NULL,
    hora_id INTEGER NOT NULL,
    condicao_id INTEGER NOT NULL,

    quantidade INTEGER NOT NULL DEFAULT 1
        CHECK (quantidade > 0),

    preco_unitario NUMERIC(10,2) NOT NULL
        CHECK (preco_unitario >= 0),

    desconto NUMERIC(10,2) NOT NULL DEFAULT 0
        CHECK (desconto >= 0),

    valor_total NUMERIC(12,2) NOT NULL
        CHECK (valor_total >= 0),

    FOREIGN KEY (livro_id)
        REFERENCES dim_livro(livro_id),

    FOREIGN KEY (livraria_id)
        REFERENCES dim_livraria(livraria_id),

    FOREIGN KEY (vendedor_id)
        REFERENCES dim_vendedor(vendedor_id),

    FOREIGN KEY (comprador_id)
        REFERENCES dim_comprador(comprador_id),

    FOREIGN KEY (tempo_id)
        REFERENCES dim_tempo(tempo_id),

    FOREIGN KEY (hora_id)
        REFERENCES dim_hora(hora_id),

    FOREIGN KEY (condicao_id)
        REFERENCES dim_condicao(condicao_id)
);


-- 2. FATO ESTOQUE
CREATE TABLE IF NOT EXISTS fato_estoque (
    estoque_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    livro_id INTEGER NOT NULL,
    livraria_id INTEGER NOT NULL,
    tempo_id INTEGER NOT NULL,
    condicao_id INTEGER NOT NULL,

    quantidade INTEGER NOT NULL
        CHECK (quantidade > 0),

    custo_aquisicao NUMERIC(10,2)
        CHECK (custo_aquisicao >= 0),

    FOREIGN KEY (livro_id)
        REFERENCES dim_livro(livro_id),

    FOREIGN KEY (livraria_id)
        REFERENCES dim_livraria(livraria_id),

    FOREIGN KEY (tempo_id)
        REFERENCES dim_tempo(tempo_id),

    FOREIGN KEY (condicao_id)
        REFERENCES dim_condicao(condicao_id)
);


-- 3. FATO HISTORICO DE PRECOS
CREATE TABLE IF NOT EXISTS fato_historico_preco (
    historico_preco_id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    livro_id INTEGER NOT NULL,
    tempo_id INTEGER NOT NULL,
    hora_id INTEGER NOT NULL,

    preco_anterior NUMERIC(10,2)
        CHECK (preco_anterior >= 0),

    preco_novo NUMERIC(10,2) NOT NULL
        CHECK (preco_novo >= 0),

    FOREIGN KEY (livro_id)
        REFERENCES dim_livro(livro_id),

    FOREIGN KEY (tempo_id)
        REFERENCES dim_tempo(tempo_id),

    FOREIGN KEY (hora_id)
        REFERENCES dim_hora(hora_id)
);
