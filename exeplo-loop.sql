declare
    cont number(10):=1;
begin

    loop
        DBMS_OUTPUT.PUT_LINE('Exemplo com loop - '|| cont);
        exit WHEN cont >=1000;
        cont := cont + 1;
    end loop;
    DBMS_OUTPUT.PUT_LINE('-------------------------------');

    cont := 1;
    while cont <=1000 loop
        DBMS_OUTPUT.PUT_LINE('Exemplo com While '||cont);
        cont := cont + 1;
    end loop;


end;