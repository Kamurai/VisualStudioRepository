// Chapter 9 of C++ How to Program
// racecar.cpp
#include <iostream>

using std::cout;
using std::endl;

#include <cassert> 

#include "racecar.h"

Racecar::Racecar( const char *n, const char *c, const char *s )
   /* write code to call base-class constructor */
{
   /* write code to allocate memory for the sponsor, s, and
      copy it into private data member sponsor */

   gearbox = 6;
   parachute = false;
}

Racecar::~Racecar()
{
   delete [] sponsor; 
}

void Racecar::setGearbox( int gears )
{
   gearbox = ( ( gears <= 10 && gears >= 0 ) ? gears : 6 );
}

void Racecar::useParachute( void ) { parachuteDeployed = p; }

void Racecar::print() const
{
   /* call base class method print here */
   cout << Racecar::name << " also has " << gearbox 
        << " gears and is sponsored by " << sponsor << ". ";

   if ( parachute )
      cout << /* access base class version of name here */ 
           << " has used its parachute." << endl;
   else
      cout << /* access base class version of name here */ 
           << " has not used its parachute." << endl;
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
