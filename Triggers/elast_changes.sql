-- Trigger: elast_changes on public.employee

-- DROP TRIGGER elast_changes ON public.employee;

CREATE TRIGGER elast_changes
  BEFORE UPDATE
  ON public.employee
  FOR EACH ROW
  EXECUTE PROCEDURE public.elast_changes();
