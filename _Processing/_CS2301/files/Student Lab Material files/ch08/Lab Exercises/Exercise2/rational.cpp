// Chapter 8 of C++ How to Program
// rational.cpp 
#include <cstdlib>

#include <iostream> 

using std::cout; 
using std::endl; 

#include "rational.h"

RationalNumber::RationalNumber( int n, int d )
{
   numerator = n;
   denominator = d;
   /* write function call to reduction function */
}

/* write definition for overloaded operator+ */

const RationalNumber RationalNumber::operator-(
   const RationalNumber &s )
{
   RationalNumber sub;

   sub.numerator = numerator * s.denominator - denominator *
      s.numerator;
   sub.denominator = denominator * s.denominator;
   sub.reduction();
   return sub;
}

/* write definition for overloaded operator * */

const RationalNumber RationalNumber::operator/( RationalNumber &d )
{
   RationalNumber divide;

   if ( /* write condition to test for zero numerator */ ) {  
      divide.numerator = numerator * d.denominator;
      divide.denominator = denominator * d.numerator;
      divide.reduction();
   }
   else {
      cout << "Divide by zero error: terminating program\n";
      exit( 1 );   // cstdlib function
   }

   return divide;
}

bool RationalNumber::operator>(const RationalNumber &gr ) const
{
   if ( static_cast< double >( numerator ) / denominator > 
        static_cast< double >( gr.numerator ) / gr.denominator )
      return true;
   else
      return false;
}

bool RationalNumber::operator<(const RationalNumber &lr ) const
{
   return !(*this > lr);
}

bool RationalNumber::operator>=( 
   const RationalNumber &rat ) const
   { return *this == rat || *this > rat; }

/* write definition for operator <= */

/* write definition for operator == */

/* write definition for operator != */

void RationalNumber::printRational( void ) const
{
   if ( numerator == 0 )         // print fraction as zero
      cout << numerator;
   else if ( denominator == 1 )  // print fraction as integer
      cout << numerator;
   else
      cout << numerator << '/' << denominator;
}

void RationalNumber::reduction( void )
{
   int smallest, gcd = 1;  // greatest common divisor;

   smallest = ( numerator < denominator ) ? numerator 
      : denominator;

   for ( int loop = 2; loop <= smallest; ++loop )
       if ( numerator % loop == 0 && denominator % loop == 0 )
          gcd = loop;

   numerator /= gcd;
   denominator /= gcd;
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

