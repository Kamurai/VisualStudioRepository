// Chapter 6 of C++ How to Program
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
   int getMonth( void );
   int getDay( void );
   int getYear( void );
   bool isLeapYear( void );
   int monthDays( void );
   /* Write prototype for nextDay */
private:
   int month;
   int day;
   int year;
};

#endif


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