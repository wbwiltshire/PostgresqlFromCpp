#pragma once
/*************************************************************************************/
// Postgresql Database class header
/*************************************************************************************/
#include <iostream>
#include <exception>
#include <fstream>
#include <string>
#include <locale>
#include <pqxx/pqxx>
#include "JSON.h"

using std::cout;
using std::endl;
using std::string;
using std::wstring;
using std::vector;

class Database {
private:
	pqxx::connection* dbConnection;
	const string ConnectionString(JSONObject);
public:
	Database();
	~Database();
	pqxx::connection* Connection();
};