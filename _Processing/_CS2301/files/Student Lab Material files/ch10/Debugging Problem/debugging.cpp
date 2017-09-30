// Chapter 10 of C++ How to Program
// Debugging Problem (debug.cpp)

#include<iostream>

using std::cout;
using std::endl;
using std::cin;

#include "animal.h"
#include "lion.h"
#include "dog.h"

void setHeightWeight( Animal ) const;

int main()
{
   Dog d1( 60, 120, "Fido" );
   Lion lion1( 45, 300 );

   setHeightWeight( lion1 );
   setHeightWeight( d1 );

   return 0;
}

void setHeightWeight( Animal )
{
   int h, w;

   a->print();
   cout << "Enter a new height (using standard units): ";
   cin >> h;
   a->setHeight( h );

   cout << "Enter a new weight (using standard units): ";
   cin >> w;
   a->setWeight( w );

   cout << "Here are the new height and weight values:\n"
        << a->getHeight() << endl
        << a->getWeight() << endl << endl;
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