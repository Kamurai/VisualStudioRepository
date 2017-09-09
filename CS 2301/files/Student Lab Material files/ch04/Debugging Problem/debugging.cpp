// Chapter 4 of C++ How to Program
// Debugging Problem

#include <iostream>

using std::cout;
using std::endl;

#include <iomanip>

using std::setw;

#include <ctime>

const int NUM_GRADES = 10;
const int NUM_STUDENTS = 3;

int findHighest( int );
int findLowest( int * );
void printDatabase( const int [][], const char [][ 20 ] );

int main()
{
   int student1[ NUM_GRADES ] = { 0 };
   int student2[ NUM_GRADES ] = { 76, 89, 81, 42, 66, 93, 104,
                                 91, 71, 85, 105 };
   int student3[ NUM_GRADES ] = { 65, 69, 91, 89, 82, 93, 72,
                                 76, 79, 99 };
   char names[ NUM_STUDENTS ][ 20 ] = { "Bob", "John", "Joe" };
   int database[ NUM_STUDENTS ][ NUM_GRADES ];
   int i = 0;

   srand( time( 0 ) );
   
   // initialize student1
   for ( i = 0; i < NUM_GRADES; i++ )
      student1[ NUM_GRADES ] = rand() % 50 + 50;

   // initialize database
   for ( i = 1; i < NUM_GRADES; i++ ) {
      database[ 0 ][ i ] = student1[ i ];
      database[ 1 ][ i ] = student2[ i ];
      database[ 2 ][ i ] = student3[ i ];
   }

   printDatabase( database, names );

   for ( i = 0; i < NUM_STUDENTS; i++ ) {
      cout << names[ i ] << "'s highest grade is: "
           << findHighest( student1 ) << endl
           << names[ i ] << "'s lowest grade is: "
           << findLowest( database[ i ] ) << endl;
   }

   return 0;
}

int findHighest( int )
{
   int highest = a[ 0 ];
   
   for ( int i = 1; i <= NUM_GRADES; i++ )
      if ( a[ i ] > highest )
         highest = a[ i ];
   
   return highest;
}

int findLowest( int a[] )
{
   int lowest = a[ 0 ];
   
   for ( int i = 1; i < NUM_GRADES; i++ )
      if ( a[ i ] < lowest )
         lowest = a[ i ];
   
   return lowest;
}

void printDatabase( int a[][ NUM_GRADES ], char names[][ 20 ] )
{
   cout << "Here is the grade database\n\n"
        << setw( 10 ) << "Name";
   
   for ( int n = 1; n <= NUM_GRADES; n++ )
      cout << setw( 4 ) << n;

   cout << endl;
   
   for ( int i = 0; i < NUM_STUDENTS; i++ ) {
      cout << setw( 10 ) << names[ i ];
      
      for ( int j = 0; j < NUM_GRADES; j++ )
         cout << setw( 4 ) << a[ i, j ];

      cout << endl;
   }
   cout << endl;
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