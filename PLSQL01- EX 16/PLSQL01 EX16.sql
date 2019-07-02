CREATE OR REPLACE FUNCTION GET_DAY(pid_any_date DATE)
RETURN VARCHAR2 
AS 
    DAY_IN_STRING VARCHAR2(20);
BEGIN

    SELECT DECODE(TO_CHAR(pid_any_date,'D'),    1,'Pazartesi',
                                                2,'Salı',
                                                3,'Çarşamba',
                                                4,'Perşembe',
                                                5,'Cuma',
                                                6,'Cumartesi',
                                                7,'Pazar')
     INTO DAY_IN_STRING FROM dual;

    RETURN DAY_IN_STRING;
END GET_DAY;


CREATE OR REPLACE PROCEDURE GET_AND_PRINT_DAY(pid_any_date DATE)
IS
    day_in_string VARCHAR(20);
BEGIN
    day_in_string := get_day(pid_any_date);
    DBMS_OUTPUT.PUT_LINE(day_in_string);
END;


DECLARE
day_string VARCHAR2(20);
BEGIN
    get_and_print_day(SYSDATE);    
END;
