// Chapter 10 of C++ How to Program
// truck.cpp
#include <iostream>

using std::cout;

#include "truck.h"

Truck::Truck( double f )
   : Vehicle( 2, 16, "black", f, 8 )
{
   cargo = false;
   setClassName( "Truck" );
}

bool Truck::hasCargo() const { return cargo; }

void Truck::setCargo( bool c ) { cargo = c; }

void Truck::print() const
{
   cout << getClassName() << "\n"
        << "\tNumber of doors: " 
        << getNumberOfDoors()
        << "\n\tNumber of cylinders: "
        << getNumberOfCylinders()
        << "\n\tTransmission type: "
        << getTransmissionType()
        << "\n\tColor: " << getColor()
        << "\n\tFuel level: " 
        << getFuelLevel() << "\n";
   
   if ( cargo )
      cout << "\tThe truck is currently carrying cargo.\n";
   else
      cout << "\tThe truck is currently not carrying cargo.\n";
}

void Truck::horn() const
{
   cout << "HOOOONK!"; 
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

