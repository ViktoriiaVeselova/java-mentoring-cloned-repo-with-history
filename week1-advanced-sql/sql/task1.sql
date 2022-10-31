--Select all primary skills that contain more than one word
--(please note that both ‘-‘ and ‘ ’ could be used as a separator) – 0.2 points.
SELECT primary_skill FROM student
WHERE primary_skill LIKE '%-%'
OR primary_skill LIKE '% %';