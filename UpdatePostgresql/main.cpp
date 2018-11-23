//Read Postgresql database from C++ (main.cpp)
//Link: https://www.tutorialspoint.com/postgresql/postgresql_c_cpp.htm
//      http://www.postgresqltutorial.com/
#include <iostream>
#include <string>
#include <exception>
#include <pqxx/pqxx>
#include <pqxx/pqxx>
#include "../Common/Database.h"

using std::cout;
using std::endl;
using std::string;

int main(int argc, char** argv)
{
  Database* db;
  pqxx::connection* conn;
  pqxx::work* dbCommand;
  pqxx::nontransaction* dbQuery;
  pqxx::result* rs;
  string sqlInsert = "INSERT INTO CONTACT (firstname,lastname,address1,address2,notes,zipcode," \
		"homephone,workphone,cellphone,email,cityid,active,modifieddt,createdt)" \
		"VALUES($1::varchar,$2::varchar,$3::varchar,$4::varchar,$5::varchar,$6::varchar," \
		"$7::varchar,$8::varchar,$9::varchar,$10::varchar,$11::integer,B'1',LOCALTIMESTAMP,LOCALTIMESTAMP) RETURNING id";
  string sqlUpdate = "UPDATE CONTACT SET email='TestUser@Test.Com' WHERE id=$1";
  string sqlQuery = "SELECT id,firstname,lastname,email FROM CONTACT;";
  string sqlDelete = "DELETE FROM CONTACT WHERE id=$1";
  string sqlInsertState = "SELECT AddState($1::varchar, $2::varchar);";              // Stored Procedure
  int newId = -1;
  string firstName = "Test";  string lastName = "User";
  string address1= "Test";  string address2 = "";
  string notes = ""; string zipCode = "99999";
  string homePhone = "5555551212";  string workPhone = "5555551212"; string cellPhone = "5555551212";
  string email = "Test@Test.Com"; int cityId = 1;
  string stateId = "VA";
  string stateDescription = "Virginia";

  cout << "Read Postgresql database" << endl;
  
  try {
	db = new Database();
	conn = db->Connection();
	
	if ((conn != NULL) && (conn->is_open())) {

	    // Create transaction object
		dbCommand = new pqxx::work(*conn);
		//********** Insert a new customer   ************/
		// Execute statement and commit
		conn->prepare("insert", sqlInsert);
		rs = new pqxx::result(dbCommand->prepared("insert")
			(firstName)(lastName)(address1)(address2)(notes)(zipCode)
			(homePhone)(workPhone)(cellPhone)(email)(cityId).exec());
		dbCommand->commit();
		pqxx::tuple row = rs->at(0);
		newId = row[0].as<int>();
		//cout << "\tNew id: " << newId << endl;
		cout << "\tAdded contact: " << newId << endl;
		delete(rs);
		delete(dbCommand);		
		
		//********** Update the new customer ************/
		dbCommand = new pqxx::work(*conn);
		// Execute statement and commit
		conn->prepare("update", sqlUpdate);
		rs = new pqxx::result(dbCommand->prepared("update")(newId).exec());
		dbCommand->commit();
		cout << "\tUpdated contact: " << newId << endl;
		delete(rs);
		delete(dbCommand);		
		
		/*********** Display all customers   ************/
		dbQuery = new pqxx::nontransaction(*conn);
		// Execute query
		rs = new pqxx::result(dbQuery->exec(sqlQuery));
		for (pqxx::result::const_iterator row = rs->begin(); row != rs->end(); row++) {
			cout << "\t|" << row[0].as<int>() << "|" << row[1].as<string>() << "|"
			<< row[2].as<string>() << "|" << row[3].as<string>() << "|" << endl;
		}
		dbQuery->commit();
		delete(rs);
		delete(dbQuery);		
		
		//********** Delete the new customer ************/
		dbCommand = new pqxx::work(*conn);
		// Create transaction object, execute statement, and commit
		conn->prepare("delete", sqlDelete);
		rs = new pqxx::result(dbCommand->prepared("delete")(newId).exec());
		dbCommand->commit();
		cout << "\tDeleted contact: " << newId << endl;
		delete(rs);
		delete(dbCommand);		
		
		//********** Add the new state via Stored Procedure ************/
		dbCommand = new pqxx::work(*conn);
		// Execute statement and commit
		conn->prepare("insertState", sqlInsertState);
		rs = new pqxx::result(dbCommand->prepared("insertState")
			(stateId)
			(stateDescription).exec());
		dbCommand->commit();
		cout << "\tAdded new state: " << stateId << endl;
		delete(rs);
		delete(dbCommand);		

		// Cleanup
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


