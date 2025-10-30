SET SERVEROUTPUT ON; -- Isso serve para escrever o codigo na saida do terminal

DECLARE
   -- (opcional) declarações de variáveis
   v_nome VARCHAR2(50);
BEGIN
   -- instruções executáveis
   v_nome := 'Leonardo';
   DBMS_OUTPUT.PUT_LINE('Olá, ' || v_nome);
EXCEPTION
   -- (opcional) tratamento de erros
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Erro inesperado.');
END;
/
