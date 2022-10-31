--Select all students whose average mark is bigger than overall average mark. – 0.3 points.
SELECT  sd.id AS student_id, AVG (e.mark) AS average_mark
FROM student sd
INNER JOIN exam_result e
ON sd.id = e.student_id
GROUP BY sd.id
HAVING AVG(e.mark) > (SELECT AVG(mark) FROM exam_result);