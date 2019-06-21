
--Write an SQL query that selects first name of the employee with highest employee id.(Please use HR.EMPLOYEES table)

SELECT first_name 
FROM HR.employees 
WHERE employee_id = ( SELECT max(employee_id)  FROM HR.EMPLOYEES);

----------------------------------------------------------------------------------------------------------

SELECT * FROM HR.EMPLOYEES WHERE employee_ıd = 100  ;

----------------------------------------------------------------------------------------------------------

--Create a report that displays all employees, and indicate with the words Yes or No whether they receive a commission. (Please use HR.EMPLOYEES table)
SELECT
  last_name, salary, DECODE(commission_pct,NULL,'no','yes') as Commission
FROM
  HR.employees;
  
----------------------------------------------------------------------------------------------------------

--For example; first three character of PHONE_NUMBER column gives us a operator of employee. Create a report that displays the operators and their total subscriber. But we want two different displays with diffrent queries. (Please use HR.EMPLOYEES table)


SELECT substr(phone_number,0,3) as operator, COUNT(*) FROM HR.EMPLOYEES GROUP BY substr(phone_number,0,3);

SELECT * FROM HR.EMPLOYEES ;
----------------------------------------------------------------------------------------------------------
--Create a table (table name like HR.EMP) from HR.EMPLOYEES table. Insert a new row to HR.EMP table and update this employee’s phone number and salary. Delete your new row and display the HR.EMP table. Finally drop your table HR.EMP.

CREATE TABLE EMP AS SELECT * FROM HR.EMPLOYEES WHERE 1=0;

INSERT INTO EMP VALUES(100,'Melih','DOĞRUL', 'mail@mail','555.32.32','17/06/06', 'intern', 2000, 0.3,200, 20);

SELECT * FROM EMP WHERE employee_id = 100;

DELETE FROM EMP WHERE employee_id = 1 00;

SELECT * FROM EMP;

DROP TABLE EMP;
