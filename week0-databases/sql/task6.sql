--6. Add validation on DB level that will check username on special characters (reject student name with next characters '@', '#', '$'). (0.3 point)
ALTER TABLE public.students
ADD CONSTRAINT name_constraint CHECK (name !~ '[@#$]');