// Chapter 3 of C++ How to Program
// prime.cpp

#include <iostream>

using std::cout;
using std::endl;

#include <iomanip>

using std::setw;

/* write prototype for function prime */

int main()
{
   int count = 0;

   cout << "The prime numbers from 1 to 10000 are:\n";

   for ( int loop = 2; loop <= 10000; ++loop )
      if ( /* make call to function prime */ ) {
         ++count;
         cout << setw( 6 ) << loop;
      
         if ( count % 10 == 0 )
            cout << '\n';
      }

   cout << '\n' << "There were " << count 
        << " prime numbers\n";
   return 0;
}

bool prime( int n )
{
   for ( int i = 2; /* write loop condition */; i++ )
      if ( /* write code to test if n is divisible by i */ )
         return false;

   return true;   // number is prime
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