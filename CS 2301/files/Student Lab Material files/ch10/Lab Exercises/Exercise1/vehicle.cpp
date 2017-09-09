// Chapter 10 of C++ How to Program
// vehicle.cpp
#include <iostream>

using std::cout;
using std::endl;
using std::ostream;

#include <cstring>

#include "vehicle.h"

Vehicle::Vehicle( const int doors, const int cylinders, 
   char *color, double initialFuel, 
				  const int transmission ) 
   : numberOfDoors( doors ), numberOfCylinders( cylinders ),
     transmissionType( transmission )
{
   setFuelLevel( initialFuel );

   vehicleColor = 0;
   setColor( color );
   
   className = 0;
   setClassName( "Vehicle" );
}
 
Vehicle::~Vehicle()
{
   delete [] vehicleColor;
   delete [] className;
}

void Vehicle::print() const
{
   cout << className << "\n"
	        << "\tNumber of doors: " << numberOfDoors
   	     << "\n\tNumber of cylinders: " << numberOfCylinders
   	     << "\n\tTransmission type: " << transmissionType
    	    << "\n\tColor: " << vehicleColor
   	     << "\n\tFuel level: " << fuelLevel << endl;
}

void Vehicle::setColor( char *color )
{
   if ( vehicleColor != 0 )
      delete [] vehicleColor;

   vehicleColor = new char[ strlen( color ) + 1 ];
   strcpy( vehicleColor, color );    
}

void Vehicle::setFuelLevel( double amount ) 
{
   // assume 20 gallons is a full tank
   if ( amount > 0.0 && amount <= 20.0 ) 
      fuelLevel = amount;
   else
      fuelLevel = 5.0;
}

const char *Vehicle::getColor() const
{   
   return vehicleColor;
}
 
const double Vehicle::getFuelLevel() const
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

void Vehicle::setClassName( const char *n )
{
   if ( className!= 0 )
      delete [] className;

   className = new char[ strlen( n ) + 1 ];
   strcpy( className, n );
}

const char *Vehicle::getClassName() const { return className; }


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

