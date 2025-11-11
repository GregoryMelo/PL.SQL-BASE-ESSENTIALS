-- ATENÇÃO: Use a tabela que é gerada a partir do script DML-SIMPLES!!

-- Cursor com LOOP

SET SERVEROUTPUT ON;

DECLARE
    -- Declaração do Cursor c_clientes
    CURSOR c_clientes IS
        SELECT id_cliente, nome_cliente, pontos
        FROM tb_clientes
        WHERE pontos < 100; -- Seleciona clientes com menos de 100 pontos.
        
BEGIN
    -- Início da Execução do Bloco
    DBMS_OUTPUT.PUT_LINE('--- Atualizando pontuação de clientes com menos de 100 pontos ---');

    -- Loop: Processa cada cliente retornado pelo cursor
    FOR r_cliente IN c_clientes LOOP
        
        -- Atualiza o registro do cliente atual
        UPDATE tb_clientes
        SET pontos = pontos + 50        -- Adiciona 50 pontos.
        WHERE id_cliente = r_cliente.id_cliente; 
        
        -- Exibe o resultado da atualização
        DBMS_OUTPUT.PUT_LINE(
            'Cliente: ' || r_cliente.nome_cliente ||
            ' | Pontos antes: ' || r_cliente.pontos ||
            ' | Pontos depois: ' || (r_cliente.pontos + 50)
        );
    END LOOP; -- Fim do Loop

    COMMIT; -- Salva todas as alterações de forma permanente no banco.
    DBMS_OUTPUT.PUT_LINE('Atualização concluída com sucesso!');
END;
/