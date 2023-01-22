-- Table: public.belongs_to

-- DROP TABLE public.belongs_to;

CREATE TABLE public.belongs_to
(
  isbn integer NOT NULL,
  categoryname text NOT NULL,
  CONSTRAINT belongs_to_pkey PRIMARY KEY (isbn, categoryname),
  CONSTRAINT belongs_to_categoryname_fkey FOREIGN KEY (categoryname)
      REFERENCES public.category (categoryname) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT belongs_to_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES public.book (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.belongs_to
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.belongs_to TO vaso_1;
GRANT ALL ON TABLE public.belongs_to TO public;
