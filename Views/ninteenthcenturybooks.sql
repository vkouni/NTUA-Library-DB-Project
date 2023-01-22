-- View: public.ninteenthcenturybooks

-- DROP VIEW public.ninteenthcenturybooks;

CREATE OR REPLACE VIEW public.ninteenthcenturybooks AS 
 SELECT book.isbn,
    book.title,
    book.pubyear,
    book.numpages,
    book.pubname
   FROM book
  WHERE book.pubyear < 1900;

ALTER TABLE public.ninteenthcenturybooks
  OWNER TO vaso_1;
