-- =====================================================
-- ATIVIDADE 5 - DATA WAREHOUSE
-- Projeto: Rede de Livrarias
-- Etapa 04: Insercao de dados nas dimensoes
-- =====================================================

-- 1. LIVROS
INSERT INTO dim_livro
(titulo, autores, editora, ano_publicacao)
VALUES
('Dom Casmurro', 'Machado de Assis', 'Principis', 1899),
('O Pequeno Principe', 'Antoine de Saint-Exupery', 'Agir', 1943),
('1984', 'George Orwell', 'Companhia das Letras', 1949),
('Clean Code', 'Robert C. Martin', 'Prentice Hall', 2008),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 1937);

-- 2. LIVRARIAS
INSERT INTO dim_livraria
(nome, rua, numero, bairro, cidade, complemento)
VALUES
('Livraria Central', 'Rua Joao Pessoa', '120', 'Centro', 'Lagarto', NULL),
('Livraria Saber', 'Avenida Brasil', '450', 'Centro', 'Aracaju', NULL),
('Livraria Cultura', 'Rua das Flores', '80', 'Jardins', 'Aracaju', NULL);

-- 3. VENDEDORES
INSERT INTO dim_vendedor
(nome, cpf, idade)
VALUES
('Carlos Almeida', '11111111111', 32),
('Fernanda Santos', '22222222222', 28),
('Roberto Lima', '33333333333', 40);

-- 4. COMPRADORES
INSERT INTO dim_comprador
(nome, cpf, idade)
VALUES
('Ana Oliveira', '44444444444', 25),
('Pedro Souza', '55555555555', 35),
('Mariana Costa', '66666666666', 29),
('Lucas Ferreira', '77777777777', 22);

-- 5. TEMPO
INSERT INTO dim_tempo
(data_completa, dia, mes, trimestre, ano, dia_semana)
VALUES
('2026-11-10', 10, 11, 4, 2026, 'Terça-feira'),
('2026-11-11', 11, 11, 4, 2026, 'Quarta-feira'),
('2026-11-12', 12, 11, 4, 2026, 'Quinta-feira'),
('2026-11-13', 13, 11, 4, 2026, 'Sexta-feira');

-- 6. HORA
INSERT INTO dim_hora
(hora_completa, hora, minuto)
VALUES
('09:00:00', 9, 0),
('10:30:00', 10, 30),
('14:00:00', 14, 0),
('16:45:00', 16, 45),
('19:00:00', 19, 0);

-- 7. CONDICAO
INSERT INTO dim_condicao
(descricao)
VALUES
('Novo'),
('Usado');