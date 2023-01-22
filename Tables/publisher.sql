-- Table: public.publisher

-- DROP TABLE public.publisher;

CREATE TABLE public.publisher
(
  pubname text NOT NULL,
  estyear integer,
  street text,
  numbers integer,
  postalcode integer,
  CONSTRAINT publisher_pkey PRIMARY KEY (pubname)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.publisher
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.publisher TO vaso_1;
GRANT ALL ON TABLE public.publisher TO public;

-- Index: public.postalcode

-- DROP INDEX public.postalcode;

CREATE INDEX postalcode
  ON public.publisher
  USING btree
  (pubname COLLATE pg_catalog."default" DESC NULLS LAST);

