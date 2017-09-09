// Chris Kemerait
// year.h
#ifndef YEAR_H
#define YEAR_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"
//procedures
	using namespace::std;
class Year {
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
//1st
	void setyweathers(int yweather, int value, double input);
	double getyweathers(int yweather, int value);
//label
	void setywlabel(int yweather, string input);
	string getywlabel(int yweather);
//2nd
	void setmonths(int month, int mweather, int value, double input);
	double getmonths(int month, int mweather, int value);
//label
	void setmlabel(int month, string input);
	string getmlabel(int month);
//beyond
//label year weather values
	void setyvlabel(int weather, int value, string input);
	string getyvlabel(int weather, int value);
//label month weather
	void setmwlabel(int month, int weather, string input);
	string getmwlabel(int month, int weather);
//label month weather values
	void setmvlabel(int month, int weather, int value, string input);
	string getmvlabel(int month, int weather, int value);

private:
	string label;
	Weather yweathers[3];
	Month months[12];
};

#endif

