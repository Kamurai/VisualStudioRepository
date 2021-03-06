// Chapter 10 of C++ How to Program
// Debugging Problem (dog.cpp)

#include<iostream>

using std::cout;
using std::endl;
using std::cin;

#include "dog.h"

Dog::Dog( const int h, const int w, const char * n )
   : Animal( h, w )
{
   strcpy( name, n );
   metricHeight = h * 2.5;
   metricWeight = w / 2.2;
}

const char * Dog::getName() const { return name; }

void Dog::setName( const char * n ) { strcpy( name, n); }

void Dog::print() const {
   cout << "The animal is a dog, its name is: "
        << name << endl;
   Animal::print();
}

int Dog::getHeight() const
{
   if ( useMetric() )
      return metricHeight;
   else
      return Animal::getHeight();
}

int Dog::getWeight() const 
{
   if ( useMetric() )
      return metricWeight;
   else
      return Animal::getWeight();
}

const bool Dog::useMetric() const
{
  int choice = 0;

   cout << "Which units would you like to see the weight in?"
        << " (Enter 1 or 2)\n"
        << "\t1. metric\n"
        << "\t2. standard\n";

   cin >> choice;

   if ( choice == 1 )
      return true;
   else
      return false;
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