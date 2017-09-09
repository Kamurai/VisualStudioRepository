// Chris Kemerait
// WeatherM.cpp
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


//string word;

void Weather::setlabel(string word)
{
	label = word;
		
}

string Weather::getlabel()
{
	return label;		
}

double Weather::getvalues(int alpha)
{
	if(alpha < 6 && alpha > -1)
		return values[alpha].getnum();
	else
		return 0;
}

void Weather::setvalues(int alpha, double beta) 
{ 
	if(alpha < 6 && alpha > -1)
		values[alpha].setnum(beta);
}

void Weather::setvlabel(int alpha, string word)
{
	if(alpha < 6 && alpha > -1)
		values[alpha].setlabel(word);
		
}

string Weather::getvlabel(int alpha)
{
	if(alpha < 6 && alpha > -1)
		return values[alpha].getlabel();
	else
		return "What?";
}