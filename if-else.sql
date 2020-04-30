DECLARE
  vNome VARCHAR (30) := 'CARIOCA';
  vCidade VARCHAR (30);
  vEstado VARCHAR(2);
BEGIN
  IF (vNome = 'Gaucho') THEN
  vCidade := 'Porto Alegre';
  vEstado := 'RS';

  ELSIF (vNome = 'CARIOCA') THEN
  vCidade := 'Rio de Janeiro';
  vEstado := 'RJ';

  ELSE
    IF (vNome = 'Paulista') THEN
    vCidade := 'Guarulhos';
    vEstado := 'SP';

  ELSE
    vCidade := 'Outos';
    vEstado := 'XX';

  END IF;
END IF;

Dbms_Output.PUT_LINE(vCidade|| '' ||vEstado);
END;



