// Chapter 12 of C++ How to Program
// Debugging problem (arithmetic.h)

#ifndef ARITHMETIC_H
#define ARITHMETIC_H

template< T >
class Arithmetic {
public:
   Arithmetic( T, T );
   T add() const;
   T sub() const;
   T mult() const;
   T div() const;
private:
   int val1, val2;
};

Arithmetic::Arithmetic( T v1, T v2 )
{
   val1 = v1;
   val2 = v2;
}

template< class T >
T Arithmetic::add() const { return val1 + val2; }

template< class T >
T Arithmetic< T >::sub() const { return val1 - val2; }

template< class T >
T Arithmetic< T >::mult() const { return val1 * val2; }

template< class X >
X Arithmetic< X >::div() const { return val1 / val2; }

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