set serveroutput on
declare
      
        v_a number(7); /* v_a => 변수선언부 number(7) => 정수형 선언 */
        v_b number(7) := 100; /* 초기값 선언 */
        v_c varchar2(10) not null := 'ORACLE';
        v_d date := sysdate;
        v_e emp.ename%type;
        v_f constant number(7) := 5;

begin
        v_a := 100;
        v_e := 'test';
 
        dbms_output.put_line('v_a: ' || v_a); /* 오라클에서는 || 가 문자열 붙일때 쓰는 것 'A' + 'B' 로 쓰는것과 동일한 역할을 한다.*/
        dbms_output.put_line('v_b: ' || v_b);
        dbms_output.put_line('v_c: ' || v_c);
        dbms_output.put_line('v_d: ' || v_d);
        dbms_output.put_line('v_e: ' || v_e);
        dbms_output.put_line('v_f: ' || v_f);
end;
/
set serveroutput off
