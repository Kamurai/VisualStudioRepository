// Chapter 5 of C++ How to Program
// Debugging Problem

#include <iostream>

using std::cout;
using std::cin;
using std::endl;

#include <cstring>

void initialize( char [], int * );
void input( const char [], int & );
void print( const char *, const int );
void growOlder( const char [], int * );
bool comparePeople( const char *, const int *,
                    const char *, const int * );

int main()
{
   char name1[ 25 ], name2[ 25 ];
   int age1, age2;

   initialize( name1, *age1 );
   initialize( name2, *age2 );

   print( name1, *age1Ptr );
   print( name2, *age2Ptr );

   input( name1, age1 );
   input( name2, age2 );

   print( &name1, &age1Ptr );
   print( &name2, &age2Ptr );

   growOlder( name2, age2 );

   if ( comparePeople( name1, &age1, name2, &age2 ) )
      cout << "Both people have the same name and age"
           << endl;

   return 0;
}

void input( const char name[], int & age )
{
   cout << "Enter a name: ";
   cin >> name;

   cout << "Enter an age: ";
   cin >> age;
   cout << endl;
}

void initialize( char name[], int * age )
{
   name = "";
   age = 0;
}

void print( const char name[], const int age )
{
   cout << "The value stored in variable name is: "
        << name << endl
        << "The value stored in variable age is: "
        << age << endl << endl;
}

void growOlder( const char name[], int * age )
{
   cout << name << " has grown one year older\n\n";
   *age++;
}

bool comparePeople( const char * name1, const int * age1,
                    const char * name2, const int * age2 )
{
   return ( age1 == age2 && strcmp( name1, name2 ) );
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