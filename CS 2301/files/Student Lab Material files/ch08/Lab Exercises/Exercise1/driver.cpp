// Chapter 8 of C++ How to Program
// Driver for class DoubleScriptedArray
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <ctime>

#include "doubleScriptedArray.h"

int main() 
{
   // seed rand function
   srand( time( 0 ) );

   // create two arrays with different dimensions
   DoubleScriptedArray a( 6, 7 ), b( 8, 2 );

   cout << "Uninitialized array \"a\" is: \n" << a 
        << "Uninitialized array \"b\" is: \n" << b;

   // initialize array "a" with random values (0-100)
   for ( int i = 0; i < 6; i++ )

      for ( int j = 0; j < 7; j++ )
         /* write statement to insert random elements (reduced 
             to a range of 0 - 100) into the array via 
             the overloaded () */

   // use overloaded operator=
   b = a;

   cout << "\nInitialized array \"a\" is now:\n" << a
        << "Assigning b = a:\n" << b;

   // check if arrays are equal using overloaded ==
   if ( a == b )
      cout << "\"a\" was found to be equal to \"b\"\n";
   else
      cout << "\"a\" was found to be not equal to \"b\"\n";

   // retrieve an array element using overloaded operator()
   cout << "The element (2, 1) of array \"a\" is: "
        << a( 2, 1 ) << endl;

   // change an element of the array using overloaded operator()
   a( 2, 1 ) = -1;
   cout << "Changed element (2, 1) to -1: \n" << a;

   // check if arrays are still equal
   if ( /* write condition to check if arrays are equal */ )
      cout << "\"a\" was found to be equal to \"b\"\n";
   else
      cout << "\"a\" was found to be NOT equal to \"b\"\n";

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
