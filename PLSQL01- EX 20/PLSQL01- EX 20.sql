CREATE OR REPLACE PACKAGE PALETTE_PACKAGE IS
PROCEDURE write_dots(line_number  IN INT );
PROCEDURE write_spaces(line_number  IN INT, total_lines IN INT );
PROCEDURE PALETTE(pin_max_dots IN NUMBER);
END PALETTE_PACKAGE;

CREATE OR REPLACE PACKAGE BODY PALETTE_PACKAGE
IS
    PROCEDURE write_dots(line_number  IN INT ) 
    IS
    BEGIN
    FOR i IN 1..line_number
    LOOP
        dbms_output.put('*');
    END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END write_dots;
    
    PROCEDURE write_spaces(line_number  IN INT, total_lines IN INT ) 
    IS
    BEGIN
        FOR i IN 1..total_lines-line_number
        LOOP
         dbms_output.put(' ');
        END LOOP;
    END write_spaces;

    PROCEDURE PALETTE(pin_max_dots IN NUMBER) 
    IS
        counter INT := 0;
    BEGIN
        WHILE counter < pin_max_dots
        LOOP
             PALETTE_PACKAGE.write_spaces(counter,pin_max_dots);
             PALETTE_PACKAGE.write_dots(2*counter - 1);
             counter := counter + 1;
        END LOOP;
        counter := 0;
        WHILE counter < pin_max_dots
        LOOP
             PALETTE_PACKAGE.write_spaces(pin_max_dots - counter,pin_max_dots);
             PALETTE_PACKAGE.write_dots(2*pin_max_dots - 2*counter - 1);
             counter := counter + 1;
        END LOOP;

    END;
    
END PALETTE_PACKAGE;

BEGIN
    palette_package.palette(7);
END;
