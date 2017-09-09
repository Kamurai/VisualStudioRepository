// Chris Kemerait
// year.h
#ifndef YEAR_H
#define YEAR_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	#include "Month.h"
//procedures
	using namespace::std;

class Year {
public:
//label
	void setyear(int year);
	void outputyear();
	void setmonths();
	void testmonths();
	void setdaysofmonth();
	void testdaysofmonth();
	void setleapyear();
	void testleapyear();


	

private:
	int labelofyear;
	int yearnumber;
	Month months[13];
	int zulu;
	int stop;
	
};

#endif

