--Select top 5 students who passed their last exam better than average students. – 0.3 points.
WITH last_exams AS (SELECT MAX (e.id) as last_exam_id, e.student_id as st_id
FROM student s
INNER JOIN exam_result e
ON s.id = e.student_id
GROUP BY e.student_id)


SELECT e.id AS exam_id, e.student_id, e.subject_id, e.mark
FROM exam_result e
WHERE e.id IN (SELECT last_exam_id FROM last_exams WHERE e.student_id=st_id )
AND mark > (SELECT AVG(mark) from exam_result)
ORDER BY mark DESC LIMIT 5;