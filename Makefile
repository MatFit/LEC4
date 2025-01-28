CXX = g++
CXXFLAGS = -std=c++17 -Wall -Werror -Wpedantic
CXXTESTFLAGS = --coverage  # For test coverage
CXXGDB = -ggdb             # For debugging

all: test

clean:
	rm -f test functions_to_implement.o

test: functions_to_implement.o test.cpp
	$(CXX) $(CXXFLAGS) $(CXXTESTFLAGS) test.cpp functions_to_implement.o -o test

functions_to_implement.o: functions_to_implement.cpp
	$(CXX) $(CXXFLAGS) -c functions_to_implement.cpp -o functions_to_implement.o