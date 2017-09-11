// Chapter 8 of C++ How to Program
// raional.h
#ifndef RATIONAL_H
#define RATIONAL_H

class RationalNumber {
public:
   RationalNumber( int = 0, int = 1 ); // default constructor
   const RationalNumber operator+( const RationalNumber& );
   /* write prototype for operator - */
   const RationalNumber operator*( const RationalNumber& );
   const RationalNumber operator/( RationalNumber& );
   bool operator>( const RationalNumber& ) const;
   bool operator<( const RationalNumber& ) const;
   bool operator>=( const RationalNumber& ) const;
   /* write prototype for operator <= */
   bool operator==( const RationalNumber& ) const;
   bool operator!=( const RationalNumber& ) const;
   void printRational( void ) const;
private:
   int numerator;
   int denominator;
   void reduction( void );
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

