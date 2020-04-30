DECLARE
  X INTEGER;
  Y INTEGER;
  C INTEGER;
BEGIN
  X := 10;
  Y := 20;
  C := X + Y;
    Dbms_Output.PUT_LINE ('RESULTADO: '||C);
    Dbms_Output.put_line('');
END;