// Chapter 10 of C++ How to Program
// driver for vehicle
#include <iostream>

using std::cout;
using std::endl;

#include "vehicle.h"
#include "taxi.h"
#include "truck.h"

int main()
{
   Taxi cab( 3.3 );
   Truck mack( 7.54 );

   /* write code to indicate that truck is carrying cargo */

   /* write function call to print Taxi object */
   /* write function call to print Truck object */ 

   /* declare an array, parkingLot, of base class pointers; */

   parkingLot[ 0 ] = &cab;
   parkingLot[ 1 ] = &mack;

   cout << "\nThe vehicles get stuck in traffic and respond: \n";
      
   for ( int i = 0; i < 2; i++ ) {
      cout << /* write code to access the class name of  
                 the current object pointed to in the array */ 
           << ": ";
      /* write the code to call the horn method */
      cout << endl;
   }

   return 0;
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

