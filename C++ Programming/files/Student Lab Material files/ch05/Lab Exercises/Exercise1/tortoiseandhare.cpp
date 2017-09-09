// Chapter 5 of C++ How to Program
// tortoiseandhare.cpp
#include <iostream>

using std::cout;
using std::endl;

#include <cstdlib>

#include <ctime>

#include <iomanip>

using std::setw;

const int RACE_END = 70;

/* Write prototype for moveTortoise here */
/* Write prototype for moveHare here */
/* Write prototype for printCurrentPositions here */


int main()
{
   int tortoise = 1, hare = 1, timer = 0;   

   srand( time( 0 ) );

   cout << "ON YOUR MARK, GET SET\nBANG               !!!!"
        << "\nAND THEYíRE OFF    !!!!\n";
   
   while ( tortoise != RACE_END && hare != RACE_END ) {
      /* Write call for moveTortoise here */
      /* Write call for moveHare here */
      /* Write call for printCurrentPositions here */    
      ++timer;
   }

   if ( tortoise >= hare )
      cout << "\nTORTOISE WINS!!! YAY!!!\n";
   else
      cout << "Hare wins. Yuch.\n";

   cout << "TIME ELAPSED = " << timer << " seconds" << endl;
   return 0;
}

/* Write function definition for moveTortoise here */
{
   int x = 1 + rand() % 10;

   if ( x >= 1 && x <= 5 )        // fast plod
      turtlePtr += 3;
   else if ( x == 6 || x == 7 )   // slip
      turtlePtr -= 6;
   else                           // slow plod
      ++( turtlePtr );
   
   if ( turtlePtr < 1 )
      turtlePtr = 1;
   else if ( turtlePtr > RACE_END )
      turtlePtr = RACE_END;
}

/* Write function definition for moveHare here */
{
   int y = 1 + rand() % 10;

   /* Write statements that move rabbit */

   /* Write statements that test if rabbit is before
      the starting point or has finished the race */
}

/* Write function definition for printCurrentPositions here */
{
   if ( bunnyPtr == snapperPtr ) 
      cout << setw( bunnyPtr ) << "OUCH!!!";      
   else if ( bunnyPtr < snapperPtr ) 
      cout << setw( bunnyPtr ) << "H" 
           << setw( snapperPtr - bunnyPtr ) << "T";
   else
      cout << setw( snapperPtr ) << "T" 
           << setw( bunnyPtr - snapperPtr ) << "H";

   cout << "\n";
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