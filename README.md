# 📚 PL/SQL - Bases Essenciais para Consulta

[![Status](https://img.shields.io/badge/Status-Conclu%C3%ADdo-brightgreen)](CONCLUIDO)
[![Badge de Linguagem](https://img.shields.io/badge/Linguagem-PL%2FSQL-blue)](LINGUAGEM)

> Repositório de estudo e consulta rápida contendo os principais fundamentos da linguagem PL/SQL (Procedural Language / SQL) do Oracle Database. Este material é ideal para iniciantes e como referência de sintaxe para desenvolvedores.

---

## Índice de Conteúdo

* Bases e Variáveis ✅
* Controle de Fluxo ✅
* Cursores e DML ✅
* Tratamento de Erros (Exceptions) ✅
* Subprogramas (Funções e Procedures) ✅

---

## Como Usar

1.  **Clone o Repositório:**
    ```bash
    git clone [https://github.com/SEU_USUARIO/PLSQL-BASES.git](https://github.com/SEU_USUARIO/PLSQL-BASES.git)
    ```
2.  **Execute no SQL Developer/SQL*Plus:**
    * Abra o arquivo `.sql` desejado na sua ferramenta Oracle (SQL Developer, SQLcl, etc.).
    * Lembre-se de ativar a saída do servidor antes de executar blocos PL/SQL que usam `DBMS_OUTPUT` caso algum codigo não possua:
        ```sql
        SET SERVEROUTPUT ON;
        ```

## Contribuições

Sinta-se à vontade para sugerir melhorias, correções de bugs ou adicionar exemplos mais otimizados!

1.  Faça um Fork do projeto.
2.  Crie sua Branch para a funcionalidade (`git checkout -b feature/NovaBase`).
3.  Faça Commit das suas mudanças (`git commit -m 'feat: Adiciona exemplo de loop aninhado'`).
4.  Faça Push para a Branch (`git push origin feature/NovaBase`).
5.  Abra um Pull Request.

---

## Estrutura do Repositório

O conteúdo está dividido em módulos temáticos para facilitar a consulta rápida:

```
📦 PLSQL-BASES
 ┣ 📂 01_BASES_E_VARIAVEIS
 │  ┣ 📜 Bloco_Anonimo.sql
 │  ┣ 📜 Declaracao_Variaveis.sql
 │  ┣ 📜 variavel-type.sql
 │  ┗ 📜 variavel-rowtype.sql
 ┣ 📂 02_CONTROLE_DE_FLUXO
 │  ┣ 📜 Condicional_IF.sql
 │  ┣ 📜 Estrutura_CASE.sql
 │  ┗ 📜 Loops_Basicos.sql
 ┣ 📂 03_CURSORES_E_DML
 │  ┣ 📜 DML_Simples.sql
 │  ┣ 📜 Cursor_FOR_LOOP.sql
 │  ┗ 📜 Cursor_Explicito.sql
 ┣ 📂 04_TRATAMENTO_DE_ERROS
 │  ┣ 📜 Exception_PreDefinida.sql
 │  ┗ 📜 Exception_Customizada.sql
 ┣ 📂 05_SUBPROGRAMAS
 │  ┣ 📜 PROCEDURE_Exemplo.sql
 │  ┗ 📜 FUNCTION_Exemplo.sql
 ┗ 📜 README.md
```

---

## 📘 Concluido | Leonardo Gregori — Data Science Student
