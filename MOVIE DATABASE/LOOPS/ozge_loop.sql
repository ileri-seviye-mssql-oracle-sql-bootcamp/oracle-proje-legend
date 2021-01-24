DECLARE 
CURSOR employee_department
IS 
SELECT 
employees.name_,department.department_name 
FROM 
employees JOIN department on department.id=employees.department_id;  
BEGIN
FOR ed_name IN employee_department 
LOOP
    dbms_output.put_line(ed_name.name_||' '||ed_name.department_name);
END LOOP;
END;
