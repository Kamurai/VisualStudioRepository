// Chapter 6 of C++ How to Program
// Debugging Problem (card.h)

#ifndef CARD_H
#define CARD_H

class Card {
public
   void Card();
   void Card( int s, int v );
   void ~Card();
   void setSuit( int s );
   void setValue( int v );
   int getSuit() const;
   int getValue() const;
   void print() const;
private
   int suit = 4;
   int value = 1;
   bool validCard() const;
}

#endif

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