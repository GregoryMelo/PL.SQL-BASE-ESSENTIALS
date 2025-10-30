# 📚 PL/SQL - Bases Essenciais para Consulta

[![Badge de Status](https://img.shields.io/badge/Status-Em%20Desenvolvimento-yellowgreen)](STATUS)
[![Badge de Linguagem](https://img.shields.io/badge/Linguagem-PL%2FSQL-blue)](LINGUAGEM)

> Repositório de estudo e consulta rápida contendo os principais fundamentos da linguagem PL/SQL (Procedural Language / SQL) do Oracle Database. Este material é ideal para iniciantes e como referência de sintaxe para desenvolvedores.

---

## 🗺️ Índice de Conteúdo

* Bases e Variáveis ✅
* Controle de Fluxo
* Cursores e DML
* Tratamento de Erros (Exceptions))
* Subprogramas (Funções e Procedures)
* Como Usar
* Contribuições

---

## 1. Bases e Variáveis (Blocos de Código e Declarações)

Nesta seção, você encontrará a estrutura básica de um bloco PL/SQL e como declarar variáveis, incluindo o uso inteligente de ancoragem.

| Conceito | Arquivo | Descrição |
| :--- | :--- | :--- |
| Bloco Anônimo | `Bloco_Anonimo.sql` | Estrutura `DECLARE...BEGIN...END;` e uso de `DBMS_OUTPUT`. |
| Declaração de Variaveis| `Declaracao_Variaveis.sql` | Como criar e declarar variaveis no codigo. |
| `%TYPE` e `%ROWTYPE` | `variavel-rowtype.sql` e `variavel-type.sql` | Como herdar o tipo de dados de colunas de tabelas. |

## 🚀 Como Usar

1.  **Clone o Repositório:**
    ```bash
    git clone [https://github.com/SEU_USUARIO/PLSQL-BASES.git](https://github.com/SEU_USUARIO/PLSQL-BASES.git)
    ```
2.  **Execute no SQL Developer/SQL*Plus:**
    * Abra o arquivo `.sql` desejado na sua ferramenta Oracle (SQL Developer, SQLcl, etc.).
    * Lembre-se de ativar a saída do servidor antes de executar blocos PL/SQL que usam `DBMS_OUTPUT`:
        ```sql
        SET SERVEROUTPUT ON;
        ```

## 🤝 Contribuições

Sinta-se à vontade para sugerir melhorias, correções de bugs ou adicionar exemplos mais otimizados!

1.  Faça um Fork do projeto.
2.  Crie sua Branch para a funcionalidade (`git checkout -b feature/NovaBase`).
3.  Faça Commit das suas mudanças (`git commit -m 'feat: Adiciona exemplo de loop aninhado'`).
4.  Faça Push para a Branch (`git push origin feature/NovaBase`).
5.  Abra um Pull Request.

---
