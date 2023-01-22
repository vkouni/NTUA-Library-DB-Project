-- Table: public.author

-- DROP TABLE public.author;

CREATE TABLE public.author
(
  authid integer NOT NULL,
  afirst text,
  alast text,
  abirthdate date,
  CONSTRAINT author_pkey PRIMARY KEY (authid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.author
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.author TO vaso_1;
GRANT ALL ON TABLE public.author TO public;
