set serveroutput on

accept salary_info prompt '월급을 입력해주세요'


dbms_output.put_line(salary_info);

end;
/

set serveroutput off
