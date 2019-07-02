CREATE OR REPLACE PACKAGE DISPLAY_ALL_NAMES_PACKAGE
IS
PROCEDURE display_all_employee_names;
END DISPLAY_ALL_NAMES_PACKAGE;

CREATE OR REPLACE PACKAGE BODY DISPLAY_ALL_NAMES_PACKAGE
IS
    PROCEDURE display_all_employee_names
    IS
        
    BEGIN
        FOR employee 
        IN
            (   SELECT first_name 
                FROM HR.EMPLOYEES  )
        LOOP
            DBMS_OUTPUT.PUT_LINE(employee.first_name);
        END LOOP ;
        
    END;
BEGIN	
    dbms_output.put_line('DISPLAY_NAME_PACKAGE');
END DISPLAY_ALL_NAMES_PACKAGE;

BEGIN 
    DISPLAY_ALL_NAMES_PACKAGE.display_all_employee_names;
END;







