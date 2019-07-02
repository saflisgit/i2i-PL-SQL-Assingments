DECLARE
    v_input_name varchar(20);
    v_index int;
    v_name varchar(20);
     
BEGIN

    v_input_name:= 'melih#1996';
    v_index := INSTR(v_input_name, '#');
    SELECT SUBSTR(v_input_name,0,v_index-1) INTO v_name FROM DUAL;
    SELECT INITCAP(v_name) INTO v_name FROM DUAL;
    dbms_output.put_line ('Name is: ' || v_name);

END;
