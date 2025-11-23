SET SERVEROUTPUT ON;

 /*
    Exemplo simples de criação e uso de uma PROCEDURE
    - Sem uso de tabelas
    - Apenas demonstração de entrada de parâmetros
 */

-- Criando a procedure
CREATE OR REPLACE PROCEDURE mostrar_informacoes (
    p_nome  IN VARCHAR2,
    p_idade IN NUMBER
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Nome recebido: ' || p_nome);
    DBMS_OUTPUT.PUT_LINE('Idade recebida: ' || p_idade);
END;
/

-- Chamando a procedure
BEGIN
    mostrar_informacoes('Leonardo', 22);
END;
/
