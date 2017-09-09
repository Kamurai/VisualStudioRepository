// Chapter 11 of C++ How to Program
// Debugging problem (chapter11-debug.cpp)

#include <iostream>

using std::cout;
using std::endl;
using std::cin;
using std::ios;

#include <iomanip>

using std::setw;
using std::setprecision;
using std::resetiosflags;

double readNum();
double printFormatted( double, double );

int main()
{
   double x, y;

   x = readNum();
   y = readNum();
   printFormatted( x, y );

   return 0;
}

double readNum()
{
   double num = 0;
   double place = 10;

   cout << "Enter a number: ";
   num = cin.getline() - '0';

   while ( cin.peek() != '.' && cin.peek() != '\n' )
      num = num * 10 + atof( cin.get() );
   
   while ( cin.peek() != '.' )
   {
      num = num + static_cast< double >
         ( cin.get() ) / place;
      place *= 10;
   }
   cin.ignore();

   return num;
}

void printFormatted( double x, double y )
{
   char buffer[] = "The value of x is: ";
   
   for ( int i = 0; buffer[ i ] != '\n'; i++ )
      cout.put( buffer[ i ] );

   cout << setw( 12 ) << setprecision( 3 )
        << setfill( '0' ) 
        << setiosflags( ios::fixed | ios::showpoint |
           ios::left)
        << x << endl;

   cout.write( "The value of y is: " );
   cout << resetiosflags( ios::showpoint )
        << setprecision( 2 )
        << setiosflags( ios::scientific | ios::right )
        << y << endl;
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