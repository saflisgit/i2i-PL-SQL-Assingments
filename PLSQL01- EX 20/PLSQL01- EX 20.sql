CREATE OR REPLACE PROCEDURE write_dots(line_number  IN INT ) as
BEGIN
FOR i IN 1..line_number
LOOP
    dbms_output.put('*');
END LOOP;
    DBMS_OUTPUT.NEW_LINE;
END write_dots;

CREATE OR REPLACE PROCEDURE write_spaces(line_number  IN INT, total_lines IN INT ) AS
BEGIN
FOR i IN 1..total_lines-line_number
LOOP
 dbms_output.put(' ');
END LOOP;
END write_spaces;

CREATE OR REPLACE PROCEDURE PALETTE(pin_max_dots IN NUMBER) 
AS
    counter INT := 0;
BEGIN
    WHILE counter < pin_max_dots
    LOOP
         write_spaces(counter,pin_max_dots);
         write_dots(2*counter - 1);
         counter := counter + 1;
    END LOOP;
    counter := 0;
    WHILE counter < pin_max_dots
    LOOP
         write_spaces(pin_max_dots - counter,pin_max_dots);
         write_dots(2*pin_max_dots - 2*counter - 1);
         counter := counter + 1;
    END LOOP;


END;


BEGIN 
    PALETTE(9);
END;
