// Chris Kemerait
// value.h
#ifndef VALUE_H
#define VALUE_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//procedures
	using namespace::std;
class Value {
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
	void setnum(double input);
	double getnum();

	
private:
	string label;
	double num;
};

#endif

