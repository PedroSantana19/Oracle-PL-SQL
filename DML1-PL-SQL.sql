SELECT * FROM TCONTRATO;

SELECT Max(Cod_Contrato) FROM TCONTRATO;
CREATE SEQUENCE SEQ_CONTRATO START WITH 8;

DECLARE
  vCod tcontrato.cod_contrato%TYPE ;
BEGIN
  SELECT SEQ_CONTRATO.NEXTVAL
  INTO vCod FROM dual;
  INSERT INTO Tcontrato(cod_contrato,data,
                        cod_aluno, desconto)
  VALUES(vCod, SYSDATE, 2,NULL);

  Dbms_Output.put_line('CRIADO CONTRATO: '||vCod);
END;