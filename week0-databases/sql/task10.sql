--0. Create function that will return student at "red zone" (red zone means at least 2 marks <=3). (0.3 point)
CREATE OR REPLACE FUNCTION get_red_zone_students()
RETURNS table(id bigint, surname varchar, name varchar)
LANGUAGE plpgsql
AS
$$
BEGIN
	RETURN query
	SELECT  s.id, s.surname, s.name FROM students s
	INNER JOIN exam_results e ON s.id=e.student_id
	WHERE e.mark <= 3
	GROUP BY s.id
	HAVING COUNT(s.id) >= 2;
END;
$$;