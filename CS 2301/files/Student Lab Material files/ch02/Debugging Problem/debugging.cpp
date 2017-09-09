// Chapter 2 of C++ How To Program
// Debugging problem

#include <iostream>

using std::cout;
using std::endl;

#include <iomanip>

using std::setprecision;

int main()
{
   int i = 1;
   double a, b;
   
   cout << setprecision( 2 );

   for ( int i; i <= 2; i++ )
      cout << "I is now equal to " << i << endl;

      for ( int j; j <= 3; j++ ) {
         cout << "\tJ is now equal to " << j << endl;

         cout << "\t\ti + j = " << i + j << "\ti - j = "
              << i - j << endl;
         cout << "\t\ti * j = " << i * j << "\ti ^ j = "
              << pow( i, j ) << endl;
         
         if ( j = 0 )
            continue;
         else {
            a = i;
            b = j;
            cout << "\t\ti / j = " << a / b
                    "\ti % j = " << a % b << endl;
         }
      }

   cout << "The final values of i and j are: " << i
        << " and " << j << endl;

   return 0;
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