set serveroutput OFF;
set serveroutput ON;

DECLARE
    empNo number(20);
    empName varchar2(10);
BEGIN
    select employee_id, first_name into empNo, empName
    from Employees
    where employee_id = 124;

    dbms_output.put_line(empNo || ' ' || empName);

END;
/
