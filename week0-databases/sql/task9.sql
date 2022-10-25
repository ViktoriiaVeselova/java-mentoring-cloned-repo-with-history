--  9. Create function that will return average mark for input subject name. (0.3 point).
CREATE OR REPLACE FUNCTION get_subject_average_mark(sub_id int)
RETURNS real
LANGUAGE plpgsql
AS
$$
DECLARE
   subject_average_mark real;
BEGIN
	SELECT AVG (e.mark)
	INTO subject_average_mark
	FROM subjects s
	INNER JOIN exam_results e ON s.id=e.subject_id
	WHERE s.id = sub_id;

   RETURN subject_average_mark;
END;
$$;