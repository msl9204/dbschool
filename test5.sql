set serveroutput on
set verify off
variable e_name varchar2(30)
accept emp_no prompt "employee number??"
declare
       v_empno number(4);
       v_ename emp.ename%type;

       v_cnt number(5);
begin
      /*select.. into.. 문장 테스트*/
      select empno, ename
      into v_empno, v_ename
      from emp
      where empno = &emp_no;
      :e_name := v_ename;

      dbms_output.put_line('결과=> ' ||'employee#: ' || v_empno || ', ' || 'employee name: '|| v_ename);

      /*update문장 및 %rowcount 테스트*/
      select count(*)
      into v_cnt
      from emp
      where deptno = 30;

      dbms_output.put_line('v_cnt : '||v_cnt);

      update emp
      set sal = sal * 1.1
      where deptno = 30;

      dbms_output.put_line('sql%ROWCOUNT : '||sql%ROWCOUNT);

      if v_cnt = sql%ROWCOUNT then
         dbms_output.put_line('The value of sql%ROWCOUNT is equal to the value of v_cnt.');
      else
         dbms_output.put_line('The value of sql%ROWCOUNT is not equal to the value of v_cnt.');
      end if;

      exception
	when NO_DATA_FOUND THEN
		dbms_output.put_line('empno : ' || &emp_no || 'Not Found');
		:e_name := 'Not Found';

end;
/
print e_name
