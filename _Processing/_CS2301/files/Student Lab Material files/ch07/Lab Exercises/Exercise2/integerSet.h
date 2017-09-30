// Chapter 7 of C++ How to Program
// integerSet.h
#ifndef INTSET_H
#define INTSET_H

class IntegerSet {
public:
   IntegerSet( int );
   IntegerSet( const IntegerSet& );
   IntegerSet unionOfIntegerSets( const IntegerSet& );
   IntegerSet intersectionOfIntegerSets( const IntegerSet& );
   void emptySet( void );
   void inputSet( void );
   void insertElement( int );
   void deleteElement( int );
   /* write prototype for setPrint */
   bool isEqualTo( const IntegerSet& ) const;
private:
   int *set;  // dynamically allocated set
   int size;
   bool validEntry( int x ) const { return x >= 0 && x < size; }
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

