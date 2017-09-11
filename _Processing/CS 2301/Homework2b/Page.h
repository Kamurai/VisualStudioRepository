// Chris Houser and Chris Kemerait
// page.h
#ifndef PAGE_H
#define PAGE_H
//libraries
	#include <iostream>
	#include <iomanip>
	#include <string>
	#include <cstring>
//procedures
	using namespace::std;
class Page {
public:
	void setrow(int, double, double );
	double getrow(int, int);
	void setrowname(int, string);
	string getrowname(int);
	
private:
   Row rows[21];
};

#endif

