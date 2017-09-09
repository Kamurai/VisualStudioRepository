// Chris Kemerait
// MonthM.cpp
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
	#include "Month.h"
	

string nameofmonth;
Day days[32];
string labelofmonth;
int yankee;
int daysofmonth;


void Month::setmonth(string nameofmonth)
{
	labelofmonth = nameofmonth;
		
}

void Month::outputmonth()
{
	cout << labelofmonth;
	cout << ".\n\n";		
}

//create a setdays routine to specify days per month
void Month::setdays()
{
yankee = 1;
	do
	{

		days[yankee].setday(yankee);
		yankee++;
	}
	while(yankee > 0 && yankee < daysofmonth);
yankee = 1;
	
}

void Month::testdays()
{
yankee = 1;
	do
	{
		days[yankee].outputday();
		yankee++;
	}
	while(yankee > 0 && yankee < daysofmonth);
yankee = 1;
	
}

void Month::setdaysofmonth(int yankee)
{
	daysofmonth = yankee;
	yankee = 1;

}