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
//procedures
	using namespace::std;
//declare variables
	char test;
	int files;
	int counter, pass;
	string filename;
//declare functions

int main()
{
	do
	{
		cout << "Enter the number of files to compile:"
		cin >> files;
		for(counter = 0; counter < files; counter++)
		{
			cout << "Enter file to compile:";
			cin >> filename;
		//open pathway
			ifstream infile;
		//open file
			infile.open(filename.c_str(),ios::in);
		//if file is false, then crash program
			if(!infile)
			{
				cout << "Could not find or open file\n";
				exit(1);
			}
		//while file is true then set elements of input array
			while(infile)
			{
				infile >> inputarray[counter];
				counter++;
				inputsize++;	
			}
		//intialize size of input array
			inputsize --;
			inputarray[inputsize];
		//close file
			infile.close();
		}

	
		
	//do while question
		cout << "Run program again? <Y/N>"
		cin >> test
	}
	while(test == 'y' || test == 'Y')

//"Datafeed"


//Read information of coversheets from data files
//store data in object or array or both (lab 5, lab 8/9)

//array[file# (1-whatever)][row (1-22)][col (1-3)]

//two classes: finished and unfinished
//attributes:
//twice for each row

//one class: display
//attributes:
//thrice for each row


//"Menu" (lab 5)
//Allow user to select what it wants to display:
//total
//average
//variance
//standard deviation


//"Display"
//Output
//Should create data for 4 files:
//total
//average
//variance
//standard deviation

	return 0;
}