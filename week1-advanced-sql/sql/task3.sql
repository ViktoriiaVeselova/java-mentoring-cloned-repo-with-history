--Select number of students passed exams for each subject and order result by number of student descending. – 0.2 points.
SELECT subject_id, COUNT(*) as number_of_students_passed
FROM exam_result e
GROUP BY  subject_id
ORDER BY COUNT(*) DESC;