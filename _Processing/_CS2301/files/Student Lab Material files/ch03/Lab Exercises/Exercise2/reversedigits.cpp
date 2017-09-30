// Chapter 3 of C++ How to Program
// reversedigits.cpp

#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <iomanip>

using std::setw;
using std::setfill;

/* write prototype for reverseDigits */
/* write prototype for width */

int main()
{
   int number;

   cout << "Enter a number between 1 and 9999: ";
   cin >> number;
   cout << "The number with its digits reversed is: "
        << setw( /* write call for width */ ) << setfill( '0' ) 
        << /* write call for reverseDigits */
        << endl;

   return 0;
}

/* write function header for reverseDigits */
{
   int reverse = 0, divisor = 1000, multiplier = 1;

   while ( n > 10 ) {
   
      if ( n >= divisor ) {
         reverse += n / divisor * multiplier;
         n %= divisor;
         /* write a line of code that reduces divisor by a factor    
         of 10 */
       /* write a line of code that increases multiplier
          by a factor of 10 */
      }
      else
         divisor /= 10;
   }
   
   reverse += n * multiplier;
   return reverse;
}

/* write function header for width */
{
    if ( n / 1000 )
       return 4;
    else if ( n / 100 )
       return 3;
    else if ( n / 10 )
       return 2;
    else
       return 1;
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