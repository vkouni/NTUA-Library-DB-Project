-- Table: public.member

-- DROP TABLE public.member;

CREATE TABLE public.member
(
  memberid integer NOT NULL,
  mfirst text,
  mlast text,
  street integer,
  numbers integer,
  postalcode integer,
  mbirthdate date,
  CONSTRAINT member_pkey PRIMARY KEY (memberid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE public.member
  OWNER TO vaso_1;
GRANT ALL ON TABLE public.member TO vaso_1;
GRANT ALL ON TABLE public.member TO public;
