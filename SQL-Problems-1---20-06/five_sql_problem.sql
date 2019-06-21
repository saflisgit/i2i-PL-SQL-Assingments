
--Create a report that displays the employee’s id and their manager’s id. (Please use HR.EMPLOYEES table)
SELECT E.employee_id,M.manager_id FROM HR.EMPLOYEES E, HR.EMPLOYEES M WHERE e.employee_ıd = m.employee_ıd;


select employee_id, manager_id From HR.EMPLOYEES;

----------------------------------------------------------------------------------------------------------


--Write an SQL query that selects employee’s id, employee’s first name and employee’s department name for all employees. (Please use HR.EMPLOYEES and HR.DEPARTMENTS tables.)
SELECT E.employee_id,E.first_name,H.department_name FROM HR.EMPLOYEES E, HR.DEPARTMENTS H WHERE E.department_id = H.department_ıd; 


----------------------------------------------------------------------------------------------------------


--Write a PL/SQL program that prints out all even numbers between 1 and 20.
DECLARE 
    x number(2); 
BEGIN 
    FOR x IN 0 .. 10 LOOP 
        dbms_output.put_line('value of a: ' || x*2); 
    END LOOP; 
END; 

----------------------------------------------------------------------------------------------------------


--Write a PL/SQL program that extracts a structured text into meaningful pieces. Be careful to the sample input and output.

CREATE OR REPLACE PROCEDURE lower_name(pis_first_name IN VARCHAR2,pis_last_name IN VARCHAR2)
AS

    vs_last_name VARCHAR2(20);
    vs_first_name VARCHAR2(20);
    
BEGIN     
    vs_first_name := lower(pis_first_name);
    vs_last_name := lower(pis_last_name);
    
    DBMS_OUTPUT.PUT_LINE('NAME SURNAME = ' || vs_first_name || ' ' || vs_last_name);
END;
    
END;

CREATE OR REPLACE PROCEDURE initcap_name(pis_first_name IN VARCHAR2,pis_last_name IN VARCHAR2)
AS

    vs_last_name VARCHAR2(20);
    vs_first_name VARCHAR2(20);
    
BEGIN     
    vs_first_name := initcap(pis_first_name);
    vs_last_name := initcap(pis_last_name);
    
    DBMS_OUTPUT.PUT_LINE('NAME SURNAME = ' || vs_first_name || ' ' || vs_last_name);
END;


BEGIN
    initcap_name('MELİH','DOĞRUL');
    lower_name('MELİH','DOĞRUL');
END;
----------------------------------------------------------------------------------------------------------
-- Write a PL/SQL program that prints out all first and last names from HR.EMPLOYEES table.
BEGIN
  FOR employee IN (SELECT first_name,last_name FROM HR.EMPLOYEES)
  LOOP
     DBMS_OUTPUT.PUT_LINE( 'First name- Last Name =  ' || employee.first_name || ' ' ||  employee.last_name );
  END LOOP;
END;
    
----------------------------------------------------------------------------------------------------------    
    
    
    
