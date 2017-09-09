// Exercise 15.9 solution
#include <iostream> 

using std::cout; 

#include "list.h"

/* write a function that reverses the values of a list
   and stores them in another list */

int main()
{
   List< char > list1, list2;

   for ( char c = 'a'; c <= 'g'; ++c )
      list1.insertAtBack( c );

   list1.print();

   /* call function to reverse list */
   cout << "After reversing:\n";
   list2.print();

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