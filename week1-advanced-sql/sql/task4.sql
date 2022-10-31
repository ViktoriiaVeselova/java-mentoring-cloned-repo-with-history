--Select number of students with the same exam marks for each subject. – 0.2 points.
SELECT subject_id, mark, COUNT(*) AS number_of_students_with_this_mark
FROM exam_result
GROUP BY mark, subject_id;