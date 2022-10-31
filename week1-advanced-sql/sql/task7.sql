--Select all subjects which exams passed only students with the same primary skills. – 0.3 points.
WITH exam_numbers AS (
    SELECT subject_id, COUNT (*) AS total
    FROM exam_result
    GROUP BY subject_id
   )

SELECT su.name, sd.primary_skill, su.id, COUNT (*)
FROM student sd
INNER JOIN exam_result e
ON sd.id = e.student_id
INNER JOIN subject su
ON e.subject_id = su.id
GROUP BY su.name, sd.primary_skill, su.id
HAVING su.name= sd.primary_skill AND
COUNT(*) = (SELECT total FROM exam_numbers WHERE su.id=subject_id);