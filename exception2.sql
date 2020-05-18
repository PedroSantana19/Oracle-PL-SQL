DECLARE
  vDt_nascimento DATE;
  vConta NUMBER := 100;
  eConta_vencida Exception;

BEGIN
  SELECT VENCIMENTO INTO vDt_nascimento

  FROM CONTAS WHERE CODIGO = vConta;
    IF vDt_nascimento <Trunc(SYSDATE) THEN
      RAISE eConta_vencida;
    END IF;

   EXCEPTION
      WHEN eConta_vencida THEN
      UPDATE contas SET valor = valor + juros
      WHERE codigo = vConta;
END;

SELECT * FROM contas;