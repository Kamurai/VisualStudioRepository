// Chapter 9 of C++ How to Program
// vehicle.cpp
#include <iostream>
#include <cstring>
#include "vehicle.h"

using std::ostream;
using std::cout;
using std::endl;

Vehicle::Vehicle( const int doors, const int cylinders, 
   char *color, double initialFuel, 
   const int transmission ) 
/* write the definition for Vehicle’s constructor */
 
Vehicle::~Vehicle()
{
   delete [] vehicleColor;
   delete [] className;
}

ostream &operator<<( ostream &out, const Vehicle &v )
{
   out << v.className << "\n"
	    << "\tNumber of doors: "
       << v.numberOfDoors
	    << "\n\tNumber of cylinders: "
       << v.numberOfCylinders
	    << "\n\tTransmission type: "
       << v.transmissionType
 	    << "\n\tColor: " << v.vehicleColor
	    << "\n\tFuel level: "
       << v.fuelLevel << endl;

   return out;
}

/* write definition for setColor */

void Vehicle::setFuelLevel( double amount ) 
{
   // assume 20 gallons is a full tank
   if ( amount > 0.0 && amount <= 20.0 ) 
      fuelLevel = amount;
   else
      fuelLevel = 5.0;
}

// caller is responsible for deleting memory
const char *Vehicle::getColor() const
{   
   return vehicleColor;
}
 
double Vehicle::getFuelLevel() const
{
   return fuelLevel;
}

const int Vehicle::getTransmissionType() const
{
   return transmissionType;
}
   
const int Vehicle::getNumberOfDoors() const
{
   return numberOfDoors;
}

const int Vehicle::getNumberOfCylinders() const
{
   return numberOfCylinders;   
}

void Vehicle::setClassName( const char *newName )
{
   if ( className!= 0 )
      delete [] className;

   className = new char[ strlen( newName ) + 1 ];
   strcpy( className, newName );
}


// caller is responsible for deleting memory
const char *Vehicle::getClassName() const
{
   return className;
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

