-- Table: public.stg_Consumer_Complaints

-- DROP TABLE IF EXISTS public."stg_Consumer_Complaints";

CREATE TABLE IF NOT EXISTS public."stg_Consumer_Complaints"
(
    "Date received" character varying(255) COLLATE pg_catalog."default",
    "Product" character varying(255) COLLATE pg_catalog."default",
    "Sub-product" character varying(255) COLLATE pg_catalog."default",
    "Issue" character varying(255) COLLATE pg_catalog."default",
    "Sub-issue" character varying(255) COLLATE pg_catalog."default",
    "Consumer complaint narrative" text COLLATE pg_catalog."default",
    "Company public response" character varying(255) COLLATE pg_catalog."default",
    "Company" character varying(255) COLLATE pg_catalog."default",
    "State" character varying(255) COLLATE pg_catalog."default",
    "ZIP code" character varying(255) COLLATE pg_catalog."default",
    "Tags" character varying(255) COLLATE pg_catalog."default",
    "Consumer consent provided" character varying(255) COLLATE pg_catalog."default",
    "Submitted via" character varying(255) COLLATE pg_catalog."default",
    "Date sent to company" character varying(255) COLLATE pg_catalog."default",
    "Company response to consumer" character varying(255) COLLATE pg_catalog."default",
    "Timely response" character varying(255) COLLATE pg_catalog."default",
    "Consumer disputed" character varying(255) COLLATE pg_catalog."default",
    "Complaint ID" double precision
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."stg_Consumer_Complaints"
    OWNER to postgres;