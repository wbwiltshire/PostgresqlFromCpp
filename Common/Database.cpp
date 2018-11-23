/*************************************************************************************/
// Postgresql Database class
/*************************************************************************************/
#include "Database.h"

Database::Database() {
	const string configFile = "db.json";
	string line;
	vector<string> lines;
	string connectionString;
	JSONValue *parsed = NULL;
	JSONObject root;
	dbConnection = NULL;
	char* json;
	char* jsonPtr;
	int jsonSize = 0;

	try {
		std::ifstream config(configFile.c_str());

		if (config.is_open()) {			
			// Read configuration file and determine number of bytes to allocate
			// for JSON parser buffer
			while (getline(config, line)) {
				if (line.size() > 0) {
					jsonSize += line.size();
					lines.push_back(line);
				}
			}
			
			// if data exists, then allocate the buffer and parse the JSON
			if (jsonSize > 0) {
				json = (char*)malloc(jsonSize);
				jsonPtr = json;
				//cout << "\tAllocate buffer for " << jsonSize<< " wide characters" << endl;
				for (std::string jsonLine : lines) {
					strncpy(jsonPtr, jsonLine.c_str(), jsonLine.size());
					jsonPtr += jsonLine.size();
				}
				
				parsed = JSON::Parse(json);
				if (parsed != NULL) {
					root = parsed->AsObject();				
					connectionString = ConnectionString(root);
					dbConnection = new pqxx::connection(connectionString);
					cout << "Opened database successfully: " << dbConnection->dbname() << endl;
				}
				else {
					printf("\tError: Config file failed to parse!\n");
				}
			}
			
			config.close();
		}
		else {
			cout << "Unable to open configuration file: " << configFile << endl;
		}
	}
	catch (const std::exception& ex) {
		cout << "Error: " << ex.what() << endl;
	}	  
}

const string Database::ConnectionString(JSONObject root) {
	wstring wDBName    = root[L"Database"]->AsString().c_str();
	wstring wUser      = root[L"User"]->AsString().c_str();
	wstring wPassword  = root[L"Password"]->AsString().c_str();
	wstring wHostAddr  = root[L"HostAddr"]->AsString().c_str();
	wstring wPort      = root[L"Port"]->AsString().c_str();
	// Convert to narrow string
	string dbname(wDBName.begin(), wDBName.end());
	string user(wUser.begin(), wUser.end());
	string password(wPassword.begin(), wPassword.end());
	string hostAddr(wHostAddr.begin(), wHostAddr.end());
	string port(wPort.begin(), wPort.end());
	
	const string cs  = "dbname= " + dbname + 
        " user=" + user + " password= " + password + 
		" hostaddr=" + hostAddr + " port=" + port;

	return cs;
}

pqxx::connection* Database::Connection() {
	return dbConnection;
}

Database::~Database() {
	if (dbConnection != NULL) {
		dbConnection->disconnect();
	}
	delete(dbConnection);
	cout << endl << "Closed database successfully!" << endl;
}
