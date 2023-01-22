-- Table: public.temporary_employee

-- DROP TABLE public.temporary_employee;

CREATE TABLE public.temporary_employee
(
  empid integer NOT NULL,
  contractnr integer,
  CONSTRAINT temporary_employee_pkey PRIMARY KEY (empid),
  CONSTRAINT temporary_employee_empid_fkey FOREIGN KEY (empid)
      REFERENCES public.employee (empid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.temporary_employee
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.temporary_employee TO vaso_1;
GRANT ALL ON TABLE public.temporary_employee TO public;
