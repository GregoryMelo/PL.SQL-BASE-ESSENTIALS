/* ATENÇÃO: Essa tabela tambem sera usada para os outros 2 arquivos, cursor com loop
e cursor explicito!! */

-- DML Simples

SET SERVEROUTPUT ON;

-- Criação da tabela (Bloco para garantir que a tabela seja criada do zero)
BEGIN
    -- Tenta remover a tabela 'tb_clientes' se ela existir, juntamente com seus dados (PURGE).
    EXECUTE IMMEDIATE 'DROP TABLE tb_clientes PURGE';
EXCEPTION
    -- Se a tabela não existir, o DROP TABLE gerará um erro. Esta seção captura qualquer erro...
    WHEN OTHERS THEN
        NULL;
END;
/

-- Definição da estrutura da tabela
CREATE TABLE tb_clientes (
    id_cliente      NUMBER(5)       PRIMARY KEY, -- Coluna de ID, chave primária, armazena números de até 5 dígitos.
    nome_cliente    VARCHAR2(60)    NOT NULL,    -- Coluna para o nome, não pode ser nula, armazena até 60 caracteres.
    pontos          NUMBER(5)                    -- Coluna para a pontuação, armazena números de até 5 dígitos.
);

-- Bloco PL/SQL (executa comandos sequenciais, incluindo DML e comandos de saída)
BEGIN
    -- Inserção de registros (DML - Data Manipulation Language)
    INSERT INTO tb_clientes VALUES (1, 'Ana Souza', 80);
    INSERT INTO tb_clientes VALUES (2, 'Carlos Pereira', 150);
    INSERT INTO tb_clientes VALUES (3, 'Mariana Lima', 90);
    INSERT INTO tb_clientes VALUES (4, 'João Mendes', 60);
    INSERT INTO tb_clientes VALUES (5, 'Beatriz Alves', 120);
    COMMIT; -- Confirma permanentemente as inserções no banco de dados.
    DBMS_OUTPUT.PUT_LINE('Registros inseridos com sucesso!'); -- Exibe uma mensagem de sucesso.

    -- Atualização de um registro (DML - UPDATE)
    UPDATE tb_clientes
    SET pontos = pontos + 20        -- Aumenta a coluna 'pontos' em 20.
    WHERE nome_cliente = 'Ana Souza'; -- Onde o nome do cliente for 'Ana Souza'.
    DBMS_OUTPUT.PUT_LINE('Pontos de Ana Souza atualizados!'); -- Exibe uma mensagem de confirmação.

    -- Exclusão de um registro (DML - DELETE)
    DELETE FROM tb_clientes
    WHERE nome_cliente = 'João Mendes'; -- Remove a linha onde o nome do cliente for 'João Mendes'.
    DBMS_OUTPUT.PUT_LINE('Cliente João Mendes removido!'); -- Exibe uma mensagem de confirmação.

    -- Exibição final (Consulta e Loop em PL/SQL)
    DBMS_OUTPUT.PUT_LINE('--- Tabela Atualizada ---');
    -- Inicia um loop (CURSOR FOR LOOP) para iterar sobre o resultado da consulta SELECT * FROM tb_clientes.
    FOR r IN (SELECT * FROM tb_clientes) LOOP
        -- Exibe o ID, Nome e Pontos de cada cliente restante na tabela.
        DBMS_OUTPUT.PUT_LINE(r.id_cliente || ' - ' || r.nome_cliente || ' - ' || r.pontos || ' pontos');
    END LOOP;
END;
/