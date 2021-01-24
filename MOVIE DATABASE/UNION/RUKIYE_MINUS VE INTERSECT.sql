select e.employee_id, j.id,d.department_name,j.job,e.name_ from employees E
full outer joýn department d on e.department_ýd = d.ýd
full outer joýn jobs j on d.ýd=j.ýd
mýnus
select e.employee_id, j.id,d.department_name,j.job,e.name_ from jobs j
full outer joýn department d on j.department_ýd = d.ýd
full outer joýn employees e on d.ýd=e.department_ýd;

select e.employee_id, j.id,d.department_name,j.job,e.name_ from employees E
full outer joýn department d on e.department_ýd = d.ýd
full outer joýn jobs j on d.ýd=j.ýd
ýntersect
select e.employee_id, j.id,d.department_name,j.job,e.name_ from jobs j
full outer joýn department d on j.department_ýd = d.ýd
full outer joýn employees e on d.ýd=e.department_ýd;