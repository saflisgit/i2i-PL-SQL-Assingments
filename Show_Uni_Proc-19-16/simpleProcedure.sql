DECLARE
    student_name INTERN.first_name % TYPE:= 'melih';
    university_name INTERN.university % TYPE;
    
    
PROCEDURE find_uni_by_name(student_name IN INTERN.first_name % TYPE, university_name OUT INTERN.university % TYPE ) 
IS
BEGIN
	SELECT university 
	INTO university_name
	FROM intern 
	WHERE first_name = student_name;
		
	dbms_output.put_line (university_name); 		
END;

BEGIN
  find_uni_by_name(student_name,university_name);
END;
/
