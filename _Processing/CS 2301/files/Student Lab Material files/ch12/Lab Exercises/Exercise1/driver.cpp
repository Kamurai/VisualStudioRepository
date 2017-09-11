// Chapter 12 of C++ How to Program
// Driver for class Table

#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <iomanip>

using std::setw;

#include <cassert>

#include <ctime>

#include "table.h"

int main() 
{
   // seed random function
   srand( time( 0 ) );

   /* write code to create a Table of ints of size ( 4, 7 ); 
      name the Table a */
   Table< char > b( 5, 2 );

   cout << "Uninitialized array \"a\" is: \n";
   a.print(); 
   
   cout << "Uninitialized array \"b\" is: \n";
   b.print();

   // initialize array "a" with random values (0-100)
   for ( int i = 0; i < 4; i++ )

      for ( int j = 0; j < 7; j++ )
         a( i, j ) = rand() % 101;
   
   // initialize array "b" with 'g'
   for ( i = 0; i < 5; i++ )

      for ( int j = 0; j < 2; j++ )
         b( i, j ) = 'g';

   cout << "\nInitialized array \"a\" is now:\n";
   a.print();
   
   cout << "Initialized array b is now: \n"; 
   b.print();

   cout << "\nEnter values for b (10 of them): \n";
   b.inputValues();
   cout << endl;
   b.print();
   cout << endl;

   // retrieve an element of the array using overloaded operator()
   cout << "The element (2, 1) of array \"a\" is: ";
   /* write code that acesses element 2,1 of "b" */

   // change an element of the array using overloaded operator()
   a( 2, 1 ) = -1;
   cout << "Changed element (2, 1) to -1: \n"; 
   a.print();

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