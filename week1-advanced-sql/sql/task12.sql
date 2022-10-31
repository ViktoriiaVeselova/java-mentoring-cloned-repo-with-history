--Select biggest mark for each student and add text description for the mark (use COALESCE and WHEN operators) – 0.3 points.
  --In case if student has not passed any exam ‘not passed' should be returned.
  --If student mark is 1,2,3 – it should be returned as ‘BAD’
  --If student mark is 4,5,6 – it should be returned as ‘AVERAGE’
  --If student mark is 7,8 – it should be returned as ‘GOOD’
  --If student mark is 9,10 – it should be returned as ‘EXCELLENT’

  SELECT sd.id, COALESCE (MAX (e.mark), 0) as max_mark,
  CASE
   			 WHEN COALESCE (MAX (e.mark), 0) = 0 THEN 'Not Passed'
             WHEN COALESCE (MAX (e.mark), 0) > 0
                  AND COALESCE (MAX (e.mark), 0) <= 3 THEN 'Bad'
             WHEN COALESCE (MAX (e.mark), 0) > 3
                  AND COALESCE (MAX (e.mark), 0) <= 6 THEN 'Average'
             WHEN COALESCE (MAX (e.mark), 0) > 6
  		   		  AND COALESCE (MAX (e.mark), 0) <=8 THEN 'Good'
  		     WHEN COALESCE (MAX (e.mark), 0) > 8
  		   		  AND COALESCE (MAX (e.mark), 0) <=10 THEN 'Excellent'
         END mark_type

  FROM student sd
  LEFT OUTER JOIN exam_result e
  ON sd.id = e.student_id
  GROUP BY (sd.id);