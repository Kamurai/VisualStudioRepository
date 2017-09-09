// Chapter 2 of C++ How to Program
// wagecalculator.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::ios;

#include <iomanip>

using std::setiosflags;
using std::setprecision;

int main()
{
   /* declare program variables here */

   cout << "Enter hours worked (-1 to end): "
        << setiosflags( ios::fixed | ios::showpoint );
   cin >> hours;

   /* write code to begin loop here */  {
      /* write code here to prompt and input hourly rate */
      
      /* write code here to determine if hours worked are less
         than or equal to 40 and if so, calculate base pay.
         If not, calculate base + overtime pay */
      cout << "Salary is $" << setprecision( 2 ) << salary 
           << "\n\nEnter hours worked (-1 to end): ";
      cin >> hours;
   }

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