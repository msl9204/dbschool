set serveroutput OFF;
set serveroutput ON;

DECLARE
    cnt integer;
BEGIN
    cnt := cnt + 1;
    if cnt is null then
        dbms_output.put_line('결과는 : cnt는 NULL입니다.');
    end if;
END;
/
