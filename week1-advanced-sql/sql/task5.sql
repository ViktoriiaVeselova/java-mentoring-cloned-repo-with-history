--Select students who passed at least two exams for different subject. – 0.3 points.
WITH exams AS (
	SELECT e.subject_id, e.student_id, COUNT(*)
	FROM student sd
	INNER JOIN exam_result e
	ON sd.id = e.student_id
	INNER JOIN subject su
	ON e.subject_id = su.id
	GROUP BY e.subject_id, e.student_id
)

SELECT student_id, COUNT(*) FROM exams
GROUP BY student_id
HAVING COUNT(*) > 1;
