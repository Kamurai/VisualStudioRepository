// Chris Kemerait
// month.h
#ifndef MONTH_H
#define MONTH_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Value.h"
	#include "Weather.h"
//procedures
	using namespace::std;
class Month {
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
	void setmweathers(int weather, int value, double input);
	double getmweathers(int weather, int value);
//label
	void setmwlabel(int weather, string input);
	string getmwlabel(int weather);
//beyond
//label
	void setvlabel(int weather, int value, string input);
	string getvlabel(int weather, int value);
private:
	string label;
    Weather mweathers[3];
};

#endif

