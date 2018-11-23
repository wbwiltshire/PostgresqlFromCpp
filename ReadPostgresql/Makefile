CC=g++
CFLAGS=-c -Wall -std=c++11 -g
#CFLAGS=-c -Wall
CPPFLAGS=
LDFLAGS=-lpqxx -lpq
SOURCES=main.cpp ../Common/JSON.cpp ../Common/JSONValue.cpp ../Common/Database.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXE=readPostgresql

all: $(SOURCES) $(EXE)

$(EXE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)
	chmod 755 $(EXE)

.cpp.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) $< -o $@

clean:
	rm -f $(EXE)
	rm -f *.o
	rm -f ../Common/*.o
	
run:
	./$(EXE)
