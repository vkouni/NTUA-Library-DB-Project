-- Table: public.category

-- DROP TABLE public.category;

CREATE TABLE public.category
(
  categoryname text NOT NULL,
  supercategoryname text,
  CONSTRAINT category_pkey PRIMARY KEY (categoryname),
  CONSTRAINT category_supercategoryname_fkey FOREIGN KEY (supercategoryname)
      REFERENCES public.category (categoryname) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.category
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.category TO vaso_1;
GRANT ALL ON TABLE public.category TO public;
