--Select all students who does not have second name
--(it is absent or consists from only one letter/letter with dot) – 0.2 points.
SELECT * FROM student
WHERE surname  LIKE '_'
OR surname  LIKE '_.'
OR surname ISNULL;