// Chapter 6 of C++ How to Program
// cats.cpp
#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <cstring>

#include "cats.h"

char test;

void check( Cat *, int);

int main()
{  
   const int PEN_SIZE = 7;
   Cat * Pen = new Cat[ PEN_SIZE ];
   Cat * pcat;
//program do
   do
   {

   for ( int c = 0; c < PEN_SIZE; c++ ) 
   {      
	/* Construct a new cat object            */
		//news
			pcat = new Cat;
			   //Cat cat = *pcat;
    /* Print the new cat object’s attributes */
		cout << "A " << pcat->getHairLength() << "-haired " << pcat->getFurColor() << " cat with " << pcat->getEyeColor() << " eyes has been added to the pen.\n";
		Pen[c] = *pcat;
		delete pcat;
    /* Write call to function check here     */
		check(Pen, c );

      cout << "Press a key to add the next cat." << endl;	        
      cin.get();
   }

	/* Write a statement to delete all cat objects */
				delete [] Pen;
//security do
do
{
	//do while question for cat "game"
		cout << "Do you wish to put cats in a new pen? (Y/N):\n\n\n";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');
   

   return 0;
}

void check( Cat Pen[], int numberOfCats )
{
   int brownCats = 0, grayCats = 0, blueEyes = 0,
       greenEyes = 0, brownEyes = 0;

   for ( int x = 0; x <= numberOfCats; x++ ) 
   {
      /* Write a series of statements which sum the total
         number of each type of cat (i.e., brownCats,
         greyCats, blueEyes, etc.) currently in the pen */
	   
	   if(Pen[x].getFurColor() == "brown")
	  	   brownCats++;

		if(Pen[x].getFurColor() == "gray")
	  	   grayCats++;
	  
		if(Pen[x].getEyeColor() == "blue" && Pen[x].getFurColor() == "black")
	  	   blueEyes++;

		if(Pen[x].getEyeColor() == "green" && Pen[x].getFurColor() == "black")
	  	   greenEyes++;

		if(Pen[x].getEyeColor() == "brown" && Pen[x].getFurColor() == "black")
	  	   brownEyes++;

   }

   if ( ( grayCats > brownCats ) && ( grayCats > 0 ) && ( brownCats > 0 ) )
   {
      cout << "The gray cats are fighting with the brown cat"
           << ( brownCats > 1 ? "s." : "." ) << endl;
   }

   if ( ( blueEyes > 0 ) && ( greenEyes > 0 ) && ( brownEyes = 1 ) )
   {
      cout << "The black cat(s) with blue eyes and the black "
           << "cat(s) with green eyes are\nfighting with the black "
           << "cat that has brown eyes." << endl;
   }
}
