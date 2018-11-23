DROP TABLE IF EXISTS public.City CASCADE;
DROP SEQUENCE IF EXISTS City_id_seq;

CREATE SEQUENCE City_id_seq;
CREATE TABLE public.City(
	Id integer NOT NULL DEFAULT nextval('City_id_seq'),
	Name character varying(50) NOT NULL,
	StateId character(2) NOT NULL references State(Id),
	Active bit NOT NULL,
	ModifiedDt timestamp NOT NULL,
	CreateDt timestamp NOT NULL,
 CONSTRAINT PK_City PRIMARY KEY (Id)
 );
 
GRANT SELECT, UPDATE ON SEQUENCE public.city_id_seq TO dbuser;

GRANT SELECT, UPDATE, INSERT, DELETE, TRUNCATE ON TABLE public.city TO dbuser;