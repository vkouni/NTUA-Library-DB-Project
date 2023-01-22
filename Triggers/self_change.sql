-- Trigger: self_change on public.copies

-- DROP TRIGGER self_change ON public.copies;

CREATE TRIGGER self_change
  BEFORE UPDATE
  ON public.copies
  FOR EACH ROW
  EXECUTE PROCEDURE public.shelf_change();
