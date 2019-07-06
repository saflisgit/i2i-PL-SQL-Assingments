--------------------------------------------------------------------------------------
ALTER TABLE HR.EMPLOYEES ADD (MAX_SALARY INT); 

UPDATE HR.EMPLOYEES SET MAX_SALARY = (SELECT MAX(SALARY) FROM HR.EMPLOYEES);

DELETE FROM HR.EMPLOYEES WHERE SALARY = (SELECT MIN(SALARY) FROM HR.EMPLOYEES);

--------------------------------------------------------------------------------------

CREATE INDEX DPR_NAME_IDX
  ON HR.DEPARTMENTS (DEPARTMENT_NAME);

ALTER TABLE HR.EMPLOYEES
ADD CONSTRAINT CNSTR_SALARY CHECK (SALARY BETWEEN 1000 AND 1000000 );



ALTER TABLE HR.EMPLOYEES
DISABLE CONSTRAINT CNSTR_SALARY;

ALTER TABLE HR.EMPLOYEES
ENABLE CONSTRAINT CNSTR_SALARY;

ALTER TABLE HR.EMPLOYEES
DROP CONSTRAINT CNSTR_SALARY;

--------------------------------------------------------------------------------------

CREATE TABLE DEPARTMENT_MERGE AS SELECT DISTINCT department_id FROM HR.EMPLOYEES WHERE department_ıd IS not null;
DROP table DEPARTMENT_MERGE;
ALTER TABLE DEPARTMENT_MERGE ADD  (department_name VARCHAR2(50));

MERGE INTO DEPARTMENT_MERGE DM USING HR.DEPARTMENTS D
    ON (DM.department_id = D.department_id)
    WHEN MATCHED THEN
            UPDATE SET DM.department_name = D.department_name
    WHEN NOT MATCHED THEN
            INSERT (department_id,department_name)
            VALUES(D.department_id, D.department_name);

SELECT * FROM DEPARTMENT_MERGE;

SELECT * FROM HR.DEPARTMENTS;



--------------------------------------------------------------------------------------
WITH    EMP_INFO AS 
        (   SELECT FIRST_NAME, LAST_NAME,JOB_ID,DEPARTMENT_ID,SALARY 
            FROM HR.EMPLOYEES 
            WHERE JOB_ID LIKE 'S%' ),
        MAX_MIN_SALARY AS 
        (   SELECT MAX(SALARY) AS MAXSALARY, MIN(SALARY) AS MINSALARY, DEPARTMENT_ID 
            FROM HR.EMPLOYEES 
            GROUP BY DEPARTMENT_ID) 
SELECT EMP_INFO.FIRST_NAME ||' '||EMP_INFO.LAST_NAME AS FULL_NAME , EMP_INFO.SALARY ,MAX_MIN_SALARY.MAXSALARY
FROM EMP_INFO
WHERE EMP_INFO.DEPARTMENT_ID = MAX_MIN_SALARY.DEPARTMENT_ID;




--------------------------------------------------------------------------------------
--COMMIT statement commits all changes for the current transaction. Once a commit is issued, other users will be able to see your changes.

--The ROLLBACK statement is used to undo the work performed by the current transaction or a transaction that is in doubt.


