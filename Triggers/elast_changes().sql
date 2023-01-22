-- Function: public.elast_changes()

-- DROP FUNCTION public.elast_changes();

CREATE OR REPLACE FUNCTION public.elast_changes()
  RETURNS trigger AS
$BODY$
BEGIN
 IF NEW.elast <> OLD.elast THEN
 INSERT INTO employeet(elast,changed_on)
 VALUES(OLD.elast,now());
 END IF;
 
 RETURN NEW;
END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
ALTER FUNCTION public.elast_changes()
  OWNER TO vaso_1;
