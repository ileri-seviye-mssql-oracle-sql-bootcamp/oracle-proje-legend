-------------------------------------BASIC LOOP
BEGIN
  FOR someone IN (
    SELECT * FROM EMPLOYEES
    WHERE EMPLOYEE_ID < 120
    ORDER BY EMPLOYEE_ID
  )
  LOOP
    DBMS_OUTPUT.PUT_LINE('First name = ' || someone.NAME_ ||
                         ', Department ID = '  || someone.DEPARTMENT_ID);
  END LOOP;
END;
/

