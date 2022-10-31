--Select number of all marks for each mark type (‘BAD’, ‘AVERAGE’,…) – 0.4 point
SELECT COUNT(*),
CASE
    WHEN COALESCE (e.mark, 0) = 0 THEN 'Not Passed'
    WHEN COALESCE (e.mark, 0) > 0
        AND COALESCE (e.mark, 0) <= 3 THEN 'Bad'
    WHEN COALESCE (e.mark, 0) > 3
        AND COALESCE (e.mark, 0) <= 6 THEN 'Average'
    WHEN COALESCE (e.mark, 0) > 6
        AND COALESCE (e.mark, 0) <= 8 THEN 'Good'
    WHEN COALESCE (e.mark, 0) > 8
        AND COALESCE (e.mark, 0) <= 10 THEN 'Excellent'
END mark_type

FROM student sd
LEFT OUTER JOIN exam_result e
ON sd.id = e.student_id
GROUP BY (e.mark);