--Select students who passed at least two exams for the same subject. – 0.3 points.
SELECT student_id, subject_id, COUNT(*) as number_of_exams
FROM exam_result
GROUP BY  student_id, subject_id
HAVING COUNT(*) > 1;