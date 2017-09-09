// Chris Houser and Chris Kemerait
//Apl 15 2002
// date.cpp
#include <iostream>

using namespace::std;

//header file
#include "date.h"
	//variables
		int m = 10, d = 2, y = 1998;

int main()
{


   const int MAXDAYS = 160;
   Date a( 10, 2, 1998 );

   for ( int loop = 1; loop <= MAXDAYS; ++loop ) {
      a.print();

	  a.nextDay(m, d, y);
   }

   cout << endl;
   return 0;
}
