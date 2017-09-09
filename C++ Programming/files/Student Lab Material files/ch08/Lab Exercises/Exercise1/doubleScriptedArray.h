// Chapter 8 of C++ How to Program
// doubleScriptedArray.h
#ifndef DARRAY_H
#define DARRAY_H

#include <iostream>

using std::ostream;
using std::istream;

class DoubleScriptedArray {
   /* write declaration for overloaded ostream operator */
   friend istream &operator>>( istream &, 
                               DoubleScriptedArray & );
public:
   DoubleScriptedArray( int = 10, int = 10 );            
   DoubleScriptedArray( const DoubleScriptedArray & );   
   ~DoubleScriptedArray();                               
   /* write prototype for overloaded = operator */     
   bool operator==( const DoubleScriptedArray & ) const; 

   /* write header for operator != */               
      { return ! ( *this == right ); }
   
   int &operator()( int, int );   // lvalue
   /* write prototype for overloaded () operator used as
      an rvalue */

private:
   int rows;     // number of rows in array
   int columns;  // number of columns in array
   int *ptr;     // pointer to first element of array
};

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
