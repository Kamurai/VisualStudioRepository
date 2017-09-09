// Chris Houser and Chris Kemerait
// row.h
#ifndef ROW_H
#define ROW_H
//libraries
	#include <iostream>
	#include <iomanip>
	#include <string>
	#include <cstring>

//procedures
	using namespace::std;
class Row{
public:
	
	Row();
	void setcolumn( double, double );
	double getcolumn(int);
	void setlabel(string);
	string getlabel();
   
private:
   double column[2];
   string label;
};

#endif
