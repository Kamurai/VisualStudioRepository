// Chapter 7 of C++ How to Program
// driver for integerSet class
#include <iostream> 

using std::cout; 
using std::endl; 

#include "integerSet.h"

int main()
{

   IntegerSet a( 101 ), b( 101 ), c( 101 ), d( 101 );

   cout << "Enter set A:\n";
   a.inputSet();
   cout << "\nEnter set B:\n";
   b.inputSet();

   /* write call to unionOfIntegerSets for object a 
      passing it b; assign the result to c */

   /* write call to intersectionOfIntegerSets for 
      object a passing it b; assign the result to d */

   cout << "\nUnion of A and B is:\n";
   c.setPrint();
   cout << "Intersection of A and B is:\n";
   d.setPrint();

   if ( a.isEqualTo( b ) )
      cout << "Set A is equal to set B\n";
   else
      cout << "Set A is not equal to set B\n";

   cout << "\nInserting 77 into set A...\n";
   a.insertElement( 77 );
   cout << "Set A is now:\n";
   a.setPrint();

   cout << "\nDeleting 77 from set A...\n";
   a.deleteElement( 77 );
   cout << "Set A is now:\n";
   a.setPrint();

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
