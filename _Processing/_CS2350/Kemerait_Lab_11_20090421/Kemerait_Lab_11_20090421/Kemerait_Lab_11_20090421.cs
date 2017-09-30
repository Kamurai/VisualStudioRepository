using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Kemerait_Lab_11_20090421
{
    class Kemerait_Lab_11_20090421
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //actual options + 1
            int options = 3;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip == 1)
                {
                    //Median GPA of student groups
                    StudentRecords();
                    

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip == 2)
                {
                    //Table of a range of numbers and their squares in a MessageBox
                    SquareTableMessageBox();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip > options - 1)
                {
                    Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    trip = 0;
                }






            }

        }

        static int StartMenu(int options)
        {
            //declare variables
            string trash = "0";
            int trip = 0;
            bool cherry = true;
            

            
                    
            while (cherry == true)
            {
                System.Console.Write("We're here to help you do a few things.\n");
                System.Console.Write("What would you like to do?\n");

                /*
                   Write a program to
                    1.    Write a program to read the information of multiple groups of students. Each group may contain different number of students. For each group, output the median GPA and average GPA. Define a class of Student which contains information such as first name, last name, GPA, etc. Define a jagged array of Student class objects.

 
                    An example to create a jagged array:
                    int[ ] [ ] anArray = new int[4] [ ];
                    anArray [0] = new int[2]; anArray[0][0] = 100; anArray[0][1] = 200;
                    anArray [1] = new int[ ] {11, 22, 37};
                    anArray [2] = new int[ ] {16, 72, 83, 99, 106};
                    anArray [3] = new int[ ] {1, 2, 3, 4};

                    An example of output:
                    How many groups of students would you like to input: 3
                    How many students would you like to input for group 1: 3

                    Group 1 student 1 first name: Mary
                    Group 1 student 1 last name: Joe
                    Group 1 student 1 GPA: 3.4

                    Group 1 student 2 first name: Peter
                    Group 1 student 2 last name: Pan
                    Group 1 student 2 GPA: 2.3

                    Group 1 student 3 first name: John
                    Group 1 student 3 last name: Smith
                    Group 1 student 3 GPA: 4.0

 
                    How many students would you like to input for group 2: 2

                    Group 2 student 1 first name: Tom
                    Group 2 student 1 last name: Hanks
                    Group 2 student 1 GPA: 3.3

                    Group 2 student 2 first name: Tom
                    Group 2 student 2 last name: Cruise
                    Group 2 student 2 GPA: 3.2

                    How many students would you like to input for group 3: 4
                    
                    Group 3 student 1 first name: Lucy
                    Group 3 student 1 last name: Liu
                    Group 3 student 1 GPA: 4.0
                
                    Group 3 student 2 first name: Pete
                    Group 3 student 2 last name: Samprass
                    Group 3 student 2 GPA: 4.0

                    Group 3 student 3 first name: Roger
                    Group 3 student 3 last name: Federer
                    Group 3 student 3 GPA: 3.9

                    Group 3 student 4 first name: Rafa
                    Group 3 student 4 last name: Nadal
                    Group 3 student 4 GPA: 3.8

                    Median GPA for group 1 is 3.4, and average GPA for group 1 is 3.23

                    Median GPA for group 2 is 3.25, and average GPA for group 2 is 3.25

                    Median GPA for group 3 is 3.95, and average GPA for group 3 is 3.93

                    Press any key to continue . . .

 
                    */
                
                
                System.Console.Write("1) Determine the Median GPA for groups of students.\n");

                /*
                    2.    Write a program that creates a two-dimensional array with 10 rows and 2 columns.
                        The first column should be filled with 10 random numbers between 0 and 100.
                        The second column should contain the squared value of the element found in column 1.
                        Using the Show() method of the MessageBox class, display a table.


                    */


                System.Console.Write("2) Display a range of numbers and their squares in a message box.\n");
                

                trash = System.Console.ReadLine();

                if (trash.Equals("1"))
                {
                    trip = 1;
                    cherry = false;
                }
                else if (trash.Equals("2"))
                {
                    trip = 2;
                    cherry = false;
                }
                else
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                }
            }

            
            return trip;
        }

        static int ReturnMenu(int options)
        {
            string trash = "0";
            int trip = 0;
            bool cherry1 = true;
            bool cherry2 = true;

            //containment loop
            while (cherry1 == true)
            {
                while (cherry2 == true)
                {
                    Console.Write("\n\nWould you like to start anew?\n");
                    Console.Write("1) Yes.\n");
                    Console.Write("2) I'm done for now.\n");
                    trash = Console.ReadLine();

                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        cherry2 = false;
                    }
                    else
                    {
                        Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }
                trip = int.Parse(trash);
                Console.Write("\n\n");

                if (trip.Equals(2))
                {
                    trip = options;
                    cherry1 = false;
                }
                else if (trip.Equals(1))
                {
                    //must be greater than the loop limit in ReturnMenu, which is < 3
                    cherry1 = false;

                }
                else
                {
                    trip = 0;
                }
            }

            return trip;
        }

        static bool AnalyzeString(string trash)
        {
            //declare variables
            bool cherry = false;
            char tempchar = '0';

            //check characters in string and identify as a number
            for (int x = 0; x < trash.Length; x++)
            {
                tempchar = Convert.ToChar(trash.Substring(x, 1));

                //if there are no violations
                if (cherry == false)
                {
                    cherry = NumberCheck(tempchar);
                }

                //escape
                if (cherry == true)
                {
                    return cherry;
                }
            }

            return cherry;

            /*
             * Example of use of this method
             * while (cherry == true)
            {
                System.Console.Write("Please enter the height of the cylinder.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;
             * */

        }

        static bool NumberCheck(char tempchar)
        {
            bool cherry = false;

            //check for type
            //if a number
            if (tempchar < 48 || tempchar > 57)
            {
                //violation
                cherry = true;
                return cherry;
            }


            return cherry;
        }

        static void SquareTableMessageBox()
        {
            /*
                    2.    Write a program that creates a two-dimensional array with 10 rows and 2 columns.
                        The first column should be filled with 10 random numbers between 0 and 100.
                        The second column should contain the squared value of the element found in column 1.
                        Using the Show() method of the MessageBox class, display a table.


            */

            //declare variables
            int tempnum = 0;
            int smallest = 100;
            int largest = 0;
            Random generator = new Random();
            bool cherry = true;
            int[,] table = new int[10, 2];
            string trash = "";


            while (cherry == true)
            {
                smallest = 100;
                largest = 0;

                //get input from user
                Console.Write("\nPress any key to create a list of 10 random integers from 0 to 100.\n");
                Console.ReadLine();

                //store random numbers 10 times
                for (int x = 0; x < 10; x++)
                {
                    //randomly generate a number from 0 to 1000
                    tempnum = generator.Next(100);

                    //store number in list
                    table[x, 0] = tempnum;
                    table[x, 1] = Convert.ToInt32(Math.Pow(tempnum, 2));

                    //find smallest number
                    if (tempnum < smallest)
                    {
                        smallest = tempnum;
                    }

                    //find largest number
                    if (tempnum > largest)
                    {
                        largest = tempnum;
                    }
                }

                //order numbers
                //walk through the array
                while (cherry == true)
                {
                    for (int x = 0; x < 10; x++)
                    {
                        for (int y = 0; y < 2; y++)
                        {
                            if ((x + 1) < 10)
                            {
                                if (table[x, y] > table[(x + 1), y])
                                {
                                    tempnum = table[x, y];
                                    table[x, y] = table[(x + 1), y];
                                    table[(x + 1), y] = tempnum;
                                }
                            }

                        }
                    }

                    if (smallest == table[0, 0])
                    {
                        cherry = false;
                    }
                }
                cherry = true;



                //spacing
                Console.Write("\n");

                //create string to submit for output
                trash = "Original\tSquare\n";


                //walk through the array
                for (int x = 0; x < 10; x++)
                {
                    for (int y = 0; y < 2; y++)
                    {
                        trash += table[x, y] + "\t";
                    }
                    trash += "\n";
                }


                //output results 
                //Display (in Message Box)
                //MessageBox.Show(Text, Title Bar, Buttons....);
                MessageBox.Show(trash, "Results", MessageBoxButtons.OK);

                //prompt user for additional run
                cherry = SpecificReturnMenu();

                



            }



        }

        static bool SpecificReturnMenu()
        {
            string trash = "0";
            int trip = 0;
            bool cherry1 = true;
            bool cherry2 = true;

            //containment loop
            while (cherry1 == true)
            {
                while (cherry2 == true)
                {
                    Console.Write("\n\nWould you like to perform this operation again?\n");
                    Console.Write("1) Yes.\n");
                    Console.Write("2) I'm done for now.\n");
                    trash = Console.ReadLine();

                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        cherry2 = false;
                    }
                    else
                    {
                        Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }
                trip = int.Parse(trash);
                Console.Write("\n\n");

                if (trip.Equals(2))
                {
                    //escape
                    cherry1 = false;
                }
                else if (trip.Equals(1))
                {
                    //must be greater than the loop limit in ReturnMenu, which is < 3
                    return cherry1;

                }
                else
                {
                    trip = 0;
                }
            }

            return cherry1;
        }


        static void StudentRecords()
        {
            /*
                   Write a program to
                    1.    Write a program to read the information of multiple groups of students. Each group may contain different number of students. For each group, output the median GPA and average GPA. Define a class of Student which contains information such as first name, last name, GPA, etc. Define a jagged array of Student class objects.

 
                    An example to create a jagged array:
                    int[ ] [ ] anArray = new int[4] [ ];
                    anArray [0] = new int[2]; anArray[0][0] = 100; anArray[0][1] = 200;
                    anArray [1] = new int[ ] {11, 22, 37};
                    anArray [2] = new int[ ] {16, 72, 83, 99, 106};
                    anArray [3] = new int[ ] {1, 2, 3, 4};

                    An example of output:
                    How many groups of students would you like to input: 3
                    How many students would you like to input for group 1: 3

                    Group 1 student 1 first name: Mary
                    Group 1 student 1 last name: Joe
                    Group 1 student 1 GPA: 3.4

                    Group 1 student 2 first name: Peter
                    Group 1 student 2 last name: Pan
                    Group 1 student 2 GPA: 2.3

                    Group 1 student 3 first name: John
                    Group 1 student 3 last name: Smith
                    Group 1 student 3 GPA: 4.0

 
                    How many students would you like to input for group 2: 2

                    Group 2 student 1 first name: Tom
                    Group 2 student 1 last name: Hanks
                    Group 2 student 1 GPA: 3.3

                    Group 2 student 2 first name: Tom
                    Group 2 student 2 last name: Cruise
                    Group 2 student 2 GPA: 3.2

                    How many students would you like to input for group 3: 4
                    
                    Group 3 student 1 first name: Lucy
                    Group 3 student 1 last name: Liu
                    Group 3 student 1 GPA: 4.0
                
                    Group 3 student 2 first name: Pete
                    Group 3 student 2 last name: Samprass
                    Group 3 student 2 GPA: 4.0

                    Group 3 student 3 first name: Roger
                    Group 3 student 3 last name: Federer
                    Group 3 student 3 GPA: 3.9

                    Group 3 student 4 first name: Rafa
                    Group 3 student 4 last name: Nadal
                    Group 3 student 4 GPA: 3.8

                    Median GPA for group 1 is 3.4, and average GPA for group 1 is 3.23

                    Median GPA for group 2 is 3.25, and average GPA for group 2 is 3.25

                    Median GPA for group 3 is 3.95, and average GPA for group 3 is 3.93

                    Press any key to continue . . .

 
                    */


            //declare variables
            string[] trash = new string[3];
            int groupnumber = 0;
            int studentnumber = 0;
            
            bool cherry = true;

            
            while (cherry == true)
            {
                //get input from user
                Console.Write("\nWe are going to begin by designating the number of student groups.\n");
                Console.Write("\nPlease enter the number of student groups:\n");
                trash[0] = Console.ReadLine();
                cherry = AnalyzeString(trash[0]);
            }
            cherry = true;
            

            //designate number or iterations by groupnumber
            groupnumber = Convert.ToInt32(trash[0]);
            Student[][] StudentArray = new Student[groupnumber][];
            double[] medianGPA = new double[groupnumber];
            double[] averageGPA = new double[groupnumber];


            //rotate through groups
            for (int groupcounter = 0; groupcounter < groupnumber; groupcounter++)
            {
                while (cherry == true)
                {
                    //get input from user
                    Console.Write("\nPlease enter the number of students in Group {0}:\n", (groupcounter + 1));
                    trash[0] = Console.ReadLine();
                    cherry = AnalyzeString(trash[0]);
                    
                }
                cherry = true;

                //designate number of iterations by studentnumber
                studentnumber = Convert.ToInt32(trash[0]);
                StudentArray[groupcounter] = new Student[studentnumber];

                //Receiving Input Section
                for (int studentcounter = 0; studentcounter < studentnumber; studentcounter++)
                {
                    
                    //get input from user
                    Console.Write("\nPlease enter the record for the student.\n");
                    Console.Write("Last Name of Student:     ");
                    trash[0] = Console.ReadLine();

                    Console.Write("\nFirst Name of Student:    ");
                    trash[1] = Console.ReadLine();

                    while (cherry == true)
                    {
                        //get input from user
                        Console.Write("\nGPA:                      ");
                        trash[2] = Console.ReadLine();
                        cherry = AnalyzeString(trash[2]);

                    }
                    cherry = true;

                    //add student information into list of students
                    StudentArray[groupcounter][studentcounter] = new Student(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToDouble(trash[2]));

                }

            }        
                
                
            
                //spacing
                Console.Write("\n\n");

                //Sorting Section and Output Section
                StudentArray = SortByGPA(StudentArray);
                

                for (int x = 0; x < StudentArray.Length; x++)
                {
                    medianGPA[x] = FindMedianGPA(StudentArray, x);
                    averageGPA[x] = FindAverageGPA(StudentArray, x);


                    Console.Write("The Median  GPA for Group {0} is: {1}\n", x+1, medianGPA[x]);
                    Console.Write("The Average GPA for Group {0} is: {1}\n\n", x+1, averageGPA[x]);
                }


                
            

        }

        static double FindMedianGPA(Student[][] temparray, int index)
        {
            double median = 0;

            //find median
            //if count is odd
            if ((temparray[index].Length % 2) == 1)
            {
                median = temparray[index][temparray[index].Length / 2].GetGPA();
            }
            //if count is even
            else if ((temparray[index].Length % 2) == 0)
            {
                median = (temparray[index][temparray[index].Length / 2].GetGPA() + temparray[index][(temparray[index].Length / 2) - 1].GetGPA()) / 2;
            }

            return median;
        }

        static double FindAverageGPA(Student[][] temparray, int index)
        {
            double average = 0;

            //find average
            //if count is odd
            for(int x = 0; x < temparray[index].Length; x++)
            {
                average += temparray[index][x].GetGPA();
            }

            average /= temparray[index].Length;

            return average;
        }

        static Student[][] SortByGPA(Student[][] temparray)
        {
            double tempnum = 0;
            bool cherry = true;
            bool[] flags;


            //order numbers
            //walk through the rows
            for (int x = 0; x < temparray.Length; x++)
            {
                flags = new bool[temparray[x].Length];

                //loop through checking each row until sorted
                /*while (cherry == true)
                {*/
                    //walk through the columns for each row
                    for (int z = 0; z < temparray[x].Length; z++)
                    {
                        //walk through the columns for each row
                        for (int y = 0; y < temparray[x].Length; y++)
                        {
                            //if not on the last element
                            if ((y + 1) < temparray[x].Length)
                            {
                                if (temparray[x][y].GetGPA() > temparray[x][y + 1].GetGPA())
                                {
                                    tempnum = temparray[x][y].GetGPA();
                                    temparray[x][y].SetGPA(temparray[x][y + 1].GetGPA());
                                    temparray[x][y + 1].SetGPA(tempnum);
                                    //flags[y] = false;
                                }
                                /*else
                                {
                                    //sorted
                                    flags[y] = true;
                                }*/
                            }



                        }
                    }

                    /*
                        //walk through flags
                        for (int y = 0; y < temparray[x].Length-1; y++)
                        {
                            //when sorted
                            if (flags[y] == true)
                            {
                                //escape while loop
                                cherry = false;
                            }
                            else
                            {
                                //still need to check array for sorting
                                cherry = true;
                                y = temparray[x].Length;
                            }
                        }* */
                /*}
                 
                cherry = true;*/
            }


            return temparray;
        }
        

        public class Student
        {
            
            public string LastName, FirstName;
            public double GPA;
            
            public Student(string LastName, string FirstName, double GPA)
            {
                this.LastName = LastName;
                this.FirstName = FirstName;
                this.GPA = GPA;
            }

            public string GetFirstName()
            {
                return this.FirstName;
            }

            public string GetLastName()
            {
                return this.LastName;
            }

            public double GetGPA()
            {
                return GPA;
            }

            public void SetGPA(double GPA)
            {
                this.GPA = GPA;
            }
            

            

        }

        

       






    }
}
