# Execução do projeto – Data Warehouse

Este documento apresenta o procedimento para criar e alimentar o Data Warehouse da Rede de Livrarias utilizando PostgreSQL 18 e pgAdmin 4.

## 1. Preparação

Antes de iniciar, certifique-se de que:

- PostgreSQL 18 está instalado e funcionando.
- pgAdmin 4 está instalado.
- O projeto foi baixado do repositório GitHub ou está disponível localmente.
- Os oito arquivos SQL estão na pasta `sql`.

## 2. Criação do banco de dados

1. Abra o pgAdmin 4.
2. Conecte-se ao servidor PostgreSQL.
3. Selecione o banco `postgres`.
4. Abra o Query Tool.
5. Abra o arquivo `01_criar_banco.sql`.
6. Execute o comando utilizando F5.

O procedimento criará o banco de dados:

`dw_livrarias`

## 3. Conexão ao banco do projeto

1. Atualize a árvore de navegação do pgAdmin.
2. Localize o banco `dw_livrarias`.
3. Clique com o botão direito sobre ele.
4. Selecione Query Tool.

A partir deste momento, todos os scripts seguintes devem ser executados com o banco `dw_livrarias` selecionado.

## 4. Criação das tabelas

Execute os arquivos nesta ordem:

| Ordem | Arquivo | Finalidade |
|---|---|---|
| 1 | `02_criar_dimensoes.sql` | Criar as sete tabelas dimensionais |
| 2 | `03_criar_fatos.sql` | Criar as três tabelas de fatos |

Após a execução, as tabelas estarão disponíveis no banco de dados.

## 5. Inserção dos dados

Execute os arquivos abaixo, respeitando a sequência:

| Ordem | Arquivo | Finalidade |
|---|---|---|
| 3 | `04_inserir_dimensoes.sql` | Inserir os dados das dimensões |
| 4 | `05_inserir_fato_vendas.sql` | Inserir os registros de vendas |
| 5 | `06_inserir_fato_estoque.sql` | Inserir os registros de estoque |
| 6 | `07_inserir_historico_precos.sql` | Inserir o histórico de preços |

## 6. Consultas analíticas

Após a criação das tabelas e inserção dos dados:

1. Abra o arquivo `08_consultas_analiticas.sql`.
2. Execute as consultas no Query Tool.
3. Observe os resultados apresentados na aba Data Output.

As consultas permitem analisar:

- Quantidade de livros vendidos por título.
- Desempenho dos vendedores.
- Vendas por livraria e localidade.
- Histórico de alterações nos preços.
- Histórico de vendas por vendedor.
- Histórico de vendas por livraria.
- Faturamento bruto, descontos e faturamento líquido.
- Vendas realizadas sem vendedor.

## 7. Cuidados durante a execução

- Execute cada arquivo na ordem apresentada.
- Não execute os scripts de inserção mais de uma vez no mesmo banco, pois isso poderá gerar registros duplicados.
- Caso ocorra algum erro, confira se o Query Tool está conectado ao banco correto.
- O arquivo `01_criar_banco.sql` deve ser executado no banco `postgres`; os demais, no banco `dw_livrarias`.

## 8. Resultado esperado

Ao finalizar todas as etapas, o banco `dw_livrarias` deverá conter:

- 7 tabelas dimensionais;
- 3 tabelas de fatos;
- Dados fictícios de livros, livrarias, vendedores, compradores, datas e condições;
- Registros de vendas, estoque e histórico de preços;
- Consultas analíticas para exploração dos dados.

---

**Projeto:** Data Warehouse – Rede de Livrarias  
**SGBD:** PostgreSQL 18  
**Ferramenta de administração:** pgAdmin 4