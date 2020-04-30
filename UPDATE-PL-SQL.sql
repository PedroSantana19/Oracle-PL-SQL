DECLARE
  vValor TCurso.Valor%TYPE := &Valor;

BEGIN
  UPDATE tcurso SET
  valor = valor +vValor
  WHERE carga_horaria >= 30;

END;