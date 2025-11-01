SET SERVEROUTPUT ON;

DECLARE
    -- Declaração de variáveis
    v_valor NUMBER := 60;
BEGIN
    -- Estrutura condicional completa
    IF v_valor > 100 THEN -- Se o valor ser maior que 100 então...
        DBMS_OUTPUT.PUT_LINE('Valor maior que 100'); -- Execute este bloco

    ELSIF v_valor BETWEEN 50 AND 100 THEN -- Se o valor ficar entre 50 e 100 então...
        DBMS_OUTPUT.PUT_LINE('Valor entre 50 e 100'); -- Execute este bloco

    ELSE -- Caso nenhuma condição acima for verdadeira...
        DBMS_OUTPUT.PUT_LINE('Valor menor que 50'); -- Execute este bloco
    END IF; -- Fim da condição
END;
/
