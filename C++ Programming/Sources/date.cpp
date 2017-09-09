// Chris Houser and Chris Kemerait
// dateM.cpp
// member function definitions for date.cpp
#include <iostream>

using namespace::std;

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

int Date::nextDay(int &rm, int &rd, int &ry)
{
	//temp variable
		bool temp;
	
	switch(rm)
	{
	case 2:
		{
			temp = isLeapYear();
			if(temp == true)
			{
				if(rd < 29)
				{
					rd++;
				}
				else
				{
					rd = 1;
					rm++;
				}
			}
			else(temp == false);
			{
				if(rd < 28)
				{
					rd++;
				}
				else
				{
					rd = 1;
					rm++;
				}
			}
		break;
		}
	case 4:
		{
			if(rd < 30)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}
	case 6:
		{
			if(rd < 30)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}
	case 9:
		{
			if(rd < 30)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}
	case 10:
		{
			if(rd < 31)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}

	case 11:
		{
			if(rd < 30)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}
	default:
		{
			if(rd < 31)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm++;
			}
		break;
		}
	
	case 12:
		{
			if(rd < 31)
			{
				rd++;
			}
			else
			{
				rd = 1;
				rm = 1;
				ry++;
			}
		break;
		}
	}
	
	setDate(rm, rd, ry);
	return(0);
}

bool Date::isLeapYear( void )
{
   if ( year % 400 == 0 || ( year % 4 == 0 && year % 100 != 0 ) )
      return true;//if it IS a leap year
   else
      return false;//if its NOT a leap year
}

int Date::monthDays( void )
{
   const int days[ 12 ] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 
                            31, 30, 31 };

   return month == 2 && isLeapYear() ? 29 : days[ month - 1 ];
}
