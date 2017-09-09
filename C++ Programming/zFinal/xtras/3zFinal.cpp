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
//class libraries
	#include "Value.h"
	#include "Weather.h"
	#include "Month.h"
	#include "Year.h"
	#include "City.h"
	#include "State.h"
//procedures
	using namespace::std;
//declare variables
	char test = 'a';
	int function = 0;
	double doublename;
	int alpha = 0, beta = 0, chi = 0, delta = 0, epsi = 0, fi = 0;
	string filename, stringname;
	bool box = false;
//declare array
	bool flag[4];
//declare functions
	void calc();
//output functions (mainly for testing)
	void generaloutput();
	void specificoutput(int alpha);
//declare classes
	State states[50];

	
int main()
{



//"Datafeed"
// coversheet intialization for labels
	//Read information of states from data files
	//store data in object



//Begin:


//Program do
	do
	{
	test = 'a';
//initialize value array to all 0s
	for(alpha = 0; alpha < 50; alpha++)
	{
		for(beta = 0; beta < 50; beta++)
		{
			for(chi = 0; chi < 3; chi++)
			{
				for(delta = 0; delta < 12; delta++)
				{
					for(epsi = 0; epsi < 3; epsi++)
					{
						for(fi = 0; fi < 6; fi++)
						{
							states[alpha].setmwvalue(beta, chi, delta, epsi, fi, 0);
						}
						
					}
				}
				for(epsi = 0; epsi < 3; epsi++)
				{
					for(fi = 0; fi < 6; fi++)
					{
						states[alpha].setywvalue(beta, chi, epsi, fi, 0);
					}	
				}
			}
		}
	}
	
		//declare file name
			filename = "bob.txt";
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

	//State Names
//for loops set elements of file to object
	for(alpha = 0; alpha < 50; alpha++)
	{
		infile >> stringname;
		states[alpha].setlabel(stringname);

		//City Names
		for(beta = 0; beta < 50; beta++)
		{
			infile >> stringname;
			states[alpha].setclabel(beta, stringname);

			//Year Names
			for(chi = 0; chi < 3; chi++)
			{
				infile >> stringname;
				states[alpha].setylabel(beta, chi, stringname);
				//Month Names
				for(delta = 0; delta < 12; delta++)
				{
					infile >> stringname;
					states[alpha].setmlabel(beta, chi, delta, stringname);
					//Month Weather Names
					for(epsi = 0; epsi < 3; epsi++)
					{
						infile >> stringname;
						states[alpha].setmwlabel(beta, chi, delta, epsi, stringname);
						//Month Weather Value Names
						for(fi = 0; fi < 6; fi++)
						{
							infile >> stringname;
							states[alpha].setmvlabel(beta, chi, delta, epsi, fi, stringname);
						}
						
					}
				}
				//Year Weather Names
				for(epsi = 0; epsi < 3; epsi++)
				{
					infile >> stringname;
					states[alpha].setywlabel(beta, chi, epsi, stringname);
					//Year Weather Value Names
					for(fi = 0; fi < 6; fi++)
					{
						infile >> stringname;
						states[alpha].setyvlabel(beta, chi, epsi, fi, stringname);
						
					}	
				}
			}
		}
	}

		//close file
			infile.close();
	}

//Should set arrays/objects for 4 files (total, mean, variance, and standard deviation):
	calc();
	cout << "\n\n";

//"Menu" (lab 5)
//Allow user to select what it wants to display: (use boolean flags from lab 5 to hit functions)

//new rows do
	do
	{
	//make flags safe
		for(beta = 0; beta < 21; beta++)
		{
			row[beta] = false;
		}
		
		//Menu prompt for function uses
		//All option
			cout << "What row(s) do you wish to calculate?\n";
			cout << " 0) Complete file.\n";

			for(alpha = 0; alpha < 21; alpha++)
			{
				cout << coversheet[0].getrowname(alpha) << "\n";
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
		for(beta = 0; beta < 21; beta++)
		{
			row[beta] =	true;
		
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
		for(alpha = 0; alpha < 4; alpha++)
		{
			flag[alpha] = false;
		}
	//Menu prompt for function uses
		cout << "\nHow would you like to calculate your rows?\n";
		//bybeta menu
			cout << "0) Bybeta menu.\n";
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
		for(alpha = 0; alpha < 4; alpha++)
		{
			outputfunctions(alpha);
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


//first function body won't work without this here...
{}


//function statements

void calc()
{
//total

	//need to get data from coversheet[?]
	//need to calculate (total/mean/variance/standard deviation) data
	//might be useful to use a temporary variable here to set calculations
	//need to set data to coversheet[?]
	
	//total-coversheet[21]
	//mean-coversheet[22]
	//variance-coversheet[23]
	//standard deviation-coversheet[24]


	for(chi = 0; chi < 2; chi ++)
	{
		for(beta = 0; beta < 21; beta++)
		{
			for(alpha = 0; alpha < files; alpha++)
			{
				temp[chi] += coversheet[alpha].getrow(beta, chi);
				
			}
			coversheet[21].setrow(beta, temp[0], temp[1]);
		}
	
	}
	

//averaging

		for(beta = 0; beta < 21; beta++)
		{
			for(chi = 0; chi < 2; chi ++)
			{
				temp[chi] = ( coversheet[21].getrow(beta, chi) ) / files;
			}
			coversheet[22].setrow(beta, temp[0], temp[1]);
		}
		


//variance
//for loops total the squares of the differences between each file array element total and average

		for(beta = 0; beta < 21; beta++)
		{
			for(chi = 0; chi < 2; chi ++)
			{

				temp[chi] += (( coversheet[21].getrow(beta, chi) - coversheet[22].getrow(beta, chi) ) * ( coversheet[21].getrow(beta, chi) - coversheet[22].getrow(beta, chi) ) );

			}
			coversheet[23].setrow(beta, temp[0], temp[1]);
		}


//for loops divide spread by files - 1 (because it says so, that's why)

		for(beta = 0; beta < 21; beta++)
		{
			for(chi = 0; chi < 2; chi ++)
			{
				temp[chi] = ( ( coversheet[23].getrow(beta, chi) ) / (files - 1) );
	
			}
			coversheet[23].setrow(beta, temp[0], temp[1]);
		}

//standard deviation
//for loops get standard deviation (square root of variance)

		for(beta = 0; beta < 21; beta++)
		{
			for(chi = 0; chi < 2; chi ++)
			{
				temp[chi] = sqrt( coversheet[23].getrow(beta, chi) );
			}
			coversheet[24].setrow(beta, temp[0], temp[1]);
		}

}

void generaloutput()
{
	box = false;
	for(alpha = 0; alpha < files; alpha++)
	{
		cout << "\nFile" << alpha + 1<< "\n\n";
		for(beta = 0; beta < 21; beta++)
		{
			if(row[beta] == true)
			{
			for(chi = 0; chi < 2; chi ++)
			{
				if(beta < 9)
				{
					if(box == false)
					{
						cout << coversheet[alpha].getrowname(beta) << " Estimated ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = false;
					}
				}
				else
				{
					if(box == false)
					{
						cout << coversheet[alpha].getrowname(beta) << " Estimated ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
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

void specificoutput(int alpha)
{
	if(flag[alpha] == true)
	{
		box = false;
		switch(alpha)
		{
		case 0:
			{
				cout << "\nTotals\n\n";
				alpha = 21;
				break;
			}
		case 1:
			{
				cout << "\nMean\n\n";
				alpha = 22;
				break;
			}
		case 2:
			{
				cout << "\nVariance\n\n";
				alpha = 23;
				break;
			}
		case 3:
			{
				cout << "\nStandard Deviation\n\n";
				alpha = 24;
				break;
			}
		}
	
		for(beta = 0; beta < 21; beta++)
		{
			if(row[beta] == true)
			{
			for(chi = 0; chi < 2; chi ++)
			{
				if(beta < 9)
				{
					if(box == false)
					{
						cout << coversheet[alpha].getrowname(beta)  << " Estimated ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = false;
					}
				}
				else
				{
					if(box == false)
					{
						cout << coversheet[alpha].getrowname(beta) << " Estimated ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
						box = true;
					}
					else if(box == true)
					{
						cout << " Actual ";
						if(coversheet[alpha].getrow(beta, chi) < 10)
						{
							cout << " ";
						}
						cout << coversheet[alpha].getrow(beta, chi);
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