SET SERVEROUTPUT ON;

 /*
    Exemplo simples de criação e uso de uma FUNCTION
    - Não utiliza tabelas
    - Retorna um valor após uma operação simples
 */

-- Criando a function
CREATE OR REPLACE FUNCTION dobrar_valor (
    p_num IN NUMBER
) RETURN NUMBER AS
BEGIN
    RETURN p_num * 2;
END;
/

-- Testando a function
DECLARE
    v_result NUMBER;
BEGIN
    v_result := dobrar_valor(15);
    DBMS_OUTPUT.PUT_LINE('Resultado dobrado: ' || v_result);
END;
/
