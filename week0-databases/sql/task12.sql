--12. Extra point 2 (1 point). Implement immutable data trigger. Create new table student_address.
--Add several rows with test data and do not give acces to update any information inside it.
--Hint: you can create trigger that will reject any update operation for target table,
--but save new row with updated (merged with original) data into separate table.
CREATE OR REPLACE FUNCTION update_address()
RETURNS trigger AS
$$
BEGIN
	IF NEW <> OLD THEN
		 INSERT INTO student_address_updated(address_id, postal_code, country, city, street, house)
		 VALUES(OLD.id, NEW.postal_code, NEW.country, NEW.city, NEW.street, NEW.house);
	END IF;
	RETURN NULL;
END;
$$
LANGUAGE 'plpgsql';


CREATE TRIGGER address_update_trigger
BEFORE UPDATE
OF postal_code, country, city, street, house
ON student_address
FOR EACH ROW
EXECUTE PROCEDURE update_address();