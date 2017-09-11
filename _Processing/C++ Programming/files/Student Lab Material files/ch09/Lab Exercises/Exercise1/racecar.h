// Chapter 9 of C++ How to Program
// racecar.h
#ifndef RACECAR_H
#define RACECAR_H

#include "car.h"

/* write class header for Racecar, which inherits publicly
   from Car */ 
public:
   Racecar( const char *, const char *, const char * );
   ~Racecar();
   void setGearbox( int );
   void useParachute( void );
   void print() const;

private:
   int gearbox; // the number of gears in a car (i.e., 5-speed)
   char *sponsor;  
   bool parachuteDeployed; 
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
