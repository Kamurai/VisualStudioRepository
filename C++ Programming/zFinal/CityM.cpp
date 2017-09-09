// Chris Kemerait
// CityM.cpp
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
	#include "Year.h"
	#include "City.h"


//string word;

void City::setlabel(string word)
{
	label = word;
		
}

string City::getlabel()
{
	return label;		
}

double City::getyears(int alpha, int beta, int chi)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)	
				return years[alpha].getyweathers(beta, chi);
			else
				return 0;
		else
			return 0;
	else
		return 0;
}

void City::setyears(int alpha, int beta, int chi, double delta) 
{ 
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				years[alpha].setyweathers(beta, chi, delta);
}

void City::setylabel(int alpha, string word)
{
	if(alpha < 3 && alpha > -1)
		years[alpha].setlabel(word);
		
}

string City::getylabel(int alpha)
{
	if(alpha < 3 && alpha > -1)
		return years[alpha].getlabel();
	else
		return "What?";
}

void City::setmonths(int alpha, int beta, int chi, int delta, double epsi)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					years[alpha].setmonths(beta, chi, delta, epsi);
}

double City::getmonths(int alpha, int beta, int chi, int delta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					return years[alpha].getmonths(beta, chi, delta);
				else
					return 0;
			else
				return 0;
		else
			return 0;
	else
		return 0;

}


void City::setmlabel(int alpha, int beta, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			years[alpha].setmlabel(beta, word);
		
}

string City::getmlabel(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			return years[alpha].getmlabel(beta);
		else
			return "What?";
	else
		return "What?";
}

void City::setmwlabel(int alpha, int beta, int chi, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			if(chi < 3 && chi > -1)
				years[alpha].setmwlabel(beta, chi, word);
		
}

string City::getmwlabel(int alpha, int beta, int chi)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			return years[alpha].getmwlabel(beta, chi);
		else
			return "What?";
	else
		return "What?";
}

void City::setmvlabel(int alpha, int beta, int chi, int delta, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					years[alpha].setmvlabel(beta, chi, delta, word);
		
}

string City::getmvlabel(int alpha, int beta, int chi, int delta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 12 && beta > -1)
			if(chi < 3 && chi > -1)
				if(delta < 6 && delta > -1)
					return years[alpha].getmvlabel(beta, chi, delta);
				else
					return "What?";
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}

void City::setywlabel(int alpha, int beta, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			years[alpha].setywlabel(beta, word);

}
string City::getywlabel(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			return years[alpha].getywlabel(beta);
		else
			return "What?";
	else
		return "What?";

}
void City::setyvlabel(int alpha, int beta, int chi, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				years[alpha].setyvlabel(beta, chi, word);

}
string City::getyvlabel(int alpha, int beta, int chi)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				return years[alpha].getyvlabel(beta, chi);
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}