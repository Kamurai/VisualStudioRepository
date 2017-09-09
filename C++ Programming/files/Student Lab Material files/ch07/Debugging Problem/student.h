// Chapter 7 of C++ How to Program
// Debugging Problem (student.h)

#ifndef STUDENT_H
#define STUDENT_H

class Student {
public:
   Student( const char * );
   ~Student();
   void displayGrades() const;
   Student addGrade( int ) const;
   static int getNumStudents();
private:
   int *grades;
   char *name;
   int numGrades;
   int idNum;

   static int numStudents = 0;
};

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