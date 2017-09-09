// Chris Kemerait
// city.h
#ifndef CITY_H
#define CITY_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"
	#include "Year.h"
//procedures
	using namespace::std;
class City {
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
	void setyears(int year, int yweather, int value, double input);
	double getyears(int year, int yweather, int value);
//label
	void setylabel(int year, string input);
	string getylabel(int year);
//beyond
	void setmonths(int year, int month, int mweather, int value, double input);
	double getmonths(int year, int month, int mweather, int value);
//label months
	void setmlabel(int year, int month, string input);
	string getmlabel(int year, int month);
//label month weather
	void setmwlabel(int year, int month, int weather, string input);
	string getmwlabel(int year, int month, int weather);
//label month weather values
	void setmvlabel(int year, int month, int weather, int value, string input);
	string getmvlabel(int year, int month, int weather, int value);
//label year weather
	void setywlabel(int year, int yweather, string input);
	string getywlabel(int year, int yweather);
//label year weather values
	void setyvlabel(int year, int weather, int value, string input);
	string getyvlabel(int year, int weather, int value);


private:
	string label;
	Year years[3];
};

#endif

