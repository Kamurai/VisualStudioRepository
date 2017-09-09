// Chris Houser and Chris Kemerait
// PageM.cpp
// member function definitions for Homework2b.cpp
#include <iostream>

using namespace::std;

#include "Row.h"
#include "Page.h"

string word;

double Page::getrow(int alpha, int beta)
{
	if(alpha < 21 && alpha > -1 && beta < 2 && beta > -1)
		return rows[alpha].getcolumn(beta);
	else
		return 0;
}

void Page::setrow( int alpha, double beta, double delta) 
{ 
	if(alpha < 21 && alpha > -1)
		rows[alpha].setcolumn(beta, delta);
}

void Page::setrowname(int alpha, string word )
{
	if(alpha < 21 && alpha > -1)
		rows[alpha].setlabel(word);
		
}

string Page::getrowname(int alpha)
{
	if(alpha < 21 && alpha > -1)
		return rows[alpha].getlabel();
	else
		return "What?";
		
}