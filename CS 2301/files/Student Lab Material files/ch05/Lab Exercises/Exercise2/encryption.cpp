// Chapter 5 of C++ How to Program
// encryption.cpp

#include <iostream>

using std::cout;
using std::endl;

/* Write the prototype for function encrypt */
/* Write the prototype for function decrypt */

int main()
{
   // Initialize an input string
   char string[] = "this is a secret!";

   encrypt( string );
   cout << "Encrypted string is: " << string << "\n";

   decrypt( string );
   cout << "Decrypted string is: " << string << endl;

   return 0;
}

void encrypt( char e[] )
{
   /* Write implementation for function encrypt */
}

void decrypt( char *ePtr )
{
   /* Write implementation for function decrypt */
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