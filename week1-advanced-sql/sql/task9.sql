--Select students who does not pass any exam using each the following operator: – 0.5 points.
 --Outer join
 --Subquery with ‘not in’ clause
 -- Subquery with ‘any ‘ clause
--Check which approach is faster for 1000, 10K, 100K exams and 10, 1K, 100K students


--Outer join
SELECT *
FROM student s
LEFT OUTER JOIN exam_result e
ON s.id = e.student_id
WHERE e.id ISNULL;

----Subquery with ‘not in’ clause
SELECT *
FROM student s
WHERE s.id NOT IN (SELECT student_id FROM exam_result);

---- Subquery with ‘any ‘ clause
SELECT *
FROM student
WHERE NOT (id = ANY (SELECT student_id FROM exam_result));

