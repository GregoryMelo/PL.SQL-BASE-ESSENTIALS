SET SERVEROUTPUT ON;

DECLARE
    -- Declaração das variáveis
    conceito CHAR(1) := 'F';
    resultado VARCHAR2(20);
BEGIN
    -- Estrutura CASE: verifica o valor da variável "conceito"
    CASE conceito
        WHEN 'A' THEN resultado := 'Excelente'; -- Se conceito for 'A'
        WHEN 'B' THEN resultado := 'Bom'; -- Se conceito for 'B'
        WHEN 'C' THEN resultado := 'Regular'; -- Se conceito for 'C'
        WHEN 'D' THEN resultado := 'Insuficiente'; -- Se conceito for 'D'
        ELSE resultado := 'Inválido'; -- Caso nenhum dos anteriores (por exemplo, 'F')
    END CASE;
    
    -- Exibe o resultado no console, concatenando as variáveis
    DBMS_OUTPUT.PUT_LINE('Conceito: ' || conceito || ' - Resultado: ' || resultado);
END;
/
