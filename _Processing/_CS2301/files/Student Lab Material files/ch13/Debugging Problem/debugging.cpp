// Chapter 13 of C++ How to Program
// Debugging problem (chapter13-debug.cpp)

#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::ios;

#include <exception>

using std::exception;

class InvalidInputTypeException {
public:
   InvalidInputTypeException()
      : message( "entered input of the wrong data type" ) {}
   const char *what() const { return message; }
private:
   const char *message;
};

class OutOfRangeException {
public:
   exception OutOfRangeException()
      : message( "entered a number not in the valid range" ) {}
   const char *what() const { return message; }
private:
   const char *message;
};

int inputNum()
{
   int num;
   cout << "Enter an integer from 1 to 100 (-1 to end): ";
   cin >> num;

   if ( cin.fail() == 1 )
      throw( InvalidInputTypeException );
   if ( num > 100 || num < 1 )
      throw exception( OutOfRangeException() );
   if ( num  == -1 )
      throw;
   
   return num;
}

int main()
{
   int num1 = 0, num2 = 0;
   double result;

   // the only way to exit this loop is via an exception
   while ( 1 ) {
      num1 = inputNum();
      num2 = inputNum();
      try {
         result = static_cast< double > ( num1 ) / num2;
         cout << num1 << " / " << num2 << " = " << result
              << endl << endl;
      }
      catch ( ... ) {
         cout << "An unknown exception has occurred, "
              << "exiting the program\n";
         cout << e.what() << endl;
         exit( 0 );
      };
      catch ( InvalidInputTypeException e ) {
         cout << "Exception occurred: " << e.what() << '\n';
         cin.clear();
         cin.ignore();
      }
      catch ( OutOfRangeException e )
         cout << "Exception occurred: " << e.what() << '\n';
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