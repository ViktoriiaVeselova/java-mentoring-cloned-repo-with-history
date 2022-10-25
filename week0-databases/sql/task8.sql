--8. Create function that will return average mark for input user. (0.3 point)
CREATE OR REPLACE FUNCTION  get_student_average_mark(stud_id int)
RETURNS real
LANGUAGE plpgsql
AS
$$
DECLARE
   student_average_mark real;
BEGIN
	SELECT AVG (e.mark)
	INTO student_average_mark
	FROM students s
	INNER JOIN exam_results e ON s.id=e.student_id
	WHERE s.id = stud_id;

   RETURN student_average_mark;
END;
$$;