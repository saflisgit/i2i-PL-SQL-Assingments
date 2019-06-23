SELECT DISTINCT 
    d.department_name, 
    SUM(salary) OVER ( PARTITION BY E.department_ıd ) 
FROM HR.EMPLOYEES E , HR.DEPARTMENTS D
WHERE D.department_ıd  = E.department_ıd ;


SELECT 
    department_ıd,
    first_name, 
    last_name, 
    salary, 
    DENSE_RANK() OVER (PARTITION BY department_ıd ORDER BY salary) salary_rank
FROM 
    HR.EMPLOYEES;