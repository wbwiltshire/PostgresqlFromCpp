//Read Postgresql database from C++ (main.cpp)
//Link: https://www.tutorialspoint.com/postgresql/postgresql_c_cpp.htm
#include <iostream>
#include <string>
#include <exception>
#include <pqxx/pqxx>
#include "../Common/Database.h"

using std::cout;
using std::endl;
using std::string;

int main(int argc, char** argv)
{
  Database* db;
  pqxx::connection* conn;
  pqxx::nontransaction* dbCommand;
  pqxx::result* rows;
  char sql[] = "SELECT id, firstname, lastname, email from CONTACT ORDER BY id";
  
  cout << "Read Postgresql database" << endl;
  
  try {
	db = new Database();
	conn = db->Connection();
	
	if ((conn != NULL) && (conn->is_open())) {
		// Create query object
		dbCommand = new pqxx::nontransaction(*conn);
		// Execute query
		rows = new pqxx::result(dbCommand->exec(sql));
		for (pqxx::result::const_iterator row = rows->begin(); row != rows->end(); row++) {
			cout << "\t|" << row[0].as<int>() << "|" << row[1].as<string>() << "|"
			<< row[2].as<string>() << "|" << row[3].as<string>() << "|" << endl;
		}
		
		// Cleanup
		delete(rows);
		delete(dbCommand);		
		delete(db);
  
    } else {
        cout << "\tCan't open database" << endl;
    }	
  }
  catch (const std::exception& ex) {
		cout << "Error: " << ex.what() << endl;
  }

  cout << "Read Postgresql database complete!" << endl;
  return 0;
}
