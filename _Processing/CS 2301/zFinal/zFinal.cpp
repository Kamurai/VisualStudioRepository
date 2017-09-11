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
// const array numofstates
	const int numofstates = 3;
	const int numofcities = 3;
	const int numofyears = 3;
	const int numofmonths = 12;
	const int numofweathers = 3;
	const int numofvalues = 6;

//declare variables
	char test = 'a';
	int function = 0;
	double doublename = 0, temp = 0;
	int alpha = 0, beta = 0, chi = 0, delta = 0, epsi = 0, fi = 0;
	string filename, stringname;
	bool box = false;
//declare arrays
	bool stateflag[numofstates];
	bool cityflag[numofcities * numofstates];
	
	bool yearflag[numofyears * numofcities * numofstates];
	bool monthflag[numofmonths * numofyears * numofcities * numofstates];
	bool weatherflag[(numofweathers * numofmonths + numofweathers) * numofyears * numofcities * numofstates];
	bool valueflag[(numofvalues*numofweathers*numofmonths+numofvalues*numofweathers)*numofyears*numofcities*numofstates];

//declare functions
	void calc();
	void output();
//output functions (mainly for testing)
	void specificoutput(int alpha);


//declare classes
	State states[numofstates];

	
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
			cout << "Loading-Please Wait\n";
	test = 'a';
//initialize value array to all 0s
	for(alpha = 0; alpha < numofstates; alpha++)
	{
		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi++)
			{
				for(delta = 0; delta < numofmonths; delta++)
				{
					for(epsi = 0; epsi < numofweathers; epsi++)
					{
						for(fi = 0; fi < numofvalues; fi++)
						{
							states[alpha].setmwvalue(beta, chi, delta, epsi, fi, 0);
						}
						
					}
				}
				for(epsi = 0; epsi < numofweathers; epsi++)
				{
					for(fi = 0; fi < numofvalues; fi++)
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
	for(alpha = 0; alpha < numofstates; alpha++)
	{
		infile >> stringname;
		states[alpha].setlabel(stringname);

		//City Names
		for(beta = 0; beta < numofcities; beta++)
		{
			infile >> stringname;
			states[alpha].setclabel(beta, stringname);

			//Year Names
			for(chi = 0; chi < numofyears; chi++)
			{
				infile >> stringname;
				states[alpha].setylabel(beta, chi, stringname);
				//Year Weather Names
				for(epsi = 0; epsi < numofweathers; epsi++)
				{
					infile >> stringname;
					states[alpha].setywlabel(beta, chi, epsi, stringname);
					//Year Weather Value Names and Values
					for(fi = 0; fi < numofvalues; fi++)
					{
						infile >> stringname;
						states[alpha].setyvlabel(beta, chi, epsi, fi, stringname);
						infile >> doublename;
						states[alpha].setywvalue(beta, chi, epsi, fi, doublename);
					}	
				}
				//Month Names
				for(delta = 0; delta < numofmonths; delta++)
				{
					infile >> stringname;
					states[alpha].setmlabel(beta, chi, delta, stringname);
					//Month Weather Names
					for(epsi = 0; epsi < numofweathers; epsi++)
					{
						infile >> stringname;
						states[alpha].setmwlabel(beta, chi, delta, epsi, stringname);
						//Month Weather Value Names and Values
						for(fi = 0; fi < numofvalues; fi++)
						{
							infile >> stringname;
							states[alpha].setmvlabel(beta, chi, delta, epsi, fi, stringname);
							infile >> doublename;
							states[alpha].setmwvalue(beta, chi, delta, epsi, fi, doublename);
						}
						
					}
				}
				
			}
		}
	}

		//close file
			infile.close();
	

//Should set arrays/objects for 4 files (total, mean, variance, and standard deviation):
	calc();	
	
	cout << "\n\n";

//"Menu" (lab 5)
//Allow user to select what it wants to display: (use boolean flags from lab 5 to hit functions)

//new states do
	do
	{
	//make flags safe
		for(alpha = 0; alpha < numofstates; alpha++)
		{
			stateflag[alpha] = false;
		}
		for(alpha = 0; alpha < numofcities*numofstates; alpha++)
		{
			cityflag[alpha] = false;
		}
		for(alpha = 0; alpha < numofyears*numofcities*numofstates; alpha++)
		{
			yearflag[alpha] = false;
		}
		for(alpha = 0; alpha < numofmonths*numofyears*numofcities*numofstates; alpha++)
		{
			monthflag[alpha] = false;
		}	
		for(alpha = 0; alpha < numofweathers * (numofmonths * numofyears * numofcities * numofstates) + (numofyears * numofcities * numofstates); alpha++)
		{
			weatherflag[alpha] = false;
		}
		for(alpha = 0; alpha < numofvalues * (numofweathers * numofmonths * numofyears * numofcities * numofstates) + (numofweathers * numofyears * numofcities * numofstates); alpha++)
		{
			valueflag[alpha] = false;
		}
			
		

		//Menu prompt for states
		//All option
			cout << "Welcome to Weatherguide!\nPress 0 during any menu to select all options available.\n\n\n";
			cout << "Which states do you wish to choose cities from?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				cout << alpha + 1 << ") " << states[alpha].getlabel()  << ".\n";
			}
	

//more states do
	do
	{

	//make function safe
		function = 0;
//function range do
do
{
		cout << "Select a state from the menu:";
		cin >> function;

//flag on/off
	if(function == 0)
	{
		for(beta = 0; beta < numofstates; beta++)
		{
			stateflag[beta] = true;
		
		}
	}
	else
	{
		stateflag[function - 1] = true;
	}

}
while(function < 0 || function > numofstates);

do
{
		//do while question for more states
			cout << "Do you wish to add more states from the menu? (Y/N):";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');

//new states do
//further city menu do
	do
	{
	//Menu prompt for cities from selected states
		
		cout << "\nWhich cities from the selected states would you like data concerning?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
				cout << states[alpha].getlabel() << ":\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					cout << setw(5) << beta + 1 + numofcities*alpha << ") " << states[alpha].getclabel(beta) << "\n";
				}

				}
			}

		//additional cities do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select a city from the menu:";
			cin >> function;
}
while(function < 0 || function > numofcities*numofstates);
		//flag trip
				if(function == 0)
				{
					for(beta = 0; beta < numofcities*numofstates; beta++)
					{
						cityflag[beta] = true;
		
					}
				}
				else
				{
					cityflag[function - 1] = true;
				}			
//security do
do
{
		//do while question for additional cities
			cout << "Do you wish to add more cities from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');

//new states do
//further city menu do
//further years do
	do
	{
	//Menu prompt for years for selected cities
		cout << "\nFrom which year do you want data concerning?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
					cout << states[alpha].getlabel() << ".\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					if(cityflag[beta+numofcities*alpha] == true)
					{
						cout << setw(5) << states[alpha].getclabel(beta) << ".\n";
					
					for(chi = 0; chi < numofyears; chi++)
					{
						cout << setw(10) << chi+1+numofcities*beta+numofcities*numofyears*alpha << ") " << states[alpha].getylabel(beta, chi) << ".\n";
					}
					}
				}
				}		
			}

		//additional years do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select a year from the menu:";
			cin >> function;
}
while(function < 0 || function > numofcities*numofstates*numofyears);
		//flag trip
				if(function == 0)
				{
					for(beta = 0; beta < numofstates*numofcities*numofyears; beta++)
					{
						yearflag[beta] = true;
		
					}
				}
				else
				{
					yearflag[function - 1] = true;
				}			
//security do
do
{
		//do while question for additional years
			cout << "Do you wish to add more years from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');
//new states do
//further city menu do
//further years do
//further months do
	do
	{
	//Menu prompt for months of selected years
		cout << "\nWhich month would you like data concerning?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
				cout << states[alpha].getlabel() << ".\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					if(cityflag[beta+numofcities*alpha] == true)
					{
						cout << setw(5) << states[alpha].getclabel(beta) << ".\n";
					
					for(chi = 0; chi < numofyears; chi++)
					{
						if(yearflag[chi+(numofcities*beta+numofcities*numofyears*alpha)] == true)
						{
							cout << setw(10) << states[alpha].getylabel(beta, chi) << ".\n";
						
						for(delta = 0; delta < numofmonths; delta++)
						{
							cout << setw(15) << delta+1+numofmonths*chi+beta*numofmonths*numofyears+alpha*numofmonths*numofcities*numofyears << ") " << states[alpha].getmlabel(beta, chi, delta) << ".\n";
						}
						}
					}
					}
				}
				}
			}

		//additional months do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select a month from the menu:";
			cin >> function;
}
while(function < 0 || function > numofmonths * numofyears * numofcities * numofstates);
		//flag trip
				if(function == 0)
				{
					for(beta = 0; beta < numofmonths * numofyears * numofcities * numofstates; beta++)
					{
						monthflag[beta] = true;
		
					}
				}
				else
				{
					monthflag[function - 1] = true;
				}			
//security do
do
{
		//do while question for additional months
			cout << "Do you wish to add more months from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');
//new states do
//further city menu do
//further years do
//further months do
//further weathers do
	do
	{
	//Menu prompt for weathers of selected years and months
		cout << "\nWhich type of weather do you want data concerning?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
					cout << states[alpha].getlabel() << ".\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					if(cityflag[beta+numofcities*alpha] == true)
					{
						cout << setw(5) << states[alpha].getclabel(beta) << ".\n";
					
					for(chi = 0; chi < numofyears; chi++)
					{
						if(yearflag[chi+(numofcities*beta+numofcities*numofyears*alpha)] == true)
						{
							cout << setw(10) << states[alpha].getylabel(beta, chi) << ".\n";
						
						for(delta = 0; delta < numofweathers; delta++)
						{
							cout << setw(20) << delta+1+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities << ") " << states[alpha].getywlabel(beta, chi, delta) << ".\n";
						}
						for(delta = 0; delta < numofmonths; delta++)
						{
							if(monthflag[delta+numofmonths*chi+beta*numofmonths*numofyears+alpha*numofmonths*numofcities*numofyears] == true)
							{
								cout << setw(15) << states[alpha].getmlabel(beta, chi, delta) << ".\n";
							
							for(epsi = 0; epsi < numofweathers; epsi++)
							{
								cout << setw(20) << epsi+4+delta*numofweathers+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities << ") " << states[alpha].getmwlabel(beta, chi, delta, epsi) << ".\n";
							}
							}
						}
						}
					}
					}
				}
				}
			}

		//additional weathers do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select a type of weather for a time period from the menu:";
			cin >> function;
}
while(function < 0 || function > numofweathers * (numofmonths * numofyears * numofcities * numofstates) + (numofyears * numofcities * numofstates));
		//flag trip
				if(function == 0)
				{
					for(beta = 0; beta < (numofweathers * numofmonths + numofweathers) * numofyears * numofcities * numofstates; beta++)
					{
						weatherflag[beta] = true;
		
					}
					
				}
				else
				{

					weatherflag[function - 1] = true;
				}			
//security do
do
{
		//do while question for additional months
			cout << "Do you wish to add more types of weather from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');


//new states do
//further city menu do
//further years do
//further months do
//further weathers do
//further values do
	do
	{
	//Menu prompt for weathers of selected years and months
		cout << "\nWhich type of weather do you want data concerning?\n";

			for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
					cout << states[alpha].getlabel() << ".\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					if(cityflag[beta+numofcities*alpha] == true)
					{
						cout << setw(5) << states[alpha].getclabel(beta) << ".\n";
					
					for(chi = 0; chi < numofyears; chi++)
					{
						if(yearflag[chi+(numofcities*beta+numofcities*numofyears*alpha)] == true)
						{
							cout << setw(10) << states[alpha].getylabel(beta, chi) << ".\n";
						
						for(delta = 0; delta < numofweathers; delta++)
						{
							if(weatherflag[delta+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities] == true)
							{
								cout << setw(20) << states[alpha].getywlabel(beta, chi, delta) << ".\n";
							
							for(epsi = 0; epsi < numofvalues; epsi++)
							{
								cout << setw(25) << epsi+1+numofvalues*delta+(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*chi+beta*(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*numofyears+alpha*(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*numofyears*numofcities << ") " << states[alpha].getyvlabel(beta, chi, delta, epsi) << ".\n";
							}
							}
						}
						for(delta = 0; delta < numofmonths; delta++)
						{
							if(monthflag[delta+numofmonths*chi+beta*numofmonths*numofyears+alpha*numofmonths*numofcities*numofyears] == true)
							{
								cout << setw(15) << states[alpha].getmlabel(beta, chi, delta) << ".\n";
							
							for(epsi = 0; epsi < numofweathers; epsi++)
							{
								if(weatherflag[epsi+3+delta*numofweathers+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities] == true)
								{
									cout << setw(20) << states[alpha].getmwlabel(beta, chi, delta, epsi) << ".\n";
								
								for(fi = 0; fi < numofvalues; fi++)
								{
									cout << setw(25) << fi+7+epsi*numofvalues+delta*numofvalues*numofweathers+chi*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)+beta*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)*numofyears+alpha*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)*numofyears*numofcities << ") " << states[alpha].getmvlabel(beta, chi, delta, epsi, fi) << ".\n";
								}
								}
							}
							}
						}
						}
					}
					}
				}
				}
			}

		//additional valuess do
			do
			{
		//make function safe
			function = 0;
//security range do
do
{
			cout << "Select a type of value to display from the menu:";
			cin >> function;
}
while(function < 0 || function > numofvalues * (numofweathers * numofmonths * numofyears * numofcities * numofstates) + (numofweathers * numofyears * numofcities * numofstates));
		//flag trip
				if(function == 0)
				{
					for(beta = 0; beta < (numofvalues*numofweathers*numofmonths+numofvalues*numofweathers)*numofyears*numofcities*numofstates; beta++)
					{
						valueflag[beta] = true;
		
					}
					
				}
				else
				{

					valueflag[function - 1] = true;
				}			
//security do
do
{
		//do while question for additional months
			cout << "Do you wish to add more values from the menu? <Y/N>\n";
			cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test && 'N');
			}
			while( test == 'y' || test == 'Y');


//display







//"Display"
//Output


	//Output 
		output();

//further values do
//further weathers do
//further months do
//further years do
//further city menu do
//new states do
do
{
	//do while question for further values
		cout << "Do you wish to use the menu for new values? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';


//further weathers do
//further months do
//further years do
//further city menu do
//new states do
do
{
	//do while question for further weathers
		cout << "Do you wish to use the menu for new types of weather? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

//further months do
//further years do
//further city menu do
//new states do
do
{
	//do while question for further months
		cout << "Do you wish to use the menu for new time periods? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

//further years do
//further city menu do
//new states do
do
{
	//do while question for further years
		cout << "Do you wish to use the menu for new years? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

//further city menu do
//new states do
do
{
	//do while question for further cities
		cout << "Do you wish to use the menu for new cities? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

//new states do
do
{
	//do while question for further states
		cout << "Do you wish to use the menu for new states? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'y');

	test = 'a';

	
do
{
	//do while question for program
		cout << "Do you wish to run program again with a new file? (Y/N):";
		cin >> test;
}
while(test != 'y' && test != 'Y' && test != 'n' && test != 'N');
	}
	while(test == 'y' || test == 'Y');
	test = 'a';


	return 0;

}


//function statements

void calc()
{
//total

	//need to calculate (total/mean/variance/standard deviation) data
	//might be useful to use a temporary variable here to set calculations
	//need to set data to objects
	
	//total
	//mean
	//variance
	//standard deviation
	//maximum
	//minimum




//month values
	//totaling is built into objects from file
	//averaging is built into objects from file
	//variance is built into objects from file
	//standard deviation is built into objects from file
	//maximum is built into objects from file
	//minimum is built into objects from file


//year values
	for(alpha = 0; alpha < numofstates; alpha++)
	{

	//totaling
		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi++)
			{
				for(epsi = 0; epsi < numofweathers; epsi++)
				{
					for(delta = 0; delta < numofmonths; delta++)
					{		
						temp += states[alpha].getmwvalue(beta, chi, delta, epsi, 0);
					}
					states[alpha].setywvalue(beta, chi, epsi, 0, temp);
				}
			}
		}
	

		
//averaging
		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi++)
			{
				for(delta = 0; delta < numofweathers; delta++)
				{
						temp = states[alpha].getywvalue(beta, chi, delta, 0) / numofstates;
						states[alpha].setywvalue(beta, chi, delta, 1, temp);
				}
			}
		}
		


//variance
//for loops total the squares of the differences between each month total and average

		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi++)
			{
				for(epsi = 0; epsi < numofweathers; epsi++)
				{
					for(delta = 0; delta < numofmonths; delta++)
					{
						temp += (( states[alpha].getmwvalue(beta, chi, delta, epsi, 0) - states[alpha].getmwvalue(beta, chi, delta, epsi, 1) ) * ( states[alpha].getmwvalue(beta, chi, delta, epsi, 0) - states[alpha].getmwvalue(beta, chi, delta, epsi, 1) ) );
					}
					states[alpha].setywvalue(beta, chi, epsi, 2, temp);
				}
			}	
		}


//for loops divide spread by files - 1 (because it says so, that's why)

		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi ++)
			{
				for(delta = 0; delta < numofweathers; delta++)
				{
					temp = ( ( states[alpha].getywvalue(beta, chi, delta, 2) ) / (numofstates - 1) );
					states[alpha].setywvalue(beta, chi, delta, 2, temp);
				}				
			}			
		}

//standard deviation
//for loops get standard deviation (square root of variance)

		for(beta = 0; beta < numofcities; beta++)
		{
			for(chi = 0; chi < numofyears; chi++)
			{
				for(delta = 0; delta < numofweathers; delta++)
				{
					temp = sqrt( states[alpha].getywvalue(beta, chi, delta, 2) );
					states[alpha].setywvalue(beta, chi, delta, 3, temp);
				}
			}
		}

//maximum
	
	for(beta = 0; beta < numofcities; beta++)
	{
		for(chi = 0; chi < numofyears; chi++)
		{
			for(delta = 0; delta < numofweathers; delta++)
			{
				temp = 0;
				for(epsi = 0; epsi < numofmonths; epsi++)
				{
					if(states[alpha].getmwvalue(beta, chi, epsi, delta, 4) > temp)
					{
						temp = states[alpha].getmwvalue(beta, chi, epsi, delta, 4);
					}
				}
				states[alpha].setywvalue(beta, chi, delta, 4, temp);
			}
		}
	}

//minimum
	for(beta = 0; beta < numofcities; beta++)
	{
		for(chi = 0; chi < numofyears; chi++)
		{
			for(delta = 0; delta < numofweathers; delta++)
			{
				temp = states[alpha].getywvalue(beta, chi, delta, 4);
				for(epsi = 0; epsi < numofmonths; epsi++)
				{
					if(states[alpha].getmwvalue(beta, chi, epsi, delta, 5) < temp)
					{
						temp = states[alpha].getmwvalue(beta, chi, epsi, delta, 5);
					}
				}
				states[alpha].setywvalue(beta, chi, delta, 5, temp);
			}
		}
	}


//alpha for loop for states
	}



}


void output()
{
	for(alpha = 0; alpha < numofstates; alpha++)
			{
				if(stateflag[alpha] == true)
				{
					cout << states[alpha].getlabel() << ":\n";
				
				for(beta = 0; beta < numofcities; beta++)
				{
					if(cityflag[beta+numofcities*alpha] == true)
					{
						cout << setw(5) << states[alpha].getclabel(beta) << ":\n";
					
					for(chi = 0; chi < numofyears; chi++)
					{
						if(yearflag[chi+(numofcities*beta+numofcities*numofyears*alpha)] == true)
						{
							cout << setw(10) << states[alpha].getylabel(beta, chi) << ":\n";
						
						for(delta = 0; delta < numofweathers; delta++)
						{
							if(weatherflag[delta+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities] == true)
							{
								cout << setw(20) << states[alpha].getywlabel(beta, chi, delta) << ":\n";
							
							for(epsi = 0; epsi < numofvalues; epsi++)
							{
								if(valueflag[epsi+numofvalues*delta+(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*chi+beta*(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*numofyears+alpha*(numofvalues*numofweathers+numofvalues*numofweathers*numofmonths)*numofyears*numofcities] == true)
								{
									cout << setw(25) << states[alpha].getyvlabel(beta, chi, delta, epsi) << ":" << states[alpha].getywvalue(beta, chi, delta, epsi) << "\n";
								}
							}
							}
						}
						for(delta = 0; delta < numofmonths; delta++)
						{
							if(monthflag[delta+numofmonths*chi+beta*numofmonths*numofyears+alpha*numofmonths*numofcities*numofyears] == true)
							{
								cout << setw(15) << states[alpha].getmlabel(beta, chi, delta) << ":\n";
							
							for(epsi = 0; epsi < numofweathers; epsi++)
							{
								if(weatherflag[epsi+3+delta*numofweathers+(numofweathers+numofmonths*numofweathers)*chi+beta*(numofweathers+numofmonths*numofweathers)*numofyears+alpha*(numofweathers+numofmonths*numofweathers)*numofyears*numofcities] == true)
								{
									cout << setw(20) << states[alpha].getmwlabel(beta, chi, delta, epsi) << ":\n";
								
								for(fi = 0; fi < numofvalues; fi++)
								{
									if(valueflag[fi+6+epsi*numofvalues+delta*numofvalues*numofweathers+chi*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)+beta*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)*numofyears+alpha*(numofvalues*numofweathers*numofmonths+numofweathers*numofvalues)*numofyears*numofcities] == true)
									{
										cout << setw(25) << states[alpha].getmvlabel(beta, chi, delta, epsi, fi) << ":" << states[alpha].getmwvalue(beta, chi, delta, epsi, fi) << "\n";
									}
								}
								}
							}
							}
						}
						}
					}
					}
				}
				}
			}
		cout << "\n";
		cout << "\n";
		cout << "\n";
}


/*
Compile:

--------------------Configuration: zFinal - Win32 Debug--------------------
Compiling...
zFinal.cpp

zFinal.obj - 0 error(s), 0 warning(s)


Linking:

--------------------Configuration: zFinal - Win32 Debug--------------------
Compiling...
zFinal.cpp
Linking...

zFinal.exe - 0 error(s), 0 warning(s)

Execution:

Loading-Please Wait


Welcome to Weatherguide!
Press 0 during any menu to select all options available.


Which states do you wish to choose cities from?
1) State1.
2) State2.
3) State3.
Select a state from the menu:3
Do you wish to add more states from the menu? (Y/N):n

Which cities from the selected states would you like data concerning?
State3:
    7) City1
    8) City2
    9) City3
Select a city from the menu:7
Do you wish to add more cities from the menu? <Y/N>
n

From which year do you want data concerning?
State3.
City1.
        19) Year2000.
        20) Year2001.
        21) Year2002.
Select a year from the menu:20
Do you wish to add more years from the menu? <Y/N>
n

Which month would you like data concerning?
State3.
City1.
  Year2001.
            229) January.
            230) Feburary.
            231) March.
            232) April.
            233) May.
            234) June.
            235) July.
            236) August.
            237) September.
            238) October.
            239) November.
            240) December.
Select a month from the menu:253
Do you wish to add more months from the menu? <Y/N>
n

Which type of weather do you want data concerning?
State3.
City1.
  Year2001.
                 742) Temperature.
                 743) Pressure.
                 744) Rainfall.
Select a type of weather for a time period from the menu:743
Do you wish to add more types of weather from the menu? <Y/N>
n

Which type of weather do you want data concerning?
State3.
City1.
  Year2001.
            Pressure.
                     4453) Total.
                     4454) Average.
                     4455) Variance.
                     4456) StandardDeviation.
                     4457) Maximum.
                     4458) Minimum.
Select a type of value to display from the menu:4454
Do you wish to add more values from the menu? <Y/N>
n
State3:
City1:
  Year2001:
            Pressure:
                  Average:21.6667



Do you wish to use the menu for new values? (Y/N):n
Do you wish to use the menu for new types of weather? (Y/N):n
Do you wish to use the menu for new time periods? (Y/N):n
Do you wish to use the menu for new years? (Y/N):n
Do you wish to use the menu for new cities? (Y/N):n
Do you wish to use the menu for new states? (Y/N):n
Do you wish to run program again with a new file? (Y/N):n
Press any key to continue
*/