
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
	}
//prints sorted response array
	cout << "Array Elements:"; printArray(response, responseSize);
	cout << "\n";
	cout << "\n";
//nested for loops tallies number of ccurences of 0 through highest number
//and prints data
	for(pass = 0; pass <= response[responseSize - 1]; pass++)
	{
	//for loop sets second column elements to 0
		newArray[pass][2] = 0;
		for(counter = 0; counter <= response[responseSize - 1]; counter++)
		{
			if(response[counter] == newArray[pass][1])
			{
				newArray[pass][2]++;		
			}
		}
	}
	newArray[0][2] = newArray[0][2] - 1;
//for loop prints number of occurences of each number
	for(counter = 0; counter <= response[responseSize - 1]; counter++)
	{
		if(counter < 10)
		{
	//outputs 0-9 and relative occurences
		cout << " " << newArray[counter][1] << " occurs " << newArray[counter][2] << " times.\n";
		}
		else
		{
	//outputs 10-highest number and relative occurences
		cout << newArray[counter][1] << " occurs " << newArray[counter][2] << " times.\n";
		}
	}
//sets modeValue (mode) and largest (times mode occurs)
	for(counter = 0; counter < responseSize; counter++)
	{
		if (newArray[counter][2] > largest)
		{
		//largest is dependant upon tally loop above
			largest = newArray[counter][2];
			modeValue = newArray[counter][1];
		}
	}
	cout << "\n";
	cout << "\n";
	cout << "\n";
//prints final results
	cout << "The mode is the most frequent value. \n"
	       << "For this run the mode is " << modeValue
	       << " which occured " << largest << " times." << endl;

}