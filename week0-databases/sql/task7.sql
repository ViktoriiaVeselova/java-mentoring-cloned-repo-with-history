--7. Create snapshot that will contain next data: student name, student surname, subject name, mark
--(snapshot means that in case of changing some data in source table – your snapshot should not change). (0.3 point)
CREATE MATERIALIZED VIEW students_marks
AS
SELECT s.name, s.surname, su.name, e.mark FROM students s
INNER JOIN exam_results e ON s.id=e.student_id
INNER JOIN subjects su ON e.subject_id=su.id
WITH DATA;