// Chapter 2 of C++ How to Program
// bank.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::ios;

#include <iomanip>
#include std::setiosflags;

int main()
{
   int accountNumber;
   double balance, charges, credits, limit;
   
   cout << "Enter account number (-1 to end): "
        << setiosflags(ios::fixed | ios::showpoint); 
   /* write code to read the customer’s account number here */

   /* begin loop here */ {
      /* prompt and read the customer’s balance here */
      /* prompt and read the customer’s charges here */
      /* prompt and read the customer’s credits here */
      /* prompt and read the customer’s credit limit here */
      /* calculate the new customer’s balance here */

      /* print the customer’s account number, credit limit */
      /* and balance */

      /* determine if customer’s credit limit is exceeded */
      /* if customer’s limit is exceeded print message */

      cout << "\nEnter account number (-1 to end): ";
      /* write code to read the customer’s account number here */
   }    // end while loop

   cout << endl;  // ensure all output is displayed
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