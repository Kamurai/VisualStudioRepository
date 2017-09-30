// Chris Houser and Chris Kemerait
// RowM.cpp
// member function definitions for Homework2b.cpp
#include <iostream>

using namespace::std;

#include "row.h"

Row::Row() 
{ 
	setcolumn( 0, 0 ); 
}

double Row::getcolumn(int alpha)
{
	if(alpha < 2 && alpha > -1)
		return column[alpha];
	else
		return 0;
}

void Row::setcolumn( double alpha, double beta) 
{ 
		column[0] = alpha;
		column[1] = beta;
}

void Row::setlabel(string word)
{
	label = word;
}

string Row::getlabel()
{
	return label;
}
