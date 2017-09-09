// Chris Kemerait
// Day.h
#ifndef DAY_H
#define DAY_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//class libraries
	

//procedures
	using namespace::std;


class Day {
public:
//label
	void setday(int day);
	void outputday();

private:
	int daynumber;
	int labelofday;
};

#endif

