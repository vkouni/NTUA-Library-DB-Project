-- Function: public.shelf_change()

-- DROP FUNCTION public.shelf_change();

CREATE OR REPLACE FUNCTION public.shelf_change()
  RETURNS trigger AS
$BODY$
BEGIN
 IF NEW.shelf<> OLD.shelf THEN
 INSERT INTO copiesnew( shelf,changed_on)
 VALUES(OLD.shelf,now());
 END IF;
 
 RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.shelf_change()
  OWNER TO vaso_1;
