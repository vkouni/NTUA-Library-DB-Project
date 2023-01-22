-- Table: public.employeet

-- DROP TABLE public.employeet;

CREATE TABLE public.employeet
(
  elast character varying NOT NULL,
  changed_on timestamp(6) without time zone NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.employeet
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.employeet TO vaso_1;
GRANT ALL ON TABLE public.employeet TO public;
