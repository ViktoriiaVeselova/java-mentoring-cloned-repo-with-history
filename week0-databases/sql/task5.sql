--5. Add trigger that will update column updated_datetime to current date in case of updating any of student. (0.3 point)
CREATE OR REPLACE FUNCTION update_date()
  RETURNS trigger AS
$$
BEGIN
		NEW.updated_datetime= = now();
		RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';


CREATE TRIGGER student_update_trigger
BEFORE UPDATE
OF name, surname,birth_date, phone_number,primary_skill
ON students
FOR EACH ROW
EXECUTE PROCEDURE update_date();