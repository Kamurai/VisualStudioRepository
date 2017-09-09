// Chris Kemerait
// event.h
#ifndef EVENT_H
#define EVENT_H
//libraries
	#include <iostream>
	#include <string>
	#include <cstring>

//class libraries
	

//procedures
	using namespace::std;

class Event {
public:
void SetEventName(string victor);
void TestEventName();
void SetEventYear(int whiskey);
void SetEventMonth(int whiskey);
void SetEventDay(int whiskey);
void TestEventYear();
void TestEventMonth();
void TestEventDay();


private:
	string labelofevent;
	int eventyear;
	int eventmonth;
	int eventday;
	int whiskey;
	string victor;

};

#endif

