DECLARE
  vEstado VARCHAR (2) := 'RR';
  vNome   VARCHAR(30);
BEGIN
  CASE
    WHEN vEstado = 'RS' THEN vNome := 'Gaucho';
    WHEN vEstado = 'RJ' OR vEstado = 'RR' THEN vNome := 'Carioca';
  ELSE
    vNome := 'Outros';
  END CASE;
  Dbms_Output.put_line('Apelido: '||vNome);

END;