SET SERVEROUTPUT ON;

DECLARE
   -- Declaração de variáveis
   v_nome       VARCHAR2(50); -- Declarando variavel com espaço maximo de 50 caracteres
   v_idade      NUMBER; -- Declarando uma variavel do tipo numero sem tamanho maximo
   v_mensagem   VARCHAR2(100); -- Declarando variavel com espaço maximo de 100 caracteres
BEGIN
   -- Atribuição de valores
   v_nome := 'Leonardo';
   v_idade := 19;
   
   -- Montando uma mensagem
   v_mensagem := 'Olá, ' || v_nome || '! Você tem ' || v_idade || ' anos.';
   
   -- Exibindo o resultado
   DBMS_OUTPUT.PUT_LINE(v_mensagem);
END;
/
