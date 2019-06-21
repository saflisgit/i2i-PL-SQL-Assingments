DECLARE
    vs_intern_first_name INTERN.first_name % TYPE;
    vs_university_name INTERN.university % TYPE;
    
    
PROCEDURE find_university_by_name(pis_intern_first_name IN intern.first_name % TYPE ,pos_university_name OUT intern.university % TYPE ) IS
BEGIN
	SELECT university 
	INTO pos_university_name
	FROM INTERN 
	WHERE first_name = pis_intern_first_name;
		
	dbms_output.put_line ('Üniversite: ' || pos_university_name); 
		
END;

BEGIN
    vs_intern_first_name := 'melih'; 
    find_university_by_name(vs_intern_first_name,vs_university_name);
END;
/
