CREATE OR REPLACE PACKAGE DISPLAY_NAME_PACKAGE
IS
PROCEDURE display_employee_name_by_id(pin_employee_id IN NUMBER);
END DISPLAY_NAME_PACKAGE;

CREATE OR REPLACE PACKAGE BODY DISPLAY_NAME_PACKAGE
IS
    PROCEDURE display_employee_name_by_id(pin_employee_id IN NUMBER)
    IS
        vs_first_name VARCHAR(20);
    BEGIN
        SELECT first_name 
        INTO vs_first_name 
        FROM HR.EMPLOYEES 
        WHERE employee_ıd = pin_employee_id;
        
        DBMS_OUTPUT.PUT_LINE(vs_first_name);
        
    END;
BEGIN	
    dbms_output.put_line('DISPLAY_NAME_PACKAGE');
END DISPLAY_NAME_PACKAGE;

BEGIN 
    DISPLAY_NAME_PACKAGE.display_employee_name_by_id(100);
END;
