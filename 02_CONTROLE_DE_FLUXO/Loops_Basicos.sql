SET SERVEROUTPUT ON;

DECLARE 
    v_contador NUMBER := 1;  -- Variável de controle do loop (while)

BEGIN
    -- Loop de 1 até 5 (valores fixos) usando FOR
    DBMS_OUTPUT.PUT_LINE('--- Usando For --- ');
    FOR i IN 1..5 LOOP
        -- Exibe o valor atual da variável 'i' a cada repetição
        DBMS_OUTPUT.PUT_LINE('Valor de i: ' || i);
    END LOOP;  -- Fim do loop
    
    DBMS_OUTPUT.PUT_LINE('--- Usando While --- ');
        -- Enquanto a condição for verdadeira, o loop continua, usando WHILE
    WHILE v_contador <= 5 LOOP
        -- Mostra o valor atual de 'v_contador'
        DBMS_OUTPUT.PUT_LINE('Contador: ' || v_contador);
        
        -- Incrementa o contador para evitar loop infinito
        v_contador := v_contador + 1;
    END LOOP;  -- Fim do loop
    
END;
/

