BEGIN
 FOR i IN REVERSE 1..10 LOOP
  IF mod(i,2) != 0 THEN
    DBMS_OUTPUT.PUT_LINE('Ímpar: ' || i);
    end IF;
 END LOOP;
END;

BEGIN
 FOR i IN 1..10 LOOP
  IF mod(i,2) = 0 THEN
    DBMS_OUTPUT.PUT_LINE('Par: ' || i);
    end IF;
 END LOOP;
END;