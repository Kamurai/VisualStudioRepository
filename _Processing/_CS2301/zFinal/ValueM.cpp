// Chris Kemerait
// ValueM.cpp
// member function definitions for Homework2b.cpp


//libraries
	#include <iostream>
	#include <string>
	#include <cstring>
//procedures
	using namespace::std;
//class libraries
	#include "Value.h"


//string word;

void Value::setlabel(string word)
{
	label = word;
}

string Value::getlabel()
{
	return label;
		
}

double Value::getnum()
{
	return num;
}

void Value::setnum(double alpha)
{ 
	num = alpha;
}

