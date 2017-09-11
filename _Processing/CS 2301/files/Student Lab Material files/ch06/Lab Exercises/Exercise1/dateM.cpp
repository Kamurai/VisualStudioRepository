// Chapter 6 of C++ How to Program
// dateM.cpp
// member function definitions for date.cpp
#include <iostream>

using std::cout;

#include "date.h"

Date::Date( int m, int d, int y ) { setDate( m, d, y ); }

int Date::getDay() { return day; }

int Date::getMonth() { return month; }

int Date::getYear() { return year; }

void Date::setDay( int d )
{
   if ( month == 2 && isLeapYear() )
      day = ( d <= 29 && d >= 1 ) ? d : 1;
   else
      day = ( d <= monthDays() && d >= 1 ) ? d : 1;
}

void Date::setMonth( int m ) 
{ 
   month = m <= 12 && m >= 1 ? m : 1;
}

void Date::setYear( int y )
{
   year = y <= 2010 && y >= 1900 ? y : 1900;
}

void Date::setDate( int mo, int dy, int yr )
{
   setMonth( mo );
   setDay( dy );
   setYear( yr );
}

void Date::print()
   { cout << month << '-' << day << '-' << year << '\n'; }

/* Write function nextDay here */

bool Date::isLeapYear( void )
{
   if ( year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0 ) )
      return true;
   else
      return false;    // not a leap year
}

int Date::monthDays( void )
{
   const int days[ 12 ] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 
                            31, 30, 31 };

   return month == 2 && leapYear() ? 29 : days[ month - 1 ];
}


/**************************************************************************
 * (C) Copyright 2002 by Deitel & Associates, Inc. and Prentice Hall.     *
 * All Rights Reserved.                                                   *
 *                                                                        *
 * DISCLAIMER: The authors and publisher of this book have used their     *
 * best efforts in preparing the book. These efforts include the          *
 * development, research, and testing of the theories and programs        *
 * to determine their effectiveness. The authors and publisher make       *
 * no warranty of any kind, expressed or implied, with regard to these    *
 * programs or to the documentation contained in these books. The authors *
 * and publisher shall not be liable in any event for incidental or       *
 * consequential damages in connection with, or arising out of, the       *
 * furnishing, performance, or use of these programs.                     *
 *************************************************************************/