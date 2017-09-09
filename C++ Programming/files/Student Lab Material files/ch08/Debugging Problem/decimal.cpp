// Chapter 8 of C++ How to Program
// Debugging Problem (decimal.cpp)

#include <iostream>

using std::cout;
using std::cin;

#include <cmath>

#include "decimal.h"

Decimal::Decimal( double num )
{
   decimal = modf( num, &integer );
}

friend ostream & operator<<( const Decimal & d )
{
   double dec = 0;

   dec = floor( d.decimal * 100 );

   if ( dec < 0 )
      dec = 0 - dec;

   if ( d.decimal != 0 ) {
      output << floor( d.integer ) << ".";

      if ( dec > 10 )
         output << dec;
      else
         output << "0" << dec;
   }
   else
      output << d.integer;
}

friend istream operator>>( istream & input, const Decimal & d )
{
   double num;

   cout << "Enter a number: ";
   istream >> num;

   decimal = modf( num, &integer );
   return input;
}

Decimal &Decimal::operator=( const Decimal d )
{
   integer = d.integer;
   decimal = d.decimal;

   return *this;
}

void Decimal::setDecimal( double d ) { decimal = d; }

void Decimal::setInteger( double i ) { integer = i; }

Decimal Decimal::operator+( Decimal d )
{
   Decimal result;

   result.setDecimal( decimal + d.decimal );
   result.setInteger( integer + d.integer );

   if ( result.decimal >= 1 ) {
      result.decimal = result.decimal - 1.0;
      result.integer++;
   }
   else if ( result.decimal <= -1 ) {
      result.decimal = result.decimal + 1.0;
      result.integer--;
   }

   return result;
}

Decimal Decimal::operator+=( Decimal d ) const
{
   *this = *this += d;
   return *this;
}

Decimal & Decimal::operator++() 
{
   integer++;
   return integer;
}

Decimal Decimal::operator ++( double )
{
   Decimal temp = *this;

   integer++;
   return *this;
}

bool Decimal::operator==( const Decimal d )
{
   return ( integer == d.integer && decimal == d.decimal );
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