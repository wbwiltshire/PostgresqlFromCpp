--
-- SELECT AddState('VA', 'Virginia');
-- Link: http://sqlines.com/postgresql/stored_procedures_functions
--       https://www.postgresql.org/docs/9.5/sql-createfunction.html
--
	
CREATE OR REPLACE FUNCTION AddState(id CHAR(2), name VARCHAR(30)) 
    RETURNS void AS $$
    BEGIN
      INSERT INTO state (id, name, active, modifieddt, createdt) 
	         VALUES (id,name,B'1',LOCALTIMESTAMP,LOCALTIMESTAMP);
    END;
$$ LANGUAGE plpgsql;

-- DROP FUNCTION AddState;