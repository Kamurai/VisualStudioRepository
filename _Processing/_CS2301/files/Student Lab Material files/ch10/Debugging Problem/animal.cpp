// Chapter 10 of C++ How to Program
// Debugging Problem (animal.cpp)

#include <iostream>
using std::cout;
using std::endl;

#include "animal.h"

Animal::Animal( const int h, const int w )
{
   height = h;
   weight = w;
}

virtual void Animal::print() const
{
   cout << "This animal's height and weight are as follows:\n"
        << "Height: " << height << "\tWeight: " << weight
        << endl << endl;
}

int Animal::getHeight() const{ return height; }

int Animal::getWeight() const { return weight; }

virtual void Animal::setHeight( const int h ) { height = h; }

virtual void Animal::setWeight( const int w ) { weight = w; }

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