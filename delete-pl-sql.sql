DECLARE
  vContrato TContrato.COD_CONTRATO%TYPE := &contrato;

BEGIN
  DELETE FROM TCONTRATO
  WHERE Cod_contrato = vcontrato;

END;
