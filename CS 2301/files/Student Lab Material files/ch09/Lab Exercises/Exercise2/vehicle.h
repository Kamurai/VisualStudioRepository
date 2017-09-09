// Chapter 9 of C++ How to Program
// vehicle.h
#ifndef VEHICLE_H
#define VEHICLE_H

#include <iostream>

using std::ostream;

class Vehicle {
   friend ostream& operator<<( ostream &, const Vehicle & );
public:
   Vehicle( const int doors, const int cylinders, 
      char *color, double initialFuel, 
      const int transmission );
   ~Vehicle();
   void setColor( char *color );
   void setFuelLevel( double amount );
   const char *getColor() const;
   double getFuelLevel() const;
   const int getTransmissionType() const;
   const int getNumberOfDoors() const;
   const int getNumberOfCylinders() const; 
   void setClassName( const char* );
   const char *getClassName() const;
private:
   const int numberOfDoors;
   const int numberOfCylinders;
   char *vehicleColor;
   double fuelLevel;
   const int transmissionType;
   char *className;
};

#endif

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

