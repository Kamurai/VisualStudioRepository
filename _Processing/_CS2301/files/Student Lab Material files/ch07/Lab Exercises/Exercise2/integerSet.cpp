// Chapter 7 of C++ How to Program
// integerSet.cpp
#include <iostream> 

using std::cout; 
using std::cin; 

#include <iomanip> 

#include <cassert>

using std::setw; 

/* write include directive for integerSet.h */

IntegerSet::IntegerSet( int s )
{
   size = s;
   set = new int[ size ];
   assert( set != 0 );
   /* write call to emptySet */
}

IntegerSet::IntegerSet( const IntegerSet &init )
{
   size = init.size;
   /* write statement to allocate sufficient memory */
   assert( set != 0 );
   emptySet();

   for ( int i = 0; i < size; i++ )
      /* write statement to copy elements of init */
}

/* write a definition for emptySet */

void IntegerSet::inputSet( void )
{
   int number;

   do {
      cout << "Enter an element (-1 to end): ";
      cin >> number;

      if ( validEntry( number ) )
         set[ number ] = 1;
      else if ( number != -1 )
         cout << "Invalid Element\n";
   } while ( number != -1 );

   cout << "Entry complete\n";
}

void IntegerSet::setPrint( void ) const
{
   int x = 1;
   bool empty = true;  // assume set is empty
   
   cout << '{';

   for ( int u = 0; u < size; ++u )
      if ( set[ u ] ) {
         cout << setw( 4 ) << u << ( x % 10 == 0 ? "\n" : "" );
         empty = false; // set is not empty
         ++x;
      }

   if ( empty )
      cout << setw( 4 ) << "---";  // display an empty set
		
   cout << setw( 4 ) << "}" << '\n';
}

IntegerSet IntegerSet::unionOfIntegerSets(const IntegerSet &r)
{   
   IntegerSet temp( size > r.size ? size : r.size );
   temp.emptySet();
   
   int iterations = size < r.size ? size : r.size

   for ( int i = 0; i < iterations; i++ )
      if ( set[ i ] == 1 || r.set[ i ] == 1 )
         temp.set[ i ] = 1;

   return temp;
}

/* write definition for intersectionOfIntegerSets */ 

void IntegerSet::insertElement( int k )
{
   if ( validEntry( k ) )
      set[ k ] = 1;
   else
      cout << "Invalid insert attempted!\n";
}

/* write definition for deleteElement */

/* write definition for isEqualTo */

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
