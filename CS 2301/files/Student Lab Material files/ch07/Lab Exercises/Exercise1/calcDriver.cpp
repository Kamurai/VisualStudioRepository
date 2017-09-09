// Chapter 7 of C++ How to Program
// CalcDriver.cpp
#include <iostream>
#include "SimpleCalculator.h"

using std::cout;
using std::endl;

int main()
{
   double a = 10.0;
   double b = 20.0;
   /* declare any other variables needed here        */
   /* instantiate an object of type SimpleCalculator */

   cout << "The value of a is: " << a << "\n";
   cout << "The value of b is: " << b << "\n\n";
   
   /* write a line that adds a & b through your SimpleCalculator 
      object; assign the result to a variable named "addition" */
   cout << "Adding a and b yields " << addition << "\n";

   double subtraction = sc.subtract( a, b );
   cout << "Subtracting b from a " << subtraction << "\n";

   double multiplication = sc.multiply( a, b );
   cout << "Multiplying a and b yields " << multiplication
        << "\n";
   /* write a line that divides a and b through your 
      SimpleCalculator object; assign the result to a
       variable named "division" */
   cout << "Dividing a by b yields " << division << endl;

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
