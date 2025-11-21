SET SERVEROUTPUT ON;
/*
    Exemplo de tratamento de erros com EXCEÇÕES CUSTOMIZADAS
*/

DECLARE
    v_idade NUMBER := -5;

    -- Criando exceção customizada
    ex_valor_invalido EXCEPTION;

BEGIN
    IF v_idade < 0 THEN
        RAISE ex_valor_invalido;  -- Ativei a minha exceção
    END IF;

    DBMS_OUTPUT.PUT_LINE('Idade válida: ' || v_idade);

EXCEPTION
    WHEN ex_valor_invalido THEN
        DBMS_OUTPUT.PUT_LINE('Erro: O valor informado é inválido (idade negativa).');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro inesperado: ' || SQLERRM);
END;
/
