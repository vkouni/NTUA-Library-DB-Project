-- Table: public.written_by

-- DROP TABLE public.written_by;

CREATE TABLE public.written_by
(
  isbn integer NOT NULL,
  authid integer NOT NULL,
  CONSTRAINT written_by_pkey PRIMARY KEY (isbn, authid),
  CONSTRAINT written_by_authid_fkey FOREIGN KEY (authid)
      REFERENCES public.author (authid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT written_by_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES public.book (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.written_by
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.written_by TO vaso_1;
GRANT ALL ON TABLE public.written_by TO public;
