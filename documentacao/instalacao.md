# Instalação e preparação do ambiente

Este documento apresenta os requisitos e procedimentos necessários para preparar o ambiente de execução do projeto Data Warehouse – Rede de Livrarias.

## 1. Requisitos

Para executar o projeto, é necessário instalar:

- PostgreSQL 18: sistema gerenciador de banco de dados utilizado para armazenar as informações.
- pgAdmin 4: ferramenta gráfica utilizada para administrar o PostgreSQL e executar comandos SQL.

## 2. Instalação do PostgreSQL 18

1. Acesse o site oficial: https://www.postgresql.org/download/
2. Selecione o sistema operacional utilizado.
3. Escolha a versão PostgreSQL 18, quando disponível para sua plataforma.
4. Baixe e execute o instalador.
5. Durante a instalação, mantenha os componentes padrão, incluindo PostgreSQL Server e pgAdmin 4, caso estejam disponíveis.
6. Defina uma senha para o usuário administrador `postgres`.
7. Mantenha a porta padrão `5432`, salvo se ela já estiver sendo utilizada por outro serviço.
8. Conclua a instalação.

**Importante:** guarde a senha definida durante a instalação. Ela será necessária para conectar ao servidor PostgreSQL.

## 3. Instalação do pgAdmin 4

Caso o pgAdmin 4 não tenha sido instalado junto com o PostgreSQL:

1. Acesse https://www.pgadmin.org/download/
2. Selecione a versão compatível com seu sistema operacional.
3. Baixe e execute o instalador.
4. Conclua a instalação e abra o pgAdmin 4.

## 4. Verificação da instalação

Após concluir a instalação:

1. Abra o pgAdmin 4.
2. Localize a opção Servers na árvore de navegação.
3. Conecte-se ao servidor PostgreSQL instalado.
4. Informe a senha definida durante a instalação, caso seja solicitada.
5. Verifique se o servidor está acessível.

A conexão bem-sucedida indica que o ambiente está preparado para receber o banco de dados do projeto.

## 5. Informações de conexão

| Parâmetro | Valor padrão |
|---|---|
| Servidor | localhost |
| Porta | 543