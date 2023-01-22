-- Table: public.reminder

-- DROP TABLE public.reminder;

CREATE TABLE public.reminder
(
  empid integer NOT NULL,
  memberid integer NOT NULL,
  isbn integer NOT NULL,
  copynr integer NOT NULL,
  date_of_borrowing date NOT NULL,
  date_of_reminder date NOT NULL,
  CONSTRAINT reminder_pkey PRIMARY KEY (empid, memberid, isbn, copynr, date_of_borrowing, date_of_reminder),
  CONSTRAINT reminder_empid_fkey FOREIGN KEY (empid)
      REFERENCES public.employee (empid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT reminder_isbn_fkey FOREIGN KEY (isbn)
      REFERENCES public.book (isbn) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT reminder_isbn_fkey1 FOREIGN KEY (isbn, copynr)
      REFERENCES public.copies (isbn, copynr) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT reminder_memberid_fkey FOREIGN KEY (memberid)
      REFERENCES public.member (memberid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT reminder_memberid_fkey1 FOREIGN KEY (memberid, isbn, copynr, date_of_borrowing)
      REFERENCES public.borrows (memberid, isbn, copynr, date_of_borrowing) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.reminder
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.reminder TO vaso_1;
GRANT ALL ON TABLE public.reminder TO public;
