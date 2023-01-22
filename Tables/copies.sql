-- Table: public.copies

-- DROP TABLE public.copies;

CREATE TABLE public.copies
(
  isbn integer NOT NULL,
  copynr integer NOT NULL,
  shelf character varying,
  CONSTRAINT copies_pkey PRIMARY KEY (isbn, copynr),
  CONSTRAINT copies_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES public.book (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.copies
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.copies TO vaso_1;
GRANT ALL ON TABLE public.copies TO public;

-- Trigger: self_change on public.copies

-- DROP TRIGGER self_change ON public.copies;

CREATE TRIGGER self_change
  BEFORE UPDATE
  ON public.copies
  FOR EACH ROW
  EXECUTE PROCEDURE public.shelf_change();

