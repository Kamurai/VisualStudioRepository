// Chapter 6 of C++ How to Program
// complexM.cpp
// member function definitions for class Complex
#include <iostream>

using std::cout;

#include "complex.h"

Complex::Complex( double real, double imaginary )
  { setComplexNumber( real, imaginary ); }

void Complex::addition( const Complex &a )
{
   /* Write statement to add the realPart of a to the class’
      realPart */
   /* Write statement to add the imaginaryPart of a to the 
      class’ imaginaryPart */
}

void Complex::subtraction( const Complex &s )
{
   /* Write a statement to subtract the realPart of s from the
      class’ realPart */
   /* Write a statement to subtract the imaginaryPart of s from 
      the class’ imaginaryPart */
}

void Complex::printComplex( void )
  { cout << '(' << realPart << ", " << imaginaryPart << ')'; }

void Complex::setComplexNumber( double real, double imaginary )
{
   realPart = real;
   imaginaryPart = imaginary;
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