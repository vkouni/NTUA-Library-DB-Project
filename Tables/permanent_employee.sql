-- Table: public.permanent_employee

-- DROP TABLE public.permanent_employee;

CREATE TABLE public.permanent_employee
(
  empid integer NOT NULL,
  hiringdate date,
  CONSTRAINT permanent_employee_pkey PRIMARY KEY (empid),
  CONSTRAINT permanent_employee_empid_fkey FOREIGN KEY (empid)
      REFERENCES public.employee (empid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.permanent_employee
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.permanent_employee TO vaso_1;
GRANT ALL ON TABLE public.permanent_employee TO public;
