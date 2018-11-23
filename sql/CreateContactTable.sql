DROP TABLE IF EXISTS public.Contact;
DROP SEQUENCE IF EXISTS public.Contact_id_seq;

CREATE SEQUENCE Contact_id_seq;
CREATE TABLE public.Contact(
	Id integer NOT NULL DEFAULT nextval('Contact_id_seq'),
	FirstName character varying(25) NOT NULL,
	LastName character varying(30) NOT NULL,
	Address1 character varying(40) NULL,
	Address2 character varying(30) NULL,
	Notes character varying(150) NULL,
	ZipCode character varying(10) NULL,
	HomePhone character varying(10) NULL,
	WorkPhone character varying(10) NULL,
	CellPhone character varying(10) NULL,
	EMail character varying(4000) NULL,
	CityId integer NOT NULL references City(Id),
	Active bit NOT NULL,
	ModifiedDt timestamp NOT NULL,
	CreateDt timestamp NOT NULL,
 CONSTRAINT PK_Contact PRIMARY KEY (Id)
);

GRANT SELECT, UPDATE ON SEQUENCE public.contact_id_seq TO dbuser;

GRANT SELECT, UPDATE, INSERT, DELETE, TRUNCATE ON TABLE public.contact TO dbuser;