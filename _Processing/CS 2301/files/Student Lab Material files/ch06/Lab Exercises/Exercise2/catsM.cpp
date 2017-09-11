// Chapter 6 of C++ How to Program
// catsM.cpp
#include "cats.h"
#include <cstdlib>
#include <ctime>

Cat::Cat() 
{   
   srand( time( 0 ) );
   setFurColor();
   setEyeColor();
   setHairLength();
}
   
const char *Cat::getFurColor()
{
   /* Write function implementation here */
}
   
const char *Cat::getHairLength()
{
   /* Write function implementation here */
}

const char *Cat::getEyeColor()
{
   /* Write function implementation here */
}

void Cat::setFurColor()
{
   int x = rand() % 3;

   if ( x == 0 ) 
      furColor = "black";
   else if ( x == 1 )
      furColor = "gray";
   else
      furColor = "brown";   
}

void Cat::setEyeColor()
{
   int x = rand() % 3;

   if ( x == 0 )   
      eyeColor = "blue";
   else if ( x == 1 )
      eyeColor = "brown";
   else
      eyeColor = "green";   
}

void Cat::setHairLength()
{
   int x = rand % 2;

   if ( x == 0 )   
      hairLength = "short";
   else
      hairLength = "long"; 
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