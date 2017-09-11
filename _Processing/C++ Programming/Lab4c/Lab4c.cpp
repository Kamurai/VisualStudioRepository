//Chris Houser and Chris Kemerait
// Lab 4c
// This program introduces the topic of survey data analysis.by user input
// It computes the mean, median, and mode of the data.

//Note:
	//Need to set newArray[][1] to response array (ordered) so that newArray[][2]
	//matches counter in print loop

//Libraries
#include <iostream>
#include <iomanip>
//Something Jonavich hasn't taught us
using namespace std;
//Function Declarations
void mean(int [], int );
void median(int [], int);
void mode( int [99][2], int[], int);
void bubbleSort(int[], int);
void printArray(int [], int );
//Variable Declarations
int responseSize, response[99];
int counter, pass;
int newArray[99][2];

//main
int main()
{

	//variable declarations
	char test;
	//do while to repeat program
	do
	{
	do
	{
	//Prompt for array size
	cout << "Enter Array Size:"; 
	cin >> responseSize;
	}
	while(responseSize == 1 || responseSize == 0);
//initialize response array
	response[responseSize];
//Prompt for elements of array
	cout << "Enter positive integers for the Array:\n";
	for (counter = 0; counter < responseSize ; counter++)
	{
		cin >> response[counter];
	}
//newArray intializes here	
	newArray[response[responseSize - 1]][2];
//nested for loops set all elements to 1-responseSize
	for(pass = 0; pass <= 2; pass++)
	{
		for(counter = 0; counter <= response[responseSize - 1]; counter++)
		{
			newArray[counter][pass] = counter;
		}
		cout << "\n";
	}
	cout << "\n";
//output functions
	mean(response, responseSize);
	median(response, responseSize);
	mode(newArray, response, responseSize);
	//boolean answer for do while loop
	cout << "If you wish to end testing enter N here:\n";
	cin >> test;
	}
	//do while condition
	while(test !='n' && test !='N');
	//return a value
	return 0;
}


void mean(int response[], int responseSize)
{
	//variable declarations
	int total = 0;
	//output title
	cout << "********\n Mean\n********\n";
	//for loop totals all elements in the array
	for (int counter= 0; counter < responseSize; counter++)
	{
		total += response [counter];
	}
	//output results of mean
	cout << "The mean is the average value of the data\n"
	<< "items.  The mean is equal to the total of\n"
	<< "all the data items (" << responseSize
	<< ").  The mean value for\nthis run is: "
	<< total << "/" << responseSize << " = "
	<<setiosflags ( ios::fixed | ios::showpoint)
	<<setprecision (4)
	<<static_cast<double>(total) / responseSize << "\n\n";
}

void median( int response[], int responseSize)
{
	//variable declarations
	//output title
	cout << "\n********\n Median \n********\n"
	//output original array       
	<< "The unsorted array of responses is";
	printArray(response, responseSize);
	//sort array
	bubbleSort(response, responseSize);
	//output sorted array
	cout << "\n\nThe sorted array is";
	printArray(response, responseSize);
	//output results
	cout << "\n\nThe median is element " << (responseSize / 2) + 1
	<< " of\nthe sorted " << responseSize
	<< " element array. \nFor this run the median is "
	<< response[(responseSize/2)] << "\n\n";
}


void mode(int newArray[][2], int response[], int responseSize)
{
//variable declarations
	int counter = 0, pass = 0;
	int largest = 0, modeValue = 0;
//output title
	cout << "\n********\n Mode\n********\n";
//sorts response array
	bubbleSort(response, responseSize);
//newArray intializes here	
	newArray[response[responseSize - 1]][2];
//nested for loops set all elements to 1-responseSize
	for(pass = 0; pass <= 2; pass++)
	{
		for(counter = 0; counter <= response[responseSize - 1]; counter++)
		{
			newArray[counter][pass] = counter;
		}
		cout << "\n";
	}
	
//prints sorted response array
	cout << "Array Elements:"; printArray(response, responseSize);
	cout << "\n";
	cout << "\n";

//nested for loops tallies number of ccurences of 0 through response[responseSize - 1]
	for(pass = 0; pass <= response[responseSize - 1]; pass++)
	{
	//for loop sets second column elements to 0
		newArray[pass][2] = 0;
		for(counter = 0; counter < responseSize; counter++)
		{
			if(response[counter] == newArray[pass][1])
			{
				newArray[pass][2]++;
			}
		}
	}
//for loop prints number of occurences of each number
	for(counter = 0; counter <= response[responseSize - 1]; counter++)
	{
	//outputs 0-9 and relative occurences
		if(counter < 10)
		{
			cout << " " << newArray[counter][1] << " Occurs " << newArray[counter][2] << " times.\n";
		}
	//outputs 10-highest number and relative occurences
		else
		{
			cout << newArray[counter][1] << " Occurs " << newArray[counter][2] << " times.\n";
		}
	}
//sets modeValue (mode) and largest (times mode occurs)
		for(counter = 0; counter < response[responseSize - 1]; counter++)
		{
			if(newArray[counter][2] > largest)
			{
				largest = newArray[counter][2];
				modeValue = newArray[counter][1];
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



void bubbleSort(int response[], int responseSize)
{
	int hold;

	for(int pass = 1; pass <= responseSize; pass++)
	{
		for (counter = 0; counter < responseSize -1; counter++)
			if(response[counter] > response[counter+1])
			{
				hold = response[counter];
				response[counter] = response[counter+1];
				response[counter+1] = hold;
			}
	}
}


void printArray(int response[], int responseSize )
{
	for(counter =0; counter < responseSize; counter++)
	{

		if (counter%20 ==0)
			cout << endl;

		cout << setw (10) << response[counter] << setw(10);
	}
}