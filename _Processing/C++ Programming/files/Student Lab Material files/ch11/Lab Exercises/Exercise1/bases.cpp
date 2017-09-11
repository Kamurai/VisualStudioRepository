// Chapter 11 of C++ How to Program
// bases.cpp

#include <iostream>

using std::cout;
using std::cin;
using std::endl;
/* Include all necessary using statements from iostream */

#include <iomanip>
/* Include all necessary using statements from iomanip */

#include <cmath>

/* Write a user-defined manipulator width8 that sets
   the width to 8 */

/* Write a user-defined manipulator width12 that sets
   the width to 12 */

// function to convert a decimal number to a binary number
int convertBinary( int x )
{
   int power, result = 0;
   
   for ( power = 0; x >= pow( 2, power ); power++ ) ;

   for ( ; power >= 0; power-- ) {
      result *= 10;

      if ( x / pow( 2, power ) >= 1 ) {
         result++;
         x -= pow( 2, power );
      }
   }

   return result;
}

void printTable( int a[], const int size )
{
   cout << "\nTable with the numbers in various bases\n";

   /* Write a statement to left justify the following table */
   /* Write a statement to print the header, use the width8
      manipulator for spacing */
   
   for ( int i = 0; i < size; i++ )
      /* Write a statement to output the table of bases   */
      /* Octadecimal output should specify the base       */
      /* Hexadecimal output should include only uppercase */

   cout << "\nTable of formatted and unformatted "
        << "floating points\n";

   /* Write a statement to print header, use the width12 
      manipulator for spacing */

   for ( int j = 0; j < size; j++ ) {
      double x = static_cast< double > ( a[ j ] );
      /* Write a statement to output the formatted vs. 
         unformatted table */
      /* Formatted output should print in scientific notation,
         showing the decimal point and the sign, and
         have a precision of 2 */
      /* Undo formatting changes */
   }
}

int main()
{
   int x[ 5 ] = { 0 };

   for ( int counter = 0; counter < 5; counter++ ) {
      cout << "enter number " << counter + 1 << ": ";
      cin >> x[ counter ];

      /* Write a statement to test if stream errors occurred */
      /* If there were stream errors, input another number   */
   }

   printTable( x, 5 );

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

