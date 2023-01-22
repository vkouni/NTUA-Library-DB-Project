-- Table: public.book

-- DROP TABLE public.book;

CREATE TABLE public.book
(
  isbn integer NOT NULL,
  title text,
  pubyear integer,
  numpages integer,
  pubname text,
  CONSTRAINT book_pkey PRIMARY KEY (isbn),
  CONSTRAINT book_pubname_fkey FOREIGN KEY (pubname)
      REFERENCES public.publisher (pubname) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.book
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.book TO vaso_1;
GRANT ALL ON TABLE public.book TO public;
