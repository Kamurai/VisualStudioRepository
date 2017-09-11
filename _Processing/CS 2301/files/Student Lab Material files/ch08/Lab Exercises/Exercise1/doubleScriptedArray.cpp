// Chapter 8 of C++ How to Program
// doubleScriptedArray.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <iomanip>

using std::setw;

#include <cstdlib>
#include <cassert>
#include "doubleScriptedArray.h"

DoubleScriptedArray::DoubleScriptedArray( int r, int c )
{
   rows = ( r > 0 ? r : 10 );
   columns = ( c > 0 ? c : 10 );
   ptr = new int[ rows * columns ]; 
   assert( ptr != 0 );    

   for ( int i = 0; i < rows * columns; i++ )
      ptr[ i ] = 0;  
}

DoubleScriptedArray::DoubleScriptedArray( 
   const DoubleScriptedArray &init )
{
   rows = init.rows;
   columns = init.columns;

   ptr = new int[ rows * columns ];
   assert( ptr != 0 );    

   for ( int i = 0; i < rows * columns; i++ )
      ptr[ i ] = init.ptr[ i ];  
}

/* write definition for destructor */

/* write definition for operator = */

bool DoubleScriptedArray::operator==(
   const DoubleScriptedArray &right ) const
{
   if ( rows != right.rows )
      return false;    

   if ( columns != right.columns )
      return false;

   for ( int i = 0; i < rows * columns; i++ )
      if ( ptr[ i ] != right.ptr[ i ] )
         return false; 

   return true;        
}

// Overloaded subscript operator for non-const Arrays
// reference return creates an lvalue
int &DoubleScriptedArray::operator()( int s1, int s2 )
{
   assert( s1 > 0 && s1 < rows );
   assert( s2 > 0 && s2 < columns );

   return ptr[ columns * s1 + s2 ]; 
}

// Overloaded subscript operator for const Arrays
// const reference return creates an rvalue
/* write overloaded subscript operator that returns an rvalue */

istream &operator>>( istream &input, DoubleScriptedArray &a )
{
   for ( int i = 0; i < a.rows * a.columns; i++ )
      input >> a.ptr[ i ];

   return input;
}

/* write function header for overloaded insertion operator */
{
   for ( int i = 0; i < a.rows * a.columns; i++ ) {
      output << setw( 6 ) << a.ptr[ i ];

      if ( ( i + 1 ) % a.columns == 0 )
         output << endl;
   }

   if ( i % a.columns != 0 )
      output << endl;

   return output; 
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
