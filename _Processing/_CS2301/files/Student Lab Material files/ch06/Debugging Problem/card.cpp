// Chapter 6 of C++ How to Program
// Debugging Problem (card.cpp)

#include <iostream>

using std::cout;
using std::endl;

void Card::Card() { suit = 4; value = 1; }

Card::Card( int s, int v ) { suit = s; value = v; }

Card::~Card() { cout << "The destructor has been invoked\n"; }

void Card::setSuit( int s ) { suit = s; }

void Card::setValue( int v ) { value = v; }

void print() const
{
   if ( !validCard() ) {
      cout << "This card is not valid\n";
      return;
   }
   cout << "This is the: ";
   switch ( value ) {
      case 1:
         cout << "Ace ";
         break;
      case 11:
         cout << "Jack ";
         break;
      case 12:
         cout << "Queen ";
         break;
      case 13:
         cout << "King ";
         break;
      default:
         cout << value << " ";
   }

   switch ( suit ) {
      case 1:
         cout << "of clubs\n";
         break;
      case 2:
         cout << "of diamonds\n";
         break;
      case 3:
         cout << "of hearts\n";
         break;
      case 4:
         cout << "of spades\n";
         break;
      default:
         cout << "\ninvalid suit\n";
   }
}

int Card::getSuit() const { return suit; }

int Card::getValue() const { return value; }

bool validCard() const
{
   return value >= 1 && value <= 13 && suit >= 1 && suit <= 4;
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