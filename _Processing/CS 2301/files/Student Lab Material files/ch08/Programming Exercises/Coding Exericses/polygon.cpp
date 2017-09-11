// Chapter 8 of C++ How to Program
// Coding Exercises
// polygon.cpp

class Polygon {
public:
   Polygon( int = 0, int = 0 );
   ~Polygon();
   void addVertex( int, int );
   const int getNumVertices() const;
private:
   int *xPts;
   int *yPts;
   int numVertices;
};

Polygon::Polygon( int x, int y )
{
   xPts = new int[ 1 ];
   yPts = new int[ 1 ];

   xPts[ 0 ] = x;
   yPts[ 0 ] = y;
   numVertices = 1;
}

Polygon::~Polygon()
{
   delete [] xPts;
   delete [] yPts;
}

void Polygon::addVertex( int x, int y )
{
   int *tempX = new int[ numVertices + 1 ];
   int *tempY = new int[ numVertices + 1 ];

   for ( int i = 0; i < numVertices; i++ ) {
      tempX[ i ] = xPts[ i ];
      tempY[ i ] = yPts[ i ];
   }

   tempX[ numVertices ] = x;
   tempY[ numVertices ] = y;

   delete [] xPts;
   delete [] yPts;

   xPts = tempX;
   yPts = tempY;
   numVertices++;
}

const int Polygon::getNumVertices() const
{
   return numVertices;
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