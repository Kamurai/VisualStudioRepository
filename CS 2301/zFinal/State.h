// Chris Kemerait
// state.h
#ifndef STATE_H
#define STATE_H
//libraries
	#include <iostream>	
	#include <string>
	#include <cstring>
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"
	#include "Year.h"
	#include "City.h"
//procedures
	using namespace::std;
class State {
public:
//label
	void setlabel(string input);
	string getlabel();
//properties
//label
	void setclabel(int city, string input);
	string getclabel(int city);
//beyond
//labels year
	void setylabel(int city, int year, string input);
	string getylabel(int city, int year);
//labels year weather
	void setywlabel(int city, int year, int weather, string input);
	string getywlabel(int city, int year, int weather);
//labels year weather value
	void setyvlabel(int city, int year, int weather, int value, string input);
	string getyvlabel(int city, int year, int weather, int value);
//labels month
	void setmlabel(int city, int year, int month, string input);
	string getmlabel(int city, int year, int month);
//labels month weather
	void setmwlabel(int city, int year, int month, int weather, string input);
	string getmwlabel(int city, int year, int month, int weather);
//labels month weather value
	void setmvlabel(int city, int year, int month, int weather, int value, string input);
	string getmvlabel(int city, int year, int month, int weather, int value);

//values
	void setywvalue(int city, int year, int weather, int value, double input);
	double getywvalue(int city, int year, int weather, int value);

//values
	void setmwvalue(int city, int year, int month, int weather, int value, double input);
	double getmwvalue(int city, int year, int month, int weather, int value);
	
	
private:
	string label;
	City cities[3];
};

#endif

