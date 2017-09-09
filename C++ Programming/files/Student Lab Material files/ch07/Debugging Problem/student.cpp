// Chapter 7 of C++ How to Program
// Debugging Problem (student.cpp)

#include <iostream>

using std::cout;
using std::endl;

#include<iomanip>

using std::setw;

#include <cstring>

#include "student.h"

static int numStudents = 0;

Student::Student( const char * n )
{
   grades = new int[ 1 ];
   grades[ 0 ] = 0;
   name = new char[ strlen( n ) + 1 ];

   strcpy( name, n );
   numGrades = 0;
   numStudents++;

   cout << "A student has been added\n";
}

Student::~Student()
{
   cout << name << " has been deleted\n";
   delete grades;
   delete name;
   numStudents--;
}

void Student::displayGrades() const
{
   cout << "Here are the grades for " << name << endl;
   
   for ( int i = 0; i < numGrades; i++ )
      cout << setw( 5 ) << grades[ i ];

   cout << endl << endl;
}

Student Student::addGrade( int grade ) const
{
   int * temp = new int[ numGrades + 1 ];
   
   for ( int i = 0; i < numGrades; i++ )
      temp[ i ] = grades[ i ];

   temp[ numGrades ] = grade;
   grades = temp;
   numGrades++;

   return this;
}

static int Student::getNumStudents() { return numStudents; }

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