// Chapter 3 of C++ How to Program
// gcd.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

/* write prototype for gcd */

int main()
{
   int a, b;

   // allow the five sets of numbers to be input
   for ( int j = 1; j <= 5; ++j ) {    
      cout << "Enter two integers: ";
      cin >> a >> b;
      cout << "The greatest common divisor of " << a 
           << " and " << b << " is "
           <<  /* write call for gcd */ << "\n\n";

   }

   return 0;
}

/* write header for gcd */
{
   int greatest = 1;

   for ( int i = 2; i <= ( ( x < y ) ? x : y ); ++i )
      if ( /* write condition to determine if both x and y are 
           divisible by i */ )
         greatest = i;

   /* write a statement to return greatest */
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