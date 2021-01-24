SELECT count(movie.name),countries.country_name  from movie 
INNER JOIN countries on countries.code = movie.country_code
GROUP BY countries.country_name
ORDER BY country_name;




SELECT e.name_,d.department_name from employees e
INNER JOIN department d on e.department_id = d.id
WHERE e.name_ like 'A%'
ORDER BY d.department_name ;