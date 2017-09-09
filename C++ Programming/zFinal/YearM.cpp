// Chris Kemerait
// YearM.cpp
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


string word;

void Year::setlabel(string word)
{
	label = word;
		
}

string Year::getlabel()
{
	return label;		
}

double Year::getyweathers(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			return yweathers[alpha].getvalues(beta);
		else
			return 0;
	else
		return 0;
}

void Year::setyweathers(int alpha, int beta, double chi) 
{ 
		if(alpha < 3 && alpha > -1)
			if(beta < 6 && beta > -1)
				yweathers[alpha].setvalues(beta, chi);
}

void Year::setywlabel(int alpha, string word)
{
	if(alpha < 3 && alpha > -1)
		yweathers[alpha].setlabel(word);
		
}

string Year::getywlabel(int alpha)
{
	if(alpha < 3 && alpha > -1)
		return yweathers[alpha].getlabel();
	else
		return "What?";
}

void Year::setmonths(int alpha, int beta, int chi, double delta)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				months[alpha].setmweathers(beta, chi, delta);
}

double Year::getmonths(int alpha, int beta, int chi)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				return months[alpha].getmweathers(beta, chi);
			else
				return 0;
		else
			return 0;
	else
		return 0;
}


void Year::setmlabel(int alpha, string word)
{
	if(alpha < 12 && alpha > -1)
		months[alpha].setlabel(word);	
}

string Year::getmlabel(int alpha)
{
	if(alpha < 12 && alpha > -1)
		return months[alpha].getlabel();
	else
		return "What?";
}
//beyond
void Year::setyvlabel(int alpha, int beta, string word)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			yweathers[alpha].setvlabel(beta, word);
}

string Year::getyvlabel(int alpha, int beta)
{
	if(alpha < 3 && alpha > -1)
		if(beta < 6 && beta > -1)
			return yweathers[alpha].getvlabel(beta);		
		else
			return "What?";
	else
		return "What?";
			
}

void Year::setmwlabel(int alpha, int beta, string word)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			months[alpha].setmwlabel(beta, word);		
}

string Year::getmwlabel(int alpha, int beta)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			return months[alpha].getmwlabel(beta);
		else
			return "What?";
	else
		return "What?";
}

void Year::setmvlabel(int alpha, int beta, int chi, string word)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				months[alpha].setvlabel(beta, chi, word);		
}

string Year::getmvlabel(int alpha, int beta, int chi)
{
	if(alpha < 12 && alpha > -1)
		if(beta < 3 && beta > -1)
			if(chi < 6 && chi > -1)
				return months[alpha].getvlabel(beta, chi);
			else
				return "What?";
		else
			return "What?";
	else
		return "What?";
}