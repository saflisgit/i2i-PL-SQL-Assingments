

DECLARE max_line int := 40;
        counter int := 0;

BEGIN
WHILE counter < max_line
LOOP
     write_spaces(counter,max_line);
     write_dots(2*counter - 1);
     counter := counter + 1;
END LOOP;
END;

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
