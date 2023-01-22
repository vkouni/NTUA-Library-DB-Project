CREATE INDEX postalcode
  ON public.publisher
  USING btree
  (pubname COLLATE pg_catalog."default" DESC NULLS LAST);