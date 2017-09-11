// Chris Kemerait
// DayM.cpp
// member function definitions for Homework2b.cpp


//libraries
	#include <iostream>
	#include <iomanip>
	#include <cmath>
	#include <string>
	#include <cstring>
	#include <fstream>
	#include <cassert>
	#include <cstdlib>

//procedures
	using namespace::std;
//class libraries
	#include "Day.h"
	


int daynumber;
int labelofday;

void Day::setday(int daynumber)
{
	labelofday = daynumber;
		
}

void Day::outputday()
{
	cout << labelofday;		
	cout << ".\n\n";
}
