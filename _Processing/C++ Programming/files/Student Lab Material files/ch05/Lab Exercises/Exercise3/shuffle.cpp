// Chapter 5 of C++ How to Program
// shuffle.cpp

#include <iostream>

using std::cout;
using std::endl;
using std::ios;

#include <iomanip>

using std::setiosflags;
using std::setw;

#include <cstring>

#include <ctime>

#include <cstdlib>

void deal( const int [][ 13 ], const char *[], 
           const char *[],
           /* Write additional argument here */ );
void shuffle( int [][ 13 ] );

int main()
{
   const char *suit[ 4 ] =  
      { "Hearts", "Clubs", "Diamonds", "Spades" };
   const char *face[ 13 ] = 
      { "Ace", "Deuce", "Three", "Four",
        "Five", "Six", "Seven", "Eight",
        "Nine", "Ten", "Jack", "Queen", "King" };
   /* Write declaration for color here */

   int deck[ 4 ][ 13 ] = { 0 };

   shuffle( deck );
   deal( deck, face, suit,
         /* Write additional argument here */ );

   return 0;
}

void deal( const int wDeck[][ 13 ], const char *wFace[],
           const char *wSuit[], const char *wColor[] )
{
   for ( int card = 1; card <= 52; card++ )

      for ( int row = 0; row <= 3; row++ )

         for ( int column = 0; column <= 12; column++ )

            if ( wDeck[ row ][ column ] == card )
            {
               /* write statement to declare a boolean
                  variable isFace*/

               /* write statement to determine if the current
                  card is a face card. If it is, assign true
                  to variable isFace. If it is not, assign
                  false to variable isFace */

               cout << setw( 5 ) << setiosflags( ios::right )
                    << wFace[ column ] << " of "
                    << setw( 8 ) << setiosflags( ios::left )
                    << wSuit[ row ] << "  ";

               /* Write statement to display Red or Black */
               /* Write statement to display an asterick
                  if it is necessary */

               cout << ( card % 2 == 0 ? '\n' : '\t' );
            }
}

void shuffle( int wDeck[][ 13 ] )
{
   int row, column;

   srand( time( 0 ) );

   for ( int card = 1; card <= 52; card++ ) {
      do {
         row = rand() % 4;
         column = rand() % 13;
      } while( wDeck[ row ][ column ] != 0 );

      wDeck[ row ][ column ] = card;
   }
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