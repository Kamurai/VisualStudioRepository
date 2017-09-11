// Chapter 6 of C++ How to Program
// cats.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <cstring>

#include "cats.h"

void check( Cat *pen[], int );

int main()
{  
   const int PEN_SIZE = 7;	
   Cat *pen[ PEN_SIZE ]; 

   for ( int c = 0; c < PEN_SIZE; c++ ) {      
      /* Construct a new cat object            */
      /* Print the new cat object’s attributes */
      /* Write call to function check here     */

      cout << "Press a key to add the next cat." << endl;	        
      cin.get();
   }

   /* Write a statement to delete all cat objects */

   return 0;
}

void check( Cat *catPen[], int numberOfCats )
{
   int brownCats = 0, grayCats = 0, blueEyes = 0,
       greenEyes = 0, brownEyes = 0;

   for ( int x = 0; x <= numberOfCats; x++ ) {
      /* Write a series of statements which sum the total
         number of each type of cat (i.e., brownCats,
         greyCats, blueEyes, etc.) currently in the pen */
      
   }
   if ( /* Write a condition that tests if            */
        /*    gray cats are fighting with brown cats  */ )
      cout << "The gray cats are fighting with the brown cat"
           << ( brownCats > 1 ? "s." : "." ) << endl;

   if ( /* Write a condition that tests if black cats are fighting */ )
      cout << "The black cat(s) with blue eyes and the black "
           << "cat(s) with green eyes are\nfighting with the black "
           << "cat that has brown eyes." << endl;
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