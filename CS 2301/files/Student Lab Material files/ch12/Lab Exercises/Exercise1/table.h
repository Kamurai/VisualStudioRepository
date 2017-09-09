// Chapter 12 of C++ How to Program
// table.h

#ifndef TABLE_H
#define TABLE_H

#include <iostream>

using std::ostream;
using std::istream;

/* write code that specifies Table as a template definition 
   with type parameter elementType */
class Table {
public:
   Table( int = 10, int = 10 );  // default constructor                       
   Table( const Table< elementType > & ); // copy constructor
   ~Table();                               
   
   void print() const;
   void inputValues();
   const Table< elementType > &operator=( 
      const Table< elementType > & );                                                          
   bool operator==( const Table< elementType > & ) const; 

   // Determine if two arrays are not equal and
   // return true, otherwise return false (uses operator==).
   bool operator!=( const Table< elementType > &right ) const  
      { return !( *this == right ); }  

   elementType &operator()( int, int );              
   const elementType &operator()( int, int ) const;  
private:
   int rows;             // number of rows in array
   int columns;          // number of columns in array
   /* write declaration for private data member ptr, a pointer 
      that contains the dynamically allocated array */

};


template < class elementType >
Table< elementType >::Table( int r, int c )
{
   rows = ( r > 0 ? r : 10 );
   columns = ( c > 0 ? c : 10 );
   /* write code to allocate dynamically an array with rows * 
      columns elements of type elementType */

   assert( ptr != 0 );    

   for ( int i = 0; i < rows * columns; i++ )
      ptr[ i ] = 0; // initialize array       
}

template < class elementType >
Table< elementType >::Table(
   const Table< elementType > &init ) 
{
   rows = init.rows;
   columns = init.columns;

   ptr = new elementType[ rows * columns ];
   assert( ptr != 0 );    

   for ( int i = 0; i < rows * columns; i++ )
      ptr[ i ] = init.ptr[ i ];  
}

template < class elementType >
Table< elementType >::~Table()
{
   delete [] ptr;         
}

template < class elementType >
const Table< elementType > &Table< elementType >
   ::operator=( const Table< elementType > &right )
{
   if ( &right != this ) {  
      
      if ( rows * columns != right.rows * right.columns ) {
         delete [] ptr;         
         rows = right.rows;     
         columns = right.columns;     
         ptr = new elementType[ rows * columns ]; 
         assert( ptr != 0 ); 
      }

      for ( int i = 0; i < rows * columns; i++ )
         ptr[ i ] = right.ptr[ i ];  
   }

   return *this;   
}

/* write definition for overloaded operator== */

/* write definition for overloaded subscript operator for
    non-const Tables; reference return creates an lvalue */

template < class elementType >
const elementType &Table< elementType >
   ::operator()( int s1, int s2 ) const
{
   assert( 0 <= s1 && s1 < rows );
   assert( 0 <= s2 && s2 < columns );

   return ptr[ columns * s1 + s2  ]; // rvalue
}

template < class elementType >
void Table< elementType >
   ::inputValues()
{
   for ( int i = 0; i < rows * columns; i++ )
      cin >> ptr[ i ];
}

template < class elementType >
void Table< elementType >
   ::print() const
{
   for ( int i = 0; i < rows * columns; i++ ) {
      cout << setw( 6 ) << ptr[ i ];

      if ( ( i + 1 ) % columns == 0 )
         cout << endl;
   }

   if ( i % columns != 0 )
      cout << endl;
}

#endif


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