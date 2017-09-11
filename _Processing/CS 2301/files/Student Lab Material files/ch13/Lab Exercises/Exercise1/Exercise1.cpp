// Chapter 13 of C++ How to Program
// numberverifier.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <cmath>
#include <cstring>

class nonNumber { 
public:
   nonNumber()
      : message( "non-integer detected" ) { }
   /* write definition for method what */
private: 
   const char *message;
};

int castInput( char *s )
{
   char *temp = s;
   int result = 0, negative = 1;

   // check for minus sign
   if ( temp[ 0 ] == '-' )
     negative = -1;

   for ( int i = strlen( s ) - 1, j = 0; i >= 0; i--, j++ ) {
         
      if ( negative == -1 && i == 0 )
         continue;

      if ( isdigit( temp[ i ] ) )
         result += ( temp[ i ] - '0' ) * pow( 10, j );   
      else 
         /* write code to throw nonNumber exception */
   }

   return result * negative;
}

int main()
{
   char input[ 100 ];
   int convert; 
   cout << "Please enter a number (EOF to end): ";

   while ( cin >> input ) {

      /* write try block that calls castInput */
      /* write catch statement that catches any exceptions
         that the call to castInput might have thrown */

      cout << "\n\nPlease enter a number (EOF to end): ";
   }

   cout << endl;
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

