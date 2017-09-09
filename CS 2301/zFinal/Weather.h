// Chris Kemerait
// weather.h
#ifndef WEATHER_H
#define WEATHER_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Value.h"
//procedures
	using namespace::std;
class Weather{
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
	void setvalues(int value, double input);
	double getvalues(int value);
//label
	void setvlabel(int value, string input);
	string getvlabel(int value);


	
private:
   string label;
   Value values[6];
};

#endif

