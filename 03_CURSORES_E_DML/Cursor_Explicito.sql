-- ATENÇÃO: Use a tabela que é gerada a partir do script DML-SIMPLES!!

-- Cursor explicito (Bloco PL/SQL para processar resultados de uma consulta linha por linha)

SET SERVEROUTPUT ON;

DECLARE
    -- Declaração do cursor (Define a consulta que será executada)
    CURSOR c_clientes IS
        SELECT id_cliente, nome_cliente, pontos
        FROM tb_clientes
        WHERE pontos >= 100; -- Filtra apenas clientes com 100 pontos ou mais.

    -- Variáveis para armazenar os dados (Receberão os valores de cada linha do cursor)
    v_id_cliente    tb_clientes.id_cliente%TYPE;    -- Variável para o ID.
    v_nome_cliente tb_clientes.nome_cliente%TYPE;  -- Variável para o Nome.
    v_pontos       tb_clientes.pontos%TYPE;       -- Variável para os Pontos.
    
BEGIN
    -- Início do bloco de execução
    DBMS_OUTPUT.PUT_LINE('--- Listando clientes com 100 pontos ou mais ---');

    OPEN c_clientes; -- Abre o cursor (Executa a SELECT e prepara o conjunto de resultados).

    LOOP -- Início do loop manual
        
        -- FETCH: Busca a próxima linha do cursor e armazena os valores nas variáveis.
        FETCH c_clientes INTO v_id_cliente, v_nome_cliente, v_pontos;
        
        -- EXIT WHEN: Sai do loop se o FETCH anterior não encontrou mais nenhuma linha.
        EXIT WHEN c_clientes%NOTFOUND; 

        -- Exibe os dados do cliente atual
        DBMS_OUTPUT.PUT_LINE('Cliente: ' || v_nome_cliente || ' | Pontos: ' || v_pontos);
    END LOOP;

    CLOSE c_clientes; -- Fecha o cursor (Libera os recursos alocados).

    DBMS_OUTPUT.PUT_LINE('Listagem concluída!');
END; -- Fim do bloco PL/SQL
/