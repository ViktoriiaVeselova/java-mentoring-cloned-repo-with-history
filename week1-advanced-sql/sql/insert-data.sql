INSERT INTO student (name, surname, primary_skill)
VALUES
('Michael', 'Scott',  'English'),
('Dwigth', 'Schrute', 'Marketing'),
('Ryan', 'Howard',  'Management'),
('Kevin', 'Maloone', 'Accounting');

INSERT INTO subject (name, tutor)
VALUES
('Literature', 'Mark Twain'),
('English', 'Hunter Thompson'),
('Clean Code', 'Bob Martin'),
('T-D-D', 'Bob Martin'),
('Math', 'Pythagoras');

INSERT INTO exam_result (student_id, subject_id, mark)
VALUES
(1,1,5),
(1,2,8),
(1,3,7),
(1,4,9),
(2,1,10),
(2,2,6),
(2,3,3),
(2,4,5),
(3,1,2),
(3,2,4),
(3,3,8),
(3,4,9),
(4,1,7),
(4,2,7),
(4,3,10),
(4,4,1);

INSERT INTO phone (student_id, number)
VALUES
(1, '+4545444545'),
(2, '+4685444545'),
(3, '+46835444545'),
(4, '+5454541111');

