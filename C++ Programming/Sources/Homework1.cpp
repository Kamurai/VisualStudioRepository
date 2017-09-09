//Chris  Houser and Chris K.
//Due Feb 14, 2002
//Program Displays Cover Sheet

#include <iostream.h>
#include <stdio.h>
#include <iomanip.h>

int main()
{

// enter any data...
	int column; //reporting column value =0 estimate, =1 actual, =2 to date
	cout << "You will later enter pairs of values,\n";
	cout << "for estimate and whichever actual/ to date\n";
	cout << "but first if willing to report unfinished project, to date, enter: 2\n";
	cout << "else if ready to report actually finished report, enter: 1\n";
	cin >> column;

//display header values
//variables could have been used
	cout <<"                  Assignment ABCD Report\n\n";

	char S_name [60] = "Chris Houser and Chris Kemerait";
	char* assignment = "Lab";
	char* team = "A";
	cout  << "Student:" << S_name <<"                   Team:" <<team;
	cout << "\nInstructor: Prof Jovanovic" << "                  Assignment:" << assignment;
	cout << "\nCourse: Programming Principles I" << "            Date (and sign):____\n\n";
	cout << "            Vital Statistics\n\n\n";
	cout << setw(48) << "Estimated" << setw(9) << "Actual" << setw(13) << "To Date\n";
	cout << setw(70) << "------------------------------\n";
	cout << "\nA-Time in Phase [min]:";
	cout << "\n-----------------";

//pointers to strings, representing row names, labels for measurements
	char* ptext[22];
	ptext[0]="version 1.0 has 21 parameters    ";
	ptext[1]="1.Planning                  ";
	ptext[2]="2.Design                   ";
	ptext[3]="3.Design Review                ";
	ptext[4]="4.Code                    ";
	ptext[5]="5.Code Review                  ";
	ptext[6]="6.Test                    ";
	ptext[7]="7.Debugging (complete recovery)     ";
	ptext[8]="8.Post Mortem                 ";
	ptext[9]="1.Number of runs until submission   ";
	ptext[10]=" 2.1 added(new)           ";
	ptext[11]=" 2.2 reused             ";
	ptext[12]=" 2.3 modified             ";
	ptext[13]=" 2.4 deleted            ";
	ptext[14]="3.Number of test Cases Prepared ";
	ptext[15]="4.Number of test Cases Executed ";
	ptext[16]="1.Design Review           ";
	ptext[17]="2.Code Review             ";
	ptext[18]="3.Compile              ";
	ptext[19]="4.Test               ";
	ptext[20]="5.After Development       ";
	ptext[21]="D.Defect Density         ";

//Enter and display body parameters
	float measure[22][3];
	cout << "\n";
	int row;
	for (row=1; row<=21; row++)
		{
	//excetions three row lines with subheadings
		if (row==9)
		{
			cout << "\nB-Size\n"; cout << "______\n";
		}
		if (row==10) 
		{
			cout <<"Lines of source code in final version\n";
		}
		if (row==16)
		{
			cout << "\n";
			cout << "C.Defects removed by phase\n"; 
			cout << "____________________________\n";
		}
		if (row==21)
		{
			cout << "--------------------------------------------------------------\n"; cout <<"\n";
		}
		cout << ptext[row] << " ";
		
		cout << "\n";
		cout << "Actual:"; cin >> measure[row][0]; 
		
		//if(column == 1)
			
		//if(column == 2)
			
		
		if(column == 2)
		{cout << "To Date:"; cin >> measure[row][column];
		cout << setw(40) << measure[row][0]; cout << setw(15) << "____" << setw(8) << measure[row][column];
		
		}
		if(column == 1)
		{cout << "Finished:"; cin >> measure[row][column];
		cout << setw(40) << measure[row][0]; cout << setw(15)  << measure[row][column] << "  _____";
		
		}
		
		cout << '\n';
		}

//display footer values; grade should be a variable
		cout << "\n\n\n";
		char* instructor="    Grade{%}:_______                       Instructor's Signature:___________\n";
		cout << instructor << "\n\n";

		return 1;
}
