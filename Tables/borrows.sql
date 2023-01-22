-- Table: public.borrows

-- DROP TABLE public.borrows;

CREATE TABLE public.borrows
(
  memberid integer NOT NULL,
  isbn integer NOT NULL,
  copynr integer NOT NULL,
  date_of_borrowing date NOT NULL,
  date_of_return date,
  CONSTRAINT borrows_pkey PRIMARY KEY (memberid, isbn, copynr, date_of_borrowing),
  CONSTRAINT borrows_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES public.book (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT borrows_isbn_fkey1 FOREIGN KEY (isbn, copynr)
      REFERENCES public.copies (isbn, copynr) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT borrows_memberid_fkey FOREIGN KEY (memberid)
      REFERENCES public.member (memberid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.borrows
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.borrows TO vaso_1;
GRANT ALL ON TABLE public.borrows TO public;
