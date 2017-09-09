// Chapter 12 of C++ How to Program
// Debugging problem (debug.cpp)

#include <iostream>

using std::cout;
using std::endl;

#include "arithmetic.h"

< class T >
void printResult( T num )
{
   cout << "The result of the operation is: "
        << num << endl;
}

int main() {
   Arithmetic a( 5, 3 );
   Arithmetic< int > b( 7.3, 5.2 );

   cout << "Arithmetic performed on variable a:\n";
   printResult( a< int >.add() );
   printResult( a< int >.sub() );
   printResult( a< int >.mult() );
   printResult( a< int >.div() );

   cout << "\nArithmetic performed on variable b:\n";
   printResult( b.add() );
   printResult( b.sub() );
   printResult( b.mult() );
   printResult( b.div() );
   
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