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
   return furColor;
}
   
const char *Cat::getHairLength()
{
   return hairLength;
}

const char *Cat::getEyeColor()
{
   return eyeColor;
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
   int x = rand() % 2;

   if ( x == 0 )   
      hairLength = "short";
   else
      hairLength = "long"; 
}
