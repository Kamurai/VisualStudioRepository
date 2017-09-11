// Chapter 4 of C++ How to Program
// sales.cpp

#include <iostream>

using std::cout;
using std::cin;
using std::endl;
using std::ios;

#include <iomanip>

using std::setiosflags;
using std::setprecision;
using std::setw;

int main()
{
   const int PEOPLE = 5, PRODUCTS = 6;
   /* Write the declaration for array sales here */
   double value, totalSales,
          productSales[ PRODUCTS ] = { 0.0 };
   int salesPerson, product;
   
   cout << "Enter the sales person (1 - 4), "
        << "product number (1 - 5)\nand total sales."
        << "Enter -1 for the sales person to end input.\n";
   cin >> salesPerson;
   
   while ( salesPerson != -1 ) {
      cin >> product >> value;
      /* Write a statement that adds values to the
         sales array */
      cin >> salesPerson;
   }

   // table header: describes output and prints
   // column header(product numbers 1-5)
   cout << "\nThe total sales for each sales person "
        << "are displayed\nat the end of each row,"
        << "and the total sales for each\nproduct "
        << "are displayed at the bottom of each column.\n"
        << setw( 10 ) << 1 << setw( 10 ) << 2
        << setw( 10 ) << 3 << setw( 10 ) << 4
        << setw( 10 ) << 5 << setw( 12 ) << "Total\n"
        << setiosflags( ios::fixed | ios::showpoint );

   // nested loop structure: prints salesperson number
   // followed by the amounts sold for each product
   for ( int i = 1; /* Write condition here */ ; ++i ) {
      totalSales = 0.0;

      // this prints salesperson number
      cout << i;
      
      // inner loop: prints amounts sold for each product
      for ( int j = 1; /* Write condition here */ ;
            ++j ) {
         /* Write a statement that adds the current sales
             element to totalSales */

         // print sales for each salesperson for each product
         cout << setw( 10 ) << setprecision( 2 )
              << sales[ i ][ j ];

         /* Write a statement that adds the current sales
            element to productSales */
      }

      // print the last column item (total sales of each
      // product). The totalSales value is 9.99 under
      // "Total" in the output box. After this value is
      //  printed, the next table line can be created
      cout << setw( 10 ) << setprecision( 2 )
           << totalSales << '\n';
   }
   
   // this is the header for the last row
   cout << "\nTotal" << setw( 6 ) << setprecision( 2 )
        << productSales[ 1 ];

   // this prints the last row which displays the total sales
   // for each product
   for ( int j = 2; j < PRODUCTS; ++j )
      cout << setw( 10 ) << setprecision( 2 )
           << productSales[ j ];

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