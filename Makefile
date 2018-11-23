all: 
	make -C ReadPostgresql
	make -C UpdatePostgresql

ReadPostgresql/readPostgresql: 
	make -C ReadPostgresql

UpdatePostgresql/updatePostgresql: 
	make -C UpdatePostgresql

clean:
	make -C ReadPostgresql clean
	make -C UpdatePostgresql clean
