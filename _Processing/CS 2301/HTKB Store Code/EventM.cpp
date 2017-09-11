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
	



string labelofevent;
int eventyear;
int eventmonth;
int eventday;
int whiskey;
string victor;

void Event::SetEventName(string victor)
{
	labelofevent = whiskey;
}

void Event::TestEventName()
{
	cout << labelofevent;
}

void Event::SetEventYear(int whiskey)
{
	eventyear = whiskey;
}

void Event::SetEventMonth(int whiskey)
{
	eventmonth = whiskey;
}

void Event::SetEventDay(int whiskey)
{
	eventday = whiskey;
}

void Event::TestEventYear()
{
	cout << eventyear;
}

void Event::TestEventMonth()
{
	cout << eventmonth;
}

void Event::TestEventDay()
{
	cout << eventday;
}