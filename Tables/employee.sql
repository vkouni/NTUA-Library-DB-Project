-- Table: public.employee

-- DROP TABLE public.employee;

CREATE TABLE public.employee
(
  empid integer NOT NULL,
  efirst text,
  elast text,
  salary integer,
  CONSTRAINT employee_pkey PRIMARY KEY (empid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.employee
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.employee TO vaso_1;
GRANT ALL ON TABLE public.employee TO public;

-- Trigger: elast_changes on public.employee

-- DROP TRIGGER elast_changes ON public.employee;

CREATE TRIGGER elast_changes
  BEFORE UPDATE
  ON public.employee
  FOR EACH ROW
  EXECUTE PROCEDURE public.elast_changes();

