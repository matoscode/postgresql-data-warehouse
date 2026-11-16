# Atividade 5 – Data Warehouse

## Projeto: Rede de Livrarias

Projeto acadêmico desenvolvido para a disciplina de Engenharia de Dados, utilizando PostgreSQL 18.

O objetivo é desenvolver um Data Warehouse para uma rede fictícia de livrarias, permitindo armazenar e analisar informações relacionadas às vendas, ao estoque e ao histórico de preços dos livros.

## 1. Tecnologias utilizadas

- PostgreSQL 18
- pgAdmin 4
- SQL
- Visual Studio Code
- Git e GitHub

## 2. Estrutura do projeto

```text
atividade-5-data-warehouse/
│
├── sql/
│   ├── 01_criar_banco.sql
│   ├── 02_criar_dimensoes.sql
│   ├── 03_criar_fatos.sql
│   ├── 04_inserir_dimensoes.sql
│   ├── 05_inserir_fato_vendas.sql
│   ├── 06_inserir_fato_estoque.sql
│   ├── 07_inserir_historico_precos.sql
│   └── 08_consultas_analiticas.sql
│
├── modelagem/
│
├── documentacao/
│
└── README.md
```

## 3. Modelo de dados

O projeto utiliza um modelo multidimensional composto por sete tabelas de dimensões e três tabelas de fatos.

### Tabelas de dimensões

- `dim_livro`: informações dos livros, autores, editoras e ano de publicação.
- `dim_livraria`: informações das livrarias e suas localidades.
- `dim_vendedor`: dados dos vendedores.
- `dim_comprador`: dados dos compradores.
- `dim_tempo`: informações relacionadas às datas.
- `dim_hora`: informações relacionadas aos horários.
- `dim_condicao`: condição dos livros, classificados como novos ou usados.

### Tabelas de fatos

- `fato_vendas`: registra as vendas realizadas, incluindo livro, livraria, vendedor, comprador, data, horário, quantidade, preço e desconto.
- `fato_estoque`: registra as entradas de livros no estoque das livrarias.
- `fato_historico_preco`: registra as alterações nos preços dos livros.

## 4. Como executar o projeto

### Requisitos

Antes de começar, é necessário ter instalado:

- PostgreSQL 18;
- pgAdmin 4.

### Etapa 1 — Criar o banco de dados

1. Abra o pgAdmin 4.
2. Conecte-se ao servidor PostgreSQL.
3. Abra o Query Tool conectado ao banco `postgres`.
4. Abra o arquivo `01_criar_banco.sql`, localizado na pasta `sql`.
5. Execute o comando para criar o banco `dw_livrarias`.

### Etapa 2 — Conectar ao banco do projeto

1. Atualize a árvore de bancos de dados no pgAdmin.
2. Localize o banco `dw_livrarias`.
3. Clique nele com o botão direito e abra o Query Tool.

### Etapa 3 — Criar as dimensões e tabelas de fatos

Execute os arquivos abaixo, nesta ordem:

1. `02_criar_dimensoes.sql`
2. `03_criar_fatos.sql`

### Etapa 4 — Inserir os dados

Ainda conectado ao banco `dw_livrarias`, execute:

1. `04_inserir_dimensoes.sql`
2. `05_inserir_fato_vendas.sql`
3. `06_inserir_fato_estoque.sql`
4. `07_inserir_historico_precos.sql`

### Etapa 5 — Executar as consultas analíticas

Abra e execute o arquivo `08_consultas_analiticas.sql`.

As consultas permitem analisar:

1. Livros mais e menos vendidos.
2. Desempenho dos vendedores.
3. Vendas por livraria e localidade.
4. Histórico de preços dos livros.
5. Histórico de vendas por vendedor e data.
6. Histórico de vendas por livraria e data.
7. Faturamento e descontos.
8. Vendas realizadas sem vendedor.

## 5. Observações importantes

- Os arquivos SQL devem ser executados na ordem indicada.
- O arquivo de criação do banco deve ser executado conectado ao banco `postgres`.
- Os demais scripts devem ser executados conectados ao banco `dw_livrarias`.
- Os arquivos de inserção foram preparados para a carga inicial em um banco novo.
- Não execute novamente os arquivos de inserção em um banco que já contém os dados, pois isso poderá duplicar os registros.
- Os dados utilizados no projeto são fictícios e destinados à demonstração acadêmica.

## 6. Objetivo das análises

O Data Warehouse permite consultar e analisar o comportamento das vendas da rede de livrarias, identificando os livros com maior e menor saída, o desempenho dos vendedores, as localidades com maior faturamento e as alterações nos preços dos livros.

Também permite acompanhar os registros de entrada de estoque e as vendas realizadas sem a identificação de um vendedor.

---

**Projeto acadêmico — Atividade 5: Data Warehouse**  
**Disciplina:** Engenharia de Dados  
**Banco de dados:** PostgreSQL 18