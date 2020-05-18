DECLARE
  vCod taluno.cod_aluno%TYPE := 566;
  vCidade taluno.cidade%TYPE;
  x NUMBER;
BEGIN
  SELECT CIDADE INTO vCIDADE
  FROM TALUNO
  WHERE COD_ALUNO = vCod;
  X := 0 / 0;
  dbms_output.put_line('Cidade : ' ||vCidade);

 EXCEPTION
  WHEN No_Data_Found THEN
  Raise_Application_Error(-20001,
  'Aluno Inexistente: '||SQLCODE||' ' ||SQLERRM);

  WHEN Too_Many_Rows THEN
  Raise_Application_Error(-200002,
  'Registro duplicado: '||SQLCODE|| ' ' ||SQLERRM);

  WHEN OTHERS THEN
  Raise_Application_Error(-200003,
  'Excessão desconhecida '||SQLCODE|| '' ||SQLERRM);
END;