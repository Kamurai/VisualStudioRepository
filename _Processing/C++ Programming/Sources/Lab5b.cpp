//Chris Houser and Chris Kemerait
// Lab 5b
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
		cout << "this is input size:" << inputsize << "\n";
	//print array
		cout << "These are the elements of the array from the file:\n";
		printArray(inputarray, inputsize);	
	//close file
		infile.close();
	
	//make flags safe
		meanflag = false;
		medianflag = false;
		modeflag = false;
		varianceandstandarddeviationflag = false;

		
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

		mean(inputarray, inputsize);
		median(inputarray, inputsize);
		mode(chartarray, inputarray, inputsize);
		varianceandstandarddeviation(inputarray,inputsize);
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
		cout << "\n";
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
	//chartarray[0][2] = chartarray[0][2] - 1;


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
	cout << "Total:" << variance;
//divide spread by inputsize - 1 (because it says so, that's why)
	variance = variance / (inputsize - 1);
//standard deviation is the square root of variance
	standarddeviation = sqrt(variance);
//output variance and standard deviation
	cout << "\n\n";
	cout << "Input array's size is:" << inputsize << "\n";
	cout << "Input array is as such:";
	printArray(inputarray, inputsize);
	cout << "\n";
	cout << "Variance array is as such:";
	printdouble(variancearray, inputsize);
	cout << "\n";
	cout << "Average is:" << average << "\n";
	cout << "Variance is:" << variance << "\n";
	cout << "Standard Deviation is:" << standarddeviation << "\n";
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