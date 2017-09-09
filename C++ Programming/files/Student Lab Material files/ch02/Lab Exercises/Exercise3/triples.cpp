// Chapter 2 of C++ How to Program
// triples.cpp
#include <iostream>

using std::cout;
using std::endl;

int main()
{
   int count = 0;
   long hyptSquared, sidesSquared;

   for ( /* write header for side1 */ ) {

       for ( /* write header for side2 */ ) {

          for ( /* write header for hyptSquared */ ) {
             /* calculate hyptSquared */
             /* calculate the sum of the sides squared */

             if ( hyptSquared == sidesSquared ) {
                cout << side1 << "\t" << side2 << "\t"
                     << hypt << "\n";
                ++count;
             }
          }
       }
   }

   cout << "A total of " << count << " triples were found."
        << endl;

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