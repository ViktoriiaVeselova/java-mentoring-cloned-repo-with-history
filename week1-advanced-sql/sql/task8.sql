--Select all subjects which exams passed only students with the different primary skills.
--It means that all students passed the exam for the one subject must have different primary skill. – 0.4 points.
WITH exams AS (
	SELECT su.name, sd.primary_skill, su.id, COUNT (*) AS total
	FROM student sd
	INNER JOIN exam_result e
	ON sd.id = e.student_id
	INNER JOIN subject su
	ON e.subject_id = su.id
	GROUP BY su.name, sd.primary_skill, su.id
	HAVING su.name = sd.primary_skill
	)

SELECT *
FROM subject
WHERE id NOT IN (SELECT id FROM exams);