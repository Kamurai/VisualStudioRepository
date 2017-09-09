// Chris Kemerait
// YearM.cpp
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
	#include "Month.h"
	#include "Year.h"




int yearnumber;
bool leap;
int zulu;
Month months[13];
int labelofyear;
int stop;


void Year::setyear(int yearnumber)
{
	 labelofyear = yearnumber;
		
}

void Year::outputyear()
{
	cout <<	labelofyear;
	cout << ".\n\n";
}



void Year::setleapyear()
{
	zulu = labelofyear;
	stop = 0;
	do
	{
		if( zulu < 5 && zulu > 0)
		{
			if( zulu == 4)
			{
				leap = true;
				stop = 1;
			}
			else
			{
				leap = false;
				stop = 1;
			}
		}
	zulu = zulu - 4;
	}
	while( stop == 0 );
	zulu = 1;
}

void Year::testleapyear()
{
	
	if( leap == true )
	{
		cout << labelofyear;
		cout << " is a leap year.\n\n";
	}
	if( leap == false )
	{
		cout << labelofyear;
		cout << " is not a leap year.\n\n";
	}
	
}

void Year::setmonths()
{

	months[1].setmonth("January");
	months[1].setdaysofmonth(31);
	months[1].setdays();
	months[2].setmonth("February");
	if( leap == true )
	{
		months[2].setdaysofmonth(29);
	}
	else
	{
		months[2].setdaysofmonth(28);
	}
	months[2].setdays();
	months[3].setmonth("March");
	months[3].setdaysofmonth(31);
	months[3].setdays();
	months[4].setmonth("April");
	months[4].setdaysofmonth(30);
	months[4].setdays();
	months[5].setmonth("May");
	months[5].setdaysofmonth(31);
	months[5].setdays();
	months[6].setmonth("June");
	months[6].setdaysofmonth(30);
	months[6].setdays();
	months[7].setmonth("July");
	months[7].setdaysofmonth(31);
	months[7].setdays();
	months[8].setmonth("August");
	months[8].setdaysofmonth(31);
	months[8].setdays();
	months[9].setmonth("September");
	months[9].setdaysofmonth(30);
	months[9].setdays();
	months[10].setmonth("October");
	months[10].setdaysofmonth(31);
	months[10].setdays();
	months[11].setmonth("November");
	months[11].setdaysofmonth(30);
	months[11].setdays();
	months[12].setmonth("December");
	months[12].setdaysofmonth(31);
	months[12].setdays();

}

void Year::testmonths()
{
	zulu = 1;
	do
	{
		months[zulu].outputmonth();
		months[zulu].testdays();
		zulu++;
	}
	while(zulu > 0 && zulu < 13);
	zulu = 1;
}


void Year::setdaysofmonth()
{
	zulu = 1;
	do
	{
		months[zulu].setdays();
		zulu++;
	}
	while(zulu > 0 && zulu < 13);
	zulu = 1;
	
}

void Year::testdaysofmonth()
{
	zulu = 1;
	do
	{
		months[zulu].testdays();
		zulu++;
	}
	while(zulu > 0 && zulu < 13);
	zulu = 1;
}
