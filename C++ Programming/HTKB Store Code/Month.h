// Chris Kemerait
// month.h
#ifndef MONTH_H
#define MONTH_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Day.h"
	

//procedures
	using namespace::std;

class Month {
public:
//label
	void setmonth(string nameofmonth);
	void outputmonth();
	void setdays();
	void testdays();
	void setdaysofmonth(int yankee);



private:
	string labelofmonth;
	string nameofmonth;
	int yankee;
	int daysofmonth;
	Day days[32];
};

#endif

