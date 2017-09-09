// Chris Kemerait
// MonthM.cpp
// member function definitions for Homework2b.cpp


//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//procedures
	using namespace::std;
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"


//string word;

void Month::setlabel(string word)
{
	label = word;
		
}

string Month::getlabel()
{
	return label;		
}

double Month::getmweathers(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			return mweathers[alpha].getvalues(beta);
		else
			return 0;
	else
		return 0;
}

void Month::setmweathers(int alpha, int beta, double chi) 
{ 
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			mweathers[alpha].setvalues(beta, chi);
}

void Month::setmwlabel(int alpha, string word)
{
	if(alpha < 3 && alpha > -1)
		mweathers[alpha].setlabel(word);
		
}

string Month::getmwlabel(int alpha)
{
	if(alpha < 3 && alpha > -1)
		return mweathers[alpha].getlabel();
	else
		return "What?";
}

void Month::setvlabel(int alpha, int beta, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			mweathers[alpha].setvlabel(beta, word);
}

string Month::getvlabel(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			return mweathers[alpha].getvlabel(beta);
		else
			return "What?";
	else
		return "What?";
}