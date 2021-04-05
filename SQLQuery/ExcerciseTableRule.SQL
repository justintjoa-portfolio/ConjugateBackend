
//I will need to fix this later

CREATE FUNCTION check_valid_excercise() RETURNS trigger
    LANGUAGE plpgsql
    AS $$BEGIN
  IF (SELECT u FROM "excercises"
      WHERE u.userid = NEW.userid AND u.name = NEW.name)
  THEN
    RAISE EXCEPTION 'This is a duplicate excercise.';
  END IF;
  RETURN NEW;
END;$$;


CREATE TRIGGER insbef_check
BEFORE INSERT ON "excercises"
FOR EACH ROW EXECUTE PROCEDURE check_valid_excercise();