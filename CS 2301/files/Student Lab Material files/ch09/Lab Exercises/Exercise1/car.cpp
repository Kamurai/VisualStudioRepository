// Chapter 9 of C++ How to Program
// car.cpp
#include <iostream>

using std::cout;
using std::endl;

#include <cassert> 

#include "car.h"

/* write the constructor for Car, which takes the Car’s name and 
   color and assigns them to private data members name and color;
   initialize maxSpeed to 95 and engineValves to 4 */

Car::~Car()
{
   delete [] name;
   delete [] color;
}

void Car::setMaxSpeed( int s ) 
{ 
   maxSpeed = ( ( s >= 0 && s < 250 ) ? s : 40 ); 
}

void Car::setEngineValves( int v )
{
   engineValves = ( ( v >= 0 && v < 50 ) ? v : 4 );
}

void Car::print() const
{
   cout << "Car: " << name << " is " << color << " and has a " 
        << engineValves << "-valve engine. MAX SPEED = " 
        << maxSpeed << " mph. " << endl;
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
