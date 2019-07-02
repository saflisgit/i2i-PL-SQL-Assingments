--1-----------------------------------------------------
SELECT  employee_id,first_name,
        last_name,
        ROUND(MONTHS_BETWEEN(SYSDATE,hire_date)) 
FROM EMPLOYEES;


                            
--2-----------------------------------------------------
SELECT job_id JOB,
DECODE(job_id, 'AD_PRES', 'A',
                    'ST_MAN', 'B',
                    'IT_PROG', 'C',
                    'SA_REP', 'D',
                    'ST_CLERK', 'E',
                    '0') GRADE
FROM employees;
--3-----------------------------------------------------
SELECT job_id JOB,
CASE job_id
  WHEN 'AD_PRES' THEN 'A'
  WHEN 'ST_MAN' THEN 'B'
  WHEN 'IT_PROG' THEN 'C'
  WHEN 'SA_REP' THEN 'D'
  WHEN 'ST_CLERK' THEN 'E'
  ELSE '0'
END  GRADE
FROM employees;

--4-----------------------------------------------------

SELECT last_name
FROM employees e
WHERE e.department_ıd IN   (SELECT DISTINCT department_ıd 
                            FROM employees 
                            WHERE last_name LIKE '%i%');
                            
--5-----------------------------------------------------


CREATE TABLE MY_EMP_TABLE ( id NUMBER,
                            last_name VARCHAR2(50),
                            first_name VARCHAR2(50),
                            salary NUMERIC);
                            
INSERT INTO my_emp_table VALUES(1,'BLACK','John',1100);
INSERT INTO my_emp_table VALUES(2,'WHITE','Kent',1300);
INSERT INTO my_emp_table VALUES(3,'ORANGE','David',1700);
INSERT INTO my_emp_table VALUES(4,'PINK','Alissa',1900);

DELETE FROM my_emp_table WHERE first_name = 'David';
     

UPDATE my_emp_table SET salary = (salary * 1.10);

TRUNCATE TABLE my_emp_table;
SELECT * FROM my_emp_table; 
