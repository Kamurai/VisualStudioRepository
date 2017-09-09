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
	char test = 'a';
	int files = 0, function = 0;
	int counter = 0, pass = 0, drive = 0;
	string filename;
	bool box = false;
	
//declare array
	double value[25][21][3];
	bool row[21];
	bool flag[4];
	string line[21] = 
	{   " 1) Planning.                       ", 
		" 2) Design.                         ", 
		" 3) Design Review.                  ", 
		" 4) Code.                           ", 
		" 5) Code Review.                    ", 
		" 6) Test.                           ", 
		" 7) Debugging (complete recovery).  ", 
		" 8) Post Mortem.                    ", 
		" 9) Number of runs until submission.", 
		"10) Lines of code (added/new).      ", 
		"11) Lines of code (reused).         ", 
		"12) Lines of code (modified).       ", 
		"13) Lines of code (deleted).        ", 
		"14) Number of test Cases Prepared.  ",
		"15) Number of test Cases Executed.  ",
		"16) Design Review.                  ",
		"17) Code Review.                    ",
		"18) Compile.                        ",
		"19) Test.                           ",
		"20) After Development.              ",
		"21) Defect Density.                 ",
	};
//declare functions (from lab 5)
	//(have all respective elements sum together)
	//(have all respective elements sum together and divide by # of files)
	//(remove standard deviation portion of varianceandstandarddeviation)
	//(remove variance portion of varianceandstandarddeviation)
		void twenties();
	//output functions (mainly for testing)
		void outputfiles();
		void outputfunctions(int )

//declare classes
	//class coversheet;
	//class row;

int main()
{
//"Datafeed"

//Read information of coversheets from data files
//store data in object or array or both (lab 5, lab 8/9)

//array[coversheet (1-whatever)][row (1-21)][col (1-2)]

//slave class: (row)
//attributes:
//estimated and actual

//master class: coversheet
//attributes:
//21 rows ( row[21] )

//Begin:


//Program do
	do
	{
	test = 'a';
//initialize value array to all 0s
	for(counter = 0; counter < 25; counter++)
	{
		for(pass = 0; pass < 21; pass++)
		{
			for(drive = 0; drive < 2; drive++)
			{
				value[counter][pass][drive] = 0;
			}
		}
	}

	do
	{
	test = 'a';
		cout << "Enter the number of files to compile (1-20):";
		cin >> files;
	}
	while(files < 0 || files > 20);
	for(counter = 0; counter < files; counter++)
	{
			cout << "Enter file to compile:";
			cin >> filename;
		if(filename == "pass")
		{
		}
		else
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
		//for loops set elements of file to array
			for(pass = 0; pass < 21; pass++)
			{
				for(drive = 0; drive < 2; drive++)
				{
					infile >> value[counter][pass][drive];
				}
			}

		//close file
			infile.close();
		}
	}
//Files do
	do
	{
//Should set arrays/objects for 4 files (total, mean, variance, and standard deviation):
	twenties();
	cout << "\n\n";

//"Menu" (lab 5)
//Allow user to select what it wants to display: (use boolean flags from lab 5 to hit functions)

//new rows do
	do
	{
	//make flags safe
		for(pass = 0; pass < 21; pass++)
		{
			row[pass] = false;
		}
		
		//Menu prompt for function uses
		//All option
			cout << "What row(s) do you wish to calculate?\n";
			cout << " 0) Complete file.\n";

			for(counter = 0; counter < 21; counter++)
			{
				cout << line[counter] << "\n";
			}
	

//more rows do
	do
	{

	

	//make function safe
		function = 0;
//function range do
do
{
		cout << "Select a row from the menu:";
		cin >> function;

//flag on/off
	if(function == 0)
	{
		for(pass = 0; pass < 21; pass++)
		{
			row[pass] =	true;
		
		}
	}
	else
	{
		row[function - 1] = true;
	}

}
while(function < 0 || function > 21);

do
{
		//do while question for more rows
			cout << "Do you wish to add more rows from the menu? (Y/N):";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');






//further menu do
	do
	{
	//make flags safe
		for(counter = 0; counter < 4; counter++)
		{
			flag[counter] = false;
		}
	//Menu prompt for function uses
		cout << "\nHow would you like to calculate your rows?\n";
		//bypass menu
			cout << "0) Bypass menu.\n";
		//mean
			cout << "1) Show TOTALs of the selected row(s).\n";
		//median
			cout << "2) Show MEANs of the selected row(s).\n";
		//mode
			cout << "3) VARIANCEs of the selected row(s).\n";
		//variance and standard deviation
			cout << "4) STANDARD DEVIATIONs of the selected row(s).\n";
		//additional option do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select an option from the menu:";
			cin >> function;
}
while(function < 0 || function > 4);
		//flag trip
				if(function == 0)
				{
				}
				else
				{
					flag[function - 1] = true;
				}			
do
{
		//do while question for additional options
			cout << "Do you wish to add more options from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');

//"Display"
//Output
	//Output files
		outputfiles();

	//Output twenties
		for(counter = 0; counter < 4; counter++)
		{
			outputfunction(counter);
		}
do
{
	//do while question for further options
		cout << "Do you wish to use the menu for new options? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

do
{
	//do while question for further rows
		cout << "Do you wish to use the menu for new rows? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';



do
{
	//do while question for files
		cout << "Are you finished with these files? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'n' || test == 'N');
	test = 'a';
do
{
	//do while question for program
		cout << "Do you wish to run program again with new files? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'Y');
	test = 'a';
	return 0;
}



//function statements
void twenties()
{
//total
	for(drive = 0; drive < 2; drive ++)
	{
		for(pass = 0; pass < 21; pass++)
		{
			for(counter = 0; counter < files; counter++)
			{
				value[21][pass][drive] += value[counter][pass][drive];
			}
		}
	}

//averaging

		for(pass = 0; pass < 21; pass++)
		{
			for(drive = 0; drive < 2; drive ++)
			{
				value[22][pass][drive] = value[21][pass][drive] / files;
			}
		}



//variance
//for loops total the squares of the differences between each file array element total and average

		for(pass = 0; pass < 21; pass++)
		{
			for(drive = 0; drive < 2; drive ++)
			{

				value[23][pass][drive] += ((value[21][pass][drive] - value[22][pass][drive]) * (value[21][pass][drive] - value[22][pass][drive]));

			}
		}


//for loops divide spread by files - 1 (because it says so, that's why)

		for(pass = 0; pass < 21; pass++)
		{
			for(drive = 0; drive < 2; drive ++)
			{
				value[23][pass][drive] = value[23][pass][drive] / (files - 1);
			}
		}

//standard deviation
//for loops get standard deviation (square root of variance)

		for(pass = 0; pass < 21; pass++)
		{
			for(drive = 0; drive < 2; drive ++)
			{
				value[24][pass][drive] = sqrt(value[23][pass][drive]);
			}
		}

}

void outputfiles()
{
	box = false;
	for(counter = 0; counter < files; counter++)
	{
		cout << "\nFile" << counter + 1<< "\n\n";
		for(pass = 0; pass < 21; pass++)
		{
			if(row[pass] == true)
			{
			for(drive = 0; drive < 2; drive ++)
			{
				if(pass < 9)
				{
					if(box == false)
					{
						cout << " " << line[pass] << "  " << "Estimated ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = false;
					}
				}
				else
				{
					if(box == false)
					{
						cout << " " << line[pass] << " " << " Estimated ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = false;
					}
				}
			}
			cout << "\n";
			}
		}
		cout << "\n";
		cout << "\n";
		cout << "\n";
	}
}

void outputfunction(int counter)
{
	box = false;
		switch(counter)
		{
		case 0:
			{
				cout << "\nTotals\n\n";
				counter = 21;
				break;
			}
		case 1:
			{
				cout << "\nMean\n\n";
				counter = 22;
				break;
			}
		case 2:
			{
				cout << "\nVariance\n\n";
				counter = 23;
				break;
			}
		case 3:
			{
				cout << "\nStandard Deviation\n\n";
				counter = 24;
				break;
			}
		}

		for(pass = 0; pass < 21; pass++)
		{
			if(row[pass] == true)
			{
			for(drive = 0; drive < 2; drive ++)
			{
				if(pass < 9)
				{
					if(box == false)
					{
						cout << " " << line[pass] << "  " << "Estimated ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = false;
					}
				}
				else
				{
					if(box == false)
					{
						cout << " " << line[pass] << " " << " Estimated ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(value[counter][pass][drive] < 10)
						{
							cout << " ";
						}
						cout << value[counter][pass][drive];
						box = false;
					}
				}
			}
			cout << "\n";
			}
		}
		cout << "\n";
		cout << "\n";
		cout << "\n";
}
