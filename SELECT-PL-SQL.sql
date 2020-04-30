DECLARE
  vValor NUMBER(8,2);
  vNome VARCHAR2(30);

BEGIN

  SELECT valor, nome
  INTO vValor,vNome
  FROM tcurso
  WHERE cod_curso = &cod_curso;
  dbms_output.put_line('Valor: '||TO_Char(vValor, 'fm9999.99'));
  dbms_output.put_line('Curso: '||InitCap(vNome));
 END;

 SELECT * FROM tcurso;

