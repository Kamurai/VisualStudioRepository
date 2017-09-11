//Chris Houser and Chris Kemerait
// Lab 5c
// This program introduces the topic of survey data analysis.by user input
// It computes the mean, median, mode, standard deviation and variance of the data from file input
// and gives menu options for each.

//Note:
	//Need to set chartarray[][1] to inputarray array (ordered) so that chartarray[][2]
	//matches counter in print loop

//Libraries
#include <iostream>
#include <iomanip>
#include <cmath>
#include <string>
#include <cstring>
#include <iostream>
#include <fstream>
#include <cassert>
#include <cstdlib>

//Something Jonavich hasn't taught us
using namespace std;
//Function Declarations

void mean(int [], int );
void median(int [], int);
void mode( int [99][2], int[], int);

//added functions:variance and standard deviation
void varianceandstandarddeviation(int[], int);
//
void bubbleSort(int[], int);
void printArray(int [], int );
void printdouble(double [], int);
//Variable Declarations
int inputsize, inputarray[99];
int counter = 0, pass = 0;
int chartarray[1000000][2];

//main
int main()
{

//variable declarations
	char test;
	char file;
	bool meanflag;
	bool modeflag;
	bool medianflag;
	bool varianceandstandarddeviationflag;
	int function = 0;
	string filename;

//do while to repeat program
	do
	{
	
	//Prompt for file containing array
		cout << "Enter a filename and .txt entension.\n"; 
		cin >> filename;
	do
	{
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
	//make variables safe
		counter = 0;
		inputsize = 0;
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
	//output size of input array
		cout << "This is the size of the array from file: " << inputsize << "\n";
	//print array
		cout << "These are the elements of the array from file:\n";
		printArray(inputarray, inputsize);	
	//close file
		infile.close();
	cout << "\n\n";
	//make flags safe
		meanflag = false;
		medianflag = false;
		modeflag = false;
		varianceandstandarddeviationflag = false;

		
	//Menu prompt for function uses
		//bypass menu
			cout << "Press the 0 key to bypass menu.\n";
		//mean
			cout << "Press the 1 key to show the mean.\n";
		//median
			cout << "Press the 2 key to show the median.\n";
		//mode
			cout << "Press the 3 key to show the mode.\n";
		//variance and standard deviation
			cout << "Press the 4 key to show the variance and standard deviation.\n";
		
			do
			{
		//make test safe
			test = 'a';
			cout << "Select an option from the menu:";
			cin >> function;
			switch(function)
			{
			case 0:
			{
				break;
			}
			case 1:
			{
				meanflag = true;
				break;
			}
			case 2:
			{
				medianflag = true;
				break;
			}
			case 3:
			{
				modeflag = true;
				break;
			}
			case 4:
			{
				varianceandstandarddeviationflag = true;
				break;
			}
			default:
			{
				cout << "\aError: Not a valid option!\n\n";
				exit(1);
				break;
			}
			}
			cout << "Do you wish to add more options from the menu? <Y/N>\n";
			cin >> test;	
			}
			while( test == 'y' || test == 'Y');

			


//chartarray intializes here	
	chartarray[inputarray[inputsize - 1]][2];
//nested for loops set all elements to 1-inputsize
	for(pass = 0; pass <= 2; pass++)
	{
		for(counter = 0; counter <= inputarray[inputsize - 1]; counter++)
		{
			chartarray[counter][pass] = counter;
		}
		cout << "\n";
	}
		cout << "\n";
	//output functions
		if(meanflag == true)	
		{
			mean(inputarray, inputsize);
		}
		if(medianflag == true)	
		{
			median(inputarray, inputsize);
		}
		if(modeflag == true)	
		{
			mode(chartarray, inputarray, inputsize);
		}
		if(varianceandstandarddeviationflag == true)	
		{
			varianceandstandarddeviation(inputarray,inputsize);
		}
	
	//make test safe
		file = 'a';
	//boolean answer for do while loop
		cout << "If you wish to stop using file enter Y here:\n";
		cin >> file;
	}
	while(file !='y' && file !='Y');
	//make test safe
		test = 'a';
	//boolean answer for do while loop
		cout << "If you wish to end testing enter N here:\n";
		cin >> test;
	}
//do while condition
	while(test !='n' && test !='N');
//return a value
	return 0;
}


void mean(int inputarray[], int inputsize)
{
	//variable declarations
	int total = 0;
	//output title
	cout << "********\n Mean\n********\n";
	//for loop totals all elements in the array
	for (int counter= 0; counter < inputsize; counter++)
	{
		total += inputarray [counter];
	}
	//output results of mean
	cout << "The mean is the average value of the data\n"
	<< "items.  The mean is equal to the total of\n"
	<< "all the data items (" << inputsize
	<< ").  The mean value for\nthis run is: "
	<< total << "/" << inputsize << " = "
	<<setiosflags ( ios::fixed | ios::showpoint)
	<<setprecision (4)
	<<static_cast<double>(total) / inputsize << "\n\n";
}

void median( int inputarray[], int inputsize)
{
	//variable declarations
	//output title
	cout << "\n********\n Median \n********\n"
	//output original array       
	<< "The unsorted array is";
	printArray(inputarray, inputsize);
	//sort array
	bubbleSort(inputarray, inputsize);
	//output sorted array
	cout << "\n\nThe sorted array is";
	printArray(inputarray, inputsize);
	//output results
	cout << "\n\nThe median is element " << (inputsize / 2) + 1
	<< " of\nthe sorted " << inputsize
	<< " element array. \nFor this run the median is "
	<< inputarray[(inputsize/2)] << "\n\n";
}


void mode(int chartarray[][2], int inputarray[], int inputsize)
{
//variable declarations
	int counter = 0, pass = 0;
	int largest = 0, modeValue = 0;
//output title
	cout << "\n********\n Mode\n********\n";
//sorts inputarray array
	bubbleSort(inputarray, inputsize);
//chartarray intializes here	
	chartarray[inputarray[inputsize - 1]][2];
//nested for loops set all elements to 1-inputsize
	for(pass = 0; pass <= 2; pass++)
	{
		for(counter = 0; counter <= inputarray[inputsize - 1]; counter++)
		{
			chartarray[counter][pass] = counter;
		}
	}
	
//prints sorted inputarray array
	cout << "Array Elements:"; printArray(inputarray, inputsize);
	cout << "\n";
	cout << "\n";

//nested for loops tallies number of ccurences of 0 through inputarray[inputsize - 1]
	for(pass = 0; pass <= inputarray[inputsize - 1]; pass++)
	{
	//for loop sets second column elements to 0
		chartarray[pass][2] = 0;
		for(counter = 0; counter < inputsize; counter++)
		{
			if(inputarray[counter] == chartarray[pass][1])
			{
				chartarray[pass][2]++;
			}
		}
	}


//for loop prints number of occurences of each number
	for(counter = 0; counter <= inputarray[inputsize - 1]; counter++)
	{
	//outputs 0-9 and relative occurences
		if(counter < 10)
		{
			cout << " " << chartarray[counter][1] << " Occurs " << chartarray[counter][2] << " times.\n";
		}
	//outputs 10-highest number and relative occurences
		else
		{
			cout << chartarray[counter][1] << " Occurs " << chartarray[counter][2] << " times.\n";
		}
	}
//sets modeValue (mode) and largest (times mode occurs)
		for(counter = 0; counter < inputarray[inputsize -1]; counter++)
		{
			if(chartarray[counter][2] > largest)
			{
				largest = chartarray[counter][2];
				modeValue = chartarray[counter][1];
			}
		}
		cout << "\n";
		cout << "\n";
//prints final results
	cout << "The mode is the most frequent value.  \n"
		   << "For this run the mode is " << modeValue
		   << " which occured " << largest << " times." << endl;

}

void varianceandstandarddeviation(int inputarray[], int inputsize)
{
//declare variables/functions
	double average = 0;
	double variance = 0;
	double standarddeviation = 0;
	double variancearray[99];
//output title
	cout << "\n*******************************\nVariance and Standard Deviation\n*******************************\n";
//initialize variance array
	variancearray[inputsize];
//for loop total elements of inputarray 
	for(counter = 0; counter <= inputsize; counter++)
	{
		average += inputarray[counter];
	}
//divide by inputsize
	average = average / inputsize;
//for loop totals the squares of the differences between each inputarray element and average
	for(counter = 0; counter < inputsize; counter++)
	{
		variance += ((inputarray[counter] - average) * (inputarray[counter] - average));
		variancearray[counter] = ((inputarray[counter] - average) * (inputarray[counter] - average));
	}
//divide spread by inputsize - 1 (because it says so, that's why)
	variance = variance / (inputsize - 1);
//standard deviation is the square root of variance
	standarddeviation = sqrt(variance);
//output variance and standard deviation
	cout << "Input array's size is: " << inputsize << "\n";
	cout << "Input array is as such:";
	printArray(inputarray, inputsize);
	cout << "\n";
	cout << "Variance array is as such:";
	printdouble(variancearray, inputsize);
	cout << "\n";
	cout << "Average is: " << average << "\n";
	cout << "Variance is: " << variance << "\n";
	cout << "Standard Deviation is: " << standarddeviation << "\n";
}

void bubbleSort(int inputarray[], int inputsize)
{
	int hold;

	for(int pass = 1; pass <= inputsize; pass++)
	{
		for (counter = 0; counter < inputsize -1; counter++)
			if(inputarray[counter] > inputarray[counter+1])
			{
				hold = inputarray[counter];
				inputarray[counter] = inputarray[counter+1];
				inputarray[counter+1] = hold;
			}
	}
}


void printArray(int inputarray[], int inputsize )
{
	cout << "\n";
	cout << "\n";
	for(counter =0; counter < inputsize; counter++)
	{
		cout << setw (10) << inputarray[counter] << setw(10) << endl;
	}
}

void printdouble(double inputarray[], int inputsize )
{
	cout << "\n";
	cout << "\n";
	for(counter =0; counter < inputsize; counter++)
	{
		cout << setw (10) << inputarray[counter] << setw(10) << endl;
	}
}

/*
Enter a filename and .txt entension.
bob.txt
This is the size of the array from file: 6
These are the elements of the array from file:


         1
         2
         3
         4
         5
         6


Press the 0 key to bypass menu.
Press the 1 key to show the mean.
Press the 2 key to show the median.
Press the 3 key to show the mode.
Press the 4 key to show the variance and standard deviation.
Select an option from the menu:1
Do you wish to add more options from the menu? <Y/N>
y
Select an option from the menu:2
Do you wish to add more options from the menu? <Y/N>
y
Select an option from the menu:3
Do you wish to add more options from the menu? <Y/N>
y
Select an option from the menu:4
Do you wish to add more options from the menu? <Y/N>
n




********
 Mean
********
The mean is the average value of the data
items.  The mean is equal to the total of
all the data items (6).  The mean value for
this run is: 21/6 = 3.5000


********
 Median
********
The unsorted array is

         1
         2
         3
         4
         5
         6


The sorted array is

         1
         2
         3
         4
         5
         6


The median is element 4 of
the sorted 6 element array.
For this run the median is 4


********
 Mode
********
Array Elements:

         1
         2
         3
         4
         5
         6


 0 Occurs 0 times.
 1 Occurs 1 times.
 2 Occurs 1 times.
 3 Occurs 1 times.
 4 Occurs 1 times.
 5 Occurs 1 times.
 6 Occurs 1 times.


The mode is the most frequent value.
For this run the mode is 1 which occured 1 times.

*******************************
Variance and Standard Deviation
*******************************
Input array's size is: 6
Input array is as such:

         1
         2
         3
         4
         5
         6

Variance array is as such:

    6.2500
    2.2500
    0.2500
    0.2500
    2.2500
    6.2500

Average is: 3.5000
Variance is: 3.5000
Standard Deviation is: 1.8708
If you wish to stop using file enter Y here:
*/