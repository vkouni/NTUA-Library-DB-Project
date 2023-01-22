-- View: public.maxcopies

-- DROP VIEW public.maxcopies;

CREATE OR REPLACE VIEW public.maxcopies AS 
 SELECT copies.isbn,
    count(*) AS count
   FROM copies
  GROUP BY copies.isbn
  ORDER BY (count(*)) DESC
 LIMIT 2;

ALTER TABLE public.maxcopies
  OWNER TO vaso_1;
