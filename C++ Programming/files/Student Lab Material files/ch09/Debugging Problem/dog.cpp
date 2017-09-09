// Chapter 9 of C++ How to Program
// Debugging Problem (dog.cpp)

#include <iostream>

using std::cout;
using std::endl;

#include "dog.h"

Dog::Dog( const int h, const int w, const char * n )
   : Animal( h, w )
{  strcpy( name, n ); }

void Dog::setName( const char * n ) { strcpy( name, n ); }

void Dog::Print() const
{
   cout << "The person is named: " << name << endl;
   print();
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