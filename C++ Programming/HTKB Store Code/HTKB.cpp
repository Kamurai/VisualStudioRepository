//Chris Kemerait
//Final Project

//libraries
	#include <iostream>
	#include <iomanip>
	#include <cmath>
	#include <string>
	#include <cstring>
	#include <iostream>
	#include <fstream>
	#include <cassert>
	#include <cstdlib>

//	spot notes
//class libraries
	#include "Day.h"
	#include "Month.h"
	#include "Year.h"
	//#include "Item.h"
	//#include "Customer.h"
	#include "Event.h"

//procedures
	using namespace::std;

//declare variables

	int input = 0;
//	char test = 'a';
	int function = 0;
	bool box = false;
	int alpha = 0;
	int beta = 0;
	int chi = 0;
	string name;


//declare Classes (arrays)
	
	//Eleven Digits
	//Item item[99999999999];
	//Ten Digits
	//Customer customer[9999999999];
	//Nine Digits
	//Event event[999999999];

	Year years[10000];
	


// all database / matrices need to be built to be browsable and easy to sort.

//declare functions
	void Menu();
	void SearchCustomer();
	void SearchItem();
	void SearchEvent();
	
	void SetYears();
	void TestYears();

	void Checkname();

	
int main()
{

function = 0;

SetYears();
Menu();

cout << "This is the end of the program.\n\n";
return 0;

}


void Menu()
{
	do
	{
		cout << "Welcome to the HTKB Store Code!\n";
		cout << "What would you like to do?\n";
		cout << "1)  Look up Store Customer?\n";
		cout << "2)  Look up Store Item?\n";
		cout << "3)  Look up Store Event?\n";
		cout << "4)  Exit HTKB Store Code?\n\n";
		cout << "5)  Test your Months!\n\n";
		cout << "6)  Test your Years!\n\n";
		cout << "7)  Test your Days!\n\n";
		cout << "8)  Test Leap Year boolean!\n\n";
		
			box = false;		
			do
			{
				cout << "Declare Input:\n\n";
				cin  >> input;
				cout << "\n\n";

				if( input > 0 && input < 9 )
				{
					//Look up Store Customer
					if( input == 1 )
					{
						
						SearchCustomer();
					}
					//Look up Store Item
					if( input == 2 )
					{
						
						SearchItem();
					}
					//Look up Store Event
					if( input == 3 )
					{
						
						SearchEvent();
					}
					
					//Temporary Command
					if( input == 5 )
					{
						cout << "The following should be the names of months!\n\n";
						years[2006].testmonths();
							
					}
					//Temporary Command
					if( input == 6 )
					{
						cout << "The following should be the years!\n\n";
												
						TestYears();
						
					}
					//Temporary Command
					if( input == 7 )
					{
						cout << "The following should be 31 days!\n\n";
						
						years[2006].setdaysofmonth();
						years[2006].testdaysofmonth();
						
					}
					//Temporary Command
					if( input == 8 )
					{
						cout << "The following should show a Leap Year!\n\n";
						
						years[2004].setleapyear();
						years[2004].testleapyear();
						
					}
					//Input 4 is Exit HTKB Store Code
					if( input == 4 )
					{
						cout << "You are Exiting the Program\n\n";
						box = true;
					}
				}
				else
				{
					cout << "Error, there must be a mistake!\n\n\n";
				}
			}
			while( input < 0 || input > 9 );
	}
	while( box == false );
	function = 0;
	cout << "This is the end of the Menu.\n\n";
	box = false;
}

void SearchCustomer()
{
	cout << "Preparing to Look Up Store Customer\n\n";
}

void SearchItem()
{
	cout << "Preparing to Look Up Store Item\n\n";
}

void SearchEvent()
{
	cout << "Preparing to Look Up Store Event\n\n";

	cout << "Search by one of the following:  Date or Name.\n\n";
	cin >> name;
		Checkname();
}

void Checkname()
{
	if( name == "Date")
	{
		//SearchbyDate();
	}
	if( name == "Name")
	{
		//SearchbyName();
	}
}

void SetYears()
{
	function = 1;
	do
	{
			years[function].setyear(function);
			years[function].setmonths();
			function++;

	}
	while( function > 0 && function < 10000 );
	function = 1;
}

//This is a temporary function
void TestYears()
{
	function = 1;
	do
	{
			years[function].outputyear();
			function++;
	}
	while( function > 0 && function < 10000 );
	function = 1;
}

