DECLARE
    var NUMBER := 10;
BEGIN
    IF var = 10 THEN
        DBMS_OUTPUT.PUT_LINE('값은 10이다.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('값은 10이 아니다.');
    END IF;
END;
/
