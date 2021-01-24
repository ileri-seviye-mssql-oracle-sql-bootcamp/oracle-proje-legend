CREATE OR REPLACE PROCEDURE new_employee
(
id number,employee_id number,name_ varchar2,department_id number,birthday date,gender_id number
) 
IS
BEGIN
INSERT INTO employees values(id,employee_id,name_,department_id,birthday,gender_id);
COMMIT;
END;
execute new_employee (40270,90903,'Carina Dev Eason’,8,16/10/1995,0);




