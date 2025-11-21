SET SERVEROUTPUT ON;
/*
    Exemplo de tratamento de erros com EXCEÇÕES PRÉ-DEFINIDAS
    Exceção usada: ZERO_DIVIDE
*/

DECLARE
    v_num1 NUMBER := 10;
    v_num2 NUMBER := 0;  -- Vai causar ZERO_DIVIDE
    v_resultado NUMBER;
BEGIN
    v_resultado := v_num1 / v_num2;

    DBMS_OUTPUT.PUT_LINE('Resultado: ' || v_resultado);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Erro: Divisão por zero não permitida.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro inesperado: ' || SQLERRM);
END;
/
