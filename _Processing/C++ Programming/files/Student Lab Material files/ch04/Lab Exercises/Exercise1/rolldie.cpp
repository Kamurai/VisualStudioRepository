// Chapter 4 of C++ How to Program
// rolldie.cpp
#include <iostream>

using std::cout;
using std::endl;
using std::ios;

#include <iomanip>

using std::setiosflags;
using std::setprecision;
using std::setw;

#include <cstdlib>
#include <ctime>

int main()
{
   const long ROLLS = 36000;
   const int SIZE = 13;
   // array expected contains counts for the expected
   // number of times each sum occurs in 36 rolls of the dice 

   /* Write the declaration of array expected here. Assign an 
      initializer list containing the expected values here. Use  
      SIZE for the number of elements */

   /* Write declaration for array sum here. Initialize all 
      elements to zero. Use SIZE for the number of elements */
   int x, y;

   srand( time( 0 ) );
   
   /* Write a for loop that iterates ROLLS times. Randomly
      generate values for x (i.e., die1) and y (i.e., die2)
      and increment the appropriate counter in array sum that 
      corresponds to the sum of x and y */

   cout << setw( 10 ) << "Sum" << setw( 10 ) << "Total"
        << setw( 10 ) << "Expected" << setw( 10 ) << "Actual\n"
        << setiosflags( ios::fixed | ios::showpoint )
        << setprecision( 3 );

   for ( int j = 2; j < SIZE; ++j )
      cout << setw( 10 ) << j << setw( 10 ) << sum[ j ] 
           << setw( 9 ) << 100.0 * expected[ j ] / 36 << "%" 
           << setw( 9 ) << 100.0 * sum[ j ] / 36000 << "%\n";

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