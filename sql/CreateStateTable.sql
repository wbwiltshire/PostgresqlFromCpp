DROP TABLE IF EXISTS public.State CASCADE;

CREATE TABLE public.State(
	Id character(2) NOT NULL,
	Name character varying(30) NOT NULL,
	Active bit NOT NULL,
	ModifiedDt timestamp NOT NULL,
	CreateDt timestamp NOT NULL,
 CONSTRAINT PK_State PRIMARY KEY (Id)
 );
 
GRANT SELECT, UPDATE, INSERT, DELETE, TRUNCATE ON TABLE public.state TO dbuser;

