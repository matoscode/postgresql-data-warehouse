
-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 02: Criacao das Dimensoes
-- PostgreSQL 18
-- =====================================================

-- 1. DIMENSAO LIVRO
CREATE TABLE IF NOT EXISTS dim_livro (
    livro_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    autores TEXT NOT NULL,
    editora VARCHAR(100),
    ano_publicacao INTEGER
);

-- 2. DIMENSAO LIVRARIA
CREATE TABLE IF NOT EXISTS dim_livraria (
    livraria_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    rua VARCHAR(150) NOT NULL,
    numero VARCHAR(20),
    bairro VARCHAR(100),
    cidade VARCHAR(100) NOT NULL,
    complemento VARCHAR(100)
);

-- 3. DIMENSAO VENDEDOR
CREATE TABLE IF NOT EXISTS dim_vendedor (
    vendedor_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    idade INTEGER CHECK (idade > 0)
);

-- 4. DIMENSAO COMPRADOR
CREATE TABLE IF NOT EXISTS dim_comprador (
    comprador_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    idade INTEGER CHECK (idade > 0)
);

-- 5. DIMENSAO TEMPO
CREATE TABLE IF NOT EXISTS dim_tempo (
    tempo_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    data_completa DATE UNIQUE NOT NULL,
    dia INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    trimestre INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    dia_semana VARCHAR(20)
);

-- 6. DIMENSAO HORA
CREATE TABLE IF NOT EXISTS dim_hora (
    hora_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    hora_completa TIME UNIQUE NOT NULL,
    hora INTEGER NOT NULL,
    minuto INTEGER NOT NULL
);

-- 7. DIMENSAO CONDICAO
CREATE TABLE IF NOT EXISTS dim_condicao (
    condicao_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    descricao VARCHAR(20) UNIQUE NOT NULL
        CHECK (descricao IN ('Novo', 'Usado'))
);
