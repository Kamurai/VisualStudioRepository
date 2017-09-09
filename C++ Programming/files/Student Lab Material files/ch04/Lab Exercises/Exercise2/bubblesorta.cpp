// Chapter 4 of C++ How to Program
// Exercise 2a.cpp 
#include <iostream>

using std::cout;
using std::endl;

#include <iomanip>

using std::setw;

int main()
{
   const int SIZE = 10;
   int a[ SIZE ] = { 2, 6, 4, 8, 10, 12, 89, 68, 45, 37 };
   int hold, numberOfComp = 0, comp;

   cout << "Data items in original order\n";
   for ( int i = 0; i < SIZE; ++i )
      cout << setw( 4 ) << a[ i ];

   cout << "\n\n";

   /* Write bubble sort implementation here */

   cout << "\nData items in ascending order\n";

   for ( int j = 0; j < SIZE; ++j )
      cout << setw( 4 ) << a[ j ];

   cout << "\nNumber of comparisons = " << numberOfComp
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