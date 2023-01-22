-- Table: public.copiesnew

-- DROP TABLE public.copiesnew;

CREATE TABLE public.copiesnew
(
  shelf character varying,
  changed_on timestamp without time zone
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.copiesnew
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.copiesnew TO vaso_1;
GRANT ALL ON TABLE public.copiesnew TO public;
