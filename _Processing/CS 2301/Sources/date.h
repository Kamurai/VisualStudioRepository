// Chris Houser and Chris Kemerait
// date.h
#ifndef DATE_H
#define DATE_H

class Date {
public:
   Date( int = 1, int = 1, int = 1900 );  
   void print( void );
   void setDate( int, int, int );
   void setMonth( int );
   void setDay( int );
   void setYear( int );
   //input from date.cpp
   int getMonth( void );
   int getDay( void );
   int getYear( void );
   bool isLeapYear( void );
   int monthDays( void );
   //nextDay function
   int nextDay(int &m, int &d, int &y);
private:
   int month;
   int day;
   int year;
};

#endif
