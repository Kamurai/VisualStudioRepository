// Chapter 10 of C++ How to Program
// taxi.cpp
#include <iostream>

using std::cout;

#include "taxi.h"

Taxi::Taxi( double f )
   : Vehicle( 4, 6, "yellow", f, 5 )
{
   customers = false;
   setClassName( "Taxi" );
}

void Taxi::setCustomers( bool c ) { customers = c; }

bool Taxi::hasCustomers() const { return customers; }

void Taxi::print() const
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

   if ( customers )
      cout << "\tThe taxi currently has passengers.\n";
   else
      cout << "\tThe taxi currently has no passengers.\n";
}

void Taxi::horn() const
{
   cout << "beep beep";
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

