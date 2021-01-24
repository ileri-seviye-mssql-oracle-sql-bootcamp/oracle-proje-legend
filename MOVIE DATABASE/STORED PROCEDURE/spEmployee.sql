
-----------------------------------STORED PROCEDURE FOR EMPLOYEES

CREATE OR REPLACE PROCEDURE print_info(
    p_EMPLOYEE_ID NUMBER 
)
IS
  r_info EMPLOYEES%ROWTYPE;
BEGIN
  -- get contact based on customer id
  SELECT *
  INTO r_info
  FROM EMPLOYEES
  WHERE EMPLOYEE_ID = p_EMPLOYEE_ID;

  -- print out contact's information
  dbms_output.put_line( r_info.NAME || ' ' ||
  r_info.DEPARTMENT_ID || '<' || r_info.EMPLOYEE_ID ||'>' );

EXCEPTION
   WHEN OTHERS THEN
      dbms_output.put_line( SQLERRM );
END;

