DECLARE
  vPreco1 NUMBER(8,2) := 10;
  vPreco2 NUMBER(8,2) := 20;
  vFlag BOOLEAN;
BEGIN
  vFlag := (vPreco1>vPreco2);
  IF (vFlag=TRUE) THEN
    Dbms_Output.Put_Line('VERDADEIRO');
  ELSE
    Dbms_Output.Put_Line('FALSO');
  END IF;

  IF (VPRECO1>VPRECO2) THEN
    Dbms_Output.Put_Line('vPreco1 e maior');
  ELSE
    Dbms_Output.Put_Line('vPreco2 e maior') ;
  END IF;
END;
