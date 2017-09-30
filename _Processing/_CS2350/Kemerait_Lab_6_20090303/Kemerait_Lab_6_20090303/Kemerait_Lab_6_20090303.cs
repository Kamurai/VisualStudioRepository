//Kemerait, Christopher A
//CS 2350, Spring 2009
//20090303
//Lab 6

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_6_20090303
{
    class Kemerait_Lab_6_20090303
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //actual options + 1
            int options = 4;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    /* 
                    1.  Write a program to, given a number n, try to calculate the sum from 0 to n in a recursive way.
                    */

                    Summation(trip);

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    /*
                    2.  Write a program to, given a number n, try to calulate the sum from 0 to n in a non-recursive way.
                    */

                    Summation(trip);

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    /*
                    3. Define a struct for each student which records his/her first name, last name, and ksu id.

                      Read from the user student information, and add them into a List 

                        Output the student information sorted by their ksu ids

                        Output the student information sorted by their last names

                        Output the student information sorted by their first names.
                    */
                    StudentRecords();

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
            int trip;
            bool cherry = true;

            /* 
            1.  Write a program to, given a number n, try to calculate the sum from 0 to n in a recursive way.
            */
            /*
            2.  Write a program to, given a number n, try to calulate the sum from 0 to n in a non-recursive way.
            */
            /*
            3. Define a struct for each student which records his/her first name, last name, and ksu id.

              Read from the user student information, and add them into a List 

                Output the student information sorted by their ksu ids

                Output the student information sorted by their last names

                Output the student information sorted by their first names.
            */

            while (cherry == true)
            {
                Console.Write("We're here to help you do a few things.\n");
                Console.Write("What would you like to do?\n");
                /* 
                1.  Write a program to, given a number n, try to calculate the sum from 0 to n in a recursive way.
                */
                Console.Write("1) Calculate a summation using a recursive method.\n");
                /*
                2.  Write a program to, given a number n, try to calulate the sum from 0 to n in a non-recursive way.
                */
                Console.Write("2) Calculate a summation using a non-recursive method.\n");
                /*
                3. Define a struct for each student which records his/her first name, last name, and ksu id.

                  Read from the user student information, and add them into a List 

                    Output the student information sorted by their ksu ids

                    Output the student information sorted by their last names

                    Output the student information sorted by their first names.
                */
                Console.Write("3) Enter and display student records.\n");

                trash = Console.ReadLine();

                if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3"))
                {
                    cherry = false;
                }
                else
                {
                    Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                }
            }

            trip = int.Parse(trash);
            return trip;
        }

        static int ReturnMenu(int options)
        {
            string trash = "0";
            int trip = 0;
            bool cherry = true;

            //containment loop
            while (trip < 3)
            {
                while (cherry == true)
                {
                    Console.Write("\n\nWould you like to perform another action?\n");
                    Console.Write("1) Yes.\n");
                    Console.Write("2) I'm done for now.\n");
                    trash = Console.ReadLine();

                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        cherry = false;
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
                }
                else if (trip.Equals(1))
                {
                    //must be greater than the loop limit in ReturnMenu, which is < 3
                    trip = 3;
                }
                else
                {
                    trip = 0;
                }
            }

            return trip;
        }

        static void Summation(int trip)
        {
            /* 
            1. & 2.  Summation of a range.
            */



            //declare variables
            int summation = 0;
            int lowest = 0;
            int highest = 0;
            string trash = "0";
            ArrayList range = new ArrayList();

            //get input from user
            Console.Write("\nWe are going to find the summation of all integers in a range.\n");
            Console.Write("\nWhat is the lowest integer in the desired range?\n");
            trash = Console.ReadLine();
            lowest = int.Parse(trash);

            Console.Write("\nWhat is the highest integer in the desired range?\n");
            trash = Console.ReadLine();
            highest = int.Parse(trash);

            //assign values to array
            //find product
            for (int x = lowest; x <= highest; x++)
            {
                range.Add(x);
            }

            //perform operation
            if (trip == 1)
            {
                summation = RecursiveSummation(range, (range.Count - 1));
            }
            else if (trip == 2)
            {
                summation = NonRecursiveSummation(range);
            }

            //spacing
            Console.Write("\n\n");

            //Display
            Console.Write("The summation of all integers between {0} and {1} is: {2}.\n", lowest, highest, summation);
        }

        static int RecursiveSummation(ArrayList numbers, int index)
        {
            /* 
            1.  Write a program to, given a number n, try to calculate the sum from 0 to n in a recursive way.
            */

            int sum = 0;
            if (index == 0)
            {
                sum = Convert.ToInt32(numbers[index]);
            }
            else
            {
                //Current sum is equal to the last number in the current arraylist
                sum = Convert.ToInt32(numbers[index]);
                //decrement index
                index--;
                //sum is equal to itself, plus the sum of the rest of the elements
                sum += RecursiveSummation(numbers, index);
            }
            return sum;

        }

        static int NonRecursiveSummation(ArrayList range)
        {
            /*
            2.  Write a program to, given a number n, try to calulate the sum from 0 to n in a non-recursive way.
            */

            int sum = 0;

            //walk through arraylist
            for (int x = 0; x < Convert.ToInt32(range.Count); x++)
            {
                //add each element to the sum of the previous elements
                sum += Convert.ToInt32(range[x]);
            }

            return sum;

        }



        static void StudentRecords()
        {
            /*
            3. Define a struct for each student which records his/her first name, last name, and ksu id.

              Read from the user student information, and add them into a List 

                Output the student information sorted by their ksu ids

                Output the student information sorted by their last names

                Output the student information sorted by their first names.
            */

            //declare variables
            List<Record> Students = new List<Record>();
            ArrayList trash = new ArrayList();
            int trip = 0;
            Record temp;
            //actual options + 1
            int options = 4;
            bool cherry1 = true;

            //get input from user
            Console.Write("\nWe are going to begin by inputing student records.\n");
            Console.Write("Please enter the record for the first student.\n");
            Console.Write("Last Name of Student:     ");
            trash.Add(Console.ReadLine());
            Console.Write("First Name of Student:    ");
            trash.Add(Console.ReadLine());
            Console.Write("Student KSU ID:           ");
            trash.Add(Console.ReadLine());

            //put spaces behind last name
            for (int x = 0; x < (10 - Convert.ToString(trash[0]).Length); x++)
            {
                trash[0] += " ";
            }

            //put spaces behind first name
            for (int x = 0; x < (10 - Convert.ToString(trash[1]).Length); x++)
            {
                trash[1] += " ";
            }

            //put spaces behind KSU ID
            for (int x = 0; x < (10 - Convert.ToString(trash[2]).Length); x++)
            {
                trash[2] += " ";
            }

            //add input into list of structs
            Students.Add(new Record(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToInt32(trash[2])));

            //spacing
            Console.Write("\n\n");

            //Receiving Input Section
            while (cherry1 == true)
            {
                //get input from user
                Console.Write("Please enter the record for the next student.\n");
                Console.Write("Enter # at any point to stop.\n");
                Console.Write("Last Name of Student:     ");
                trash[0] = Console.ReadLine();
                //if the last name input quits
                if (trash[0].Equals("#"))
                {
                    cherry1 = false;
                }
                else
                {
                    //put spaces behind last name
                    for (int x = 0; x < (10 - Convert.ToString(trash[0]).Length); x++)
                    {
                        trash[0] += " ";
                    }
                
                    Console.Write("First Name of Student:    ");
                    trash[1] = Console.ReadLine();
                    
                    //if the first name input quits
                    if (trash[1].Equals("#"))
                    {
                        cherry1 = false;
                    }
                    else
                    {
                        //put spaces behind first name
                        for (int x = 0; x < (10 - Convert.ToString(trash[1]).Length); x++)
                        {
                            trash[1] += " ";
                        }

                        Console.Write("Student KSU ID:           ");
                        trash[2] = Console.ReadLine();
                        //if the KSU ID input quits
                        if (trash[2].Equals("#"))
                        {
                            cherry1 = false;
                        }
                        else
                        {
                            //put spaces behind KSU ID
                            for (int x = 0; x < (10 - Convert.ToString(trash[2]).Length); x++)
                            {
                                trash[2] += " ";
                            }

                            //add input into list of structs
                            Students.Add(new Record(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToInt32(trash[2])));
                        }
                    }

                }
                //spacing
                Console.Write("\n\n");

            }
            //reset cherry
            cherry1 = true;

            //Sorting and Output Section
            while (cherry1 == true)
            {


                //prompt user with Output menu with an arguement equal to the number of actual options + 1
                trip = OutputMenu(options);

                //spacing
                Console.Write("\n\n");



                //perform operation based on trip
                if (trip == 1)
                {
                    //sort the Records in the List (Students) by KSU ID

                    temp = Students[0];

                    //walk through the list for each element
                    for (int y = 0; y < Students.Count; y++)
                    {
                        //walk through the list for element per each element
                        for (int x = 0; x < Students.Count; x++)
                        {
                            //if x is the last element
                            if (x == Students.Count - 1)
                            {
                                //check that current element < the next
                                if (0 > Students[x].CompareIDTo(Students[x - 1].ksuid))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x - 1, temp);
                                }
                            }
                            else
                            {
                                //check that current element > the next
                                if (0 < Students[x].CompareIDTo(Students[x + 1].ksuid))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x + 1, temp);
                                }
                            }

                        }
                    }

                    

                    //output records
                    Console.Write("KSU ID \t Last Name \t First Name\n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2}\n", Students[x].ksuid, Students[x].lastname, Students[x].firstname);
                    }
                    //promt user for output's return menu
                    trip = OutputReturnMenu(options);
                }
                else if (trip == 2)
                {
                    //sort the Records in the List (Students) by Last Name

                    temp = Students[0];

                    //walk through the list for each element
                    for (int y = 0; y < Students.Count; y++)
                    {
                        //walk through the list for each element per each element
                        for (int x = 0; x < Students.Count; x++)
                        {
                            //if x is the last element
                            if (x == Students.Count - 1)
                            {
                                //check that current element < the next
                                if (0 > Students[x].CompareLastNameTo(Students[x - 1].lastname))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x - 1, temp);
                                }
                            }
                            else
                            {
                                //check that current element > the next
                                if (0 < Students[x].CompareLastNameTo(Students[x + 1].lastname))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x + 1, temp);
                                }
                            }

                        }
                    }
                    //output records
                    Console.Write("Last Name \t First Name \t KSU ID\n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2}\n", Students[x].lastname, Students[x].firstname, Students[x].ksuid);
                    }
                    //promt user for output's return menu
                    trip = OutputReturnMenu(options);
                }
                else if (trip == 3)
                {
                    //sort the Records in the List (Students) by First Name

                    temp = Students[0];

                    //walk through the list for each element
                    for (int y = 0; y < Students.Count; y++)
                    {
                        for (int x = 0; x < Students.Count; x++)
                        {
                            //if x is the last element
                            if (x == Students.Count - 1)
                            {
                                //check that current element < the next
                                if (0 > Students[x].CompareFirstNameTo(Students[x - 1].firstname))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x - 1, temp);
                                }
                            }
                            else
                            {
                                //check that current element > the next
                                if (0 < Students[x].CompareFirstNameTo(Students[x + 1].firstname))
                                {
                                    //move it to the index after the element it is greater than
                                    //store current element to temp
                                    temp = Students[x];
                                    //remove current element to shift, x+1 becoming x
                                    Students.Remove(Students[x]);
                                    //insert stored element to x + 1, where current x used to be
                                    Students.Insert(x + 1, temp);
                                }
                            }

                        }
                    }

                    //output records
                    Console.Write("First Name \t Last Name \t KSU ID\n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2}\n", Students[x].firstname, Students[x].lastname, Students[x].ksuid);
                    }
                    //promt user for output's return menu
                    trip = OutputReturnMenu(options);
                }
                else if (trip > options - 1)
                {
                    Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    trip = 0;
                }

                if (trip == options)
                {
                    cherry1 = false;
                }



            }


        }
        
        public struct Record
        {
            public string lastname, firstname;
            public int ksuid;

            public Record(string ln, string fn, int id)
            {
                lastname = ln;
                firstname = fn;
                ksuid = id;
            }

            public int CompareLastNameTo(string otherlastname)
            {
                return CompareString(this.lastname, otherlastname);
            }

            public int CompareFirstNameTo(string otherfirstname)
            {
                return CompareString(this.firstname, otherfirstname);
            }

            public int CompareIDTo(int otherid)
            {
                return CompareInteger(this.ksuid, otherid);
            }

            public int CompareString(string x, string y)
            {
                int result;

                //if x is null
                if (x == null)
                {
                    //if y is null
                    if (y == null)
                    {
                        //they're equal. 
                        result = 0;
                    }
                    //if y is not null
                    else
                    {
                        //y is greater. 
                        result = -1;
                    }
                }
                //if x is not null
                else
                {
                    //y is null
                    if (y == null)
                    {
                        //x is greater.
                        result = 1;
                    }
                    //y is not null
                    else
                    {
                        //compare the strings alphabetically
                        result = this.CompareAlphabetically(x, y);
                    }
                }
                return result;
            }

            public int CompareAlphabetically(string x, string y)
            {
                int result = 0;
                int index = 0;

                //compare the first letter of one string to the other
                result = x.Substring(index).CompareTo(y.Substring(index));
                
                //if they are the same
                if (result == 0)
                {
                    //if the next character of one string does not exist, then declare it less than the other
                    if (index == x.Length || index == y.Length)
                    {
                        //if both words will end, they are the same word
                        if (x.Length == y.Length)
                        {
                            //result doesn't matter
                            result = 1;
                        }
                        //if x will end
                        else if (x.Length == 0)
                        {
                            //then declare it as less than
                            result = 1;
                        }
                        //if y will end
                        else if (y.Length == 0)
                        {
                            //then declare it as less than
                            result = -1;
                        }
                    }
                    else
                    {
                        //then compare the next two
                        CompareAlphabetically(x.Substring(index + 1, x.Length - 1), y.Substring(index + 1, y.Length - 1));
                    }
                }

                return result;
            }

            public int CompareInteger(int x, int y)
            {
                int result;

                //if x is 0
                if (x == 0)
                {
                    //if y is 0
                    if (y == 0)
                    {
                        //they're equal. 
                        result = 0;
                    }
                    else
                    {
                        //y is greater. 
                        result = -1;
                    }
                }
                //if x is not 0
                else
                {
                    //if y is 0
                    if (y == 0)
                    {
                        //x is greater.
                        result = 1;
                    }
                    //if y is not 0
                    else
                    {
                        // compare the two integers
                        result = x.CompareTo(y);
                    }
                }

                return result;
            }


        }

        

            static int OutputMenu(int options)
            {
                //declare variables
                string trash = "0";
                int trip;
                bool cherry = true;

                while (cherry == true)
                {
                    Console.Write("How would you like to output your records?\n");
                    //By KSU IDs
                    Console.Write("1) Order records by KSU IDs.\n");
                    //By Last Name
                    Console.Write("2) Order records by Last Name.\n");
                    //By First Name
                    Console.Write("3) Order records by First Name.\n");

                    trash = Console.ReadLine();

                    if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3"))
                    {
                        cherry = false;
                    }
                    else
                    {
                        Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }

                trip = int.Parse(trash);
                return trip;
            }

            static int OutputReturnMenu(int options)
            {
                string trash = "0";
                int trip = 0;
                bool cherry = true;

                //containment loop
                while (trip < 3)
                {
                    while (cherry == true)
                    {
                        Console.Write("\n\nWould you like change how your records are ordered?\n");
                        Console.Write("1) Yes.\n");
                        Console.Write("2) I'm done for now.\n");
                        trash = Console.ReadLine();

                        if (trash.Equals("1") || trash.Equals("2"))
                        {
                            cherry = false;
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
                    }
                    else if (trip.Equals(1))
                    {
                        //must be greater than the loop limit in ReturnMenu, which is < 3
                        trip = 3;
                    }
                    else
                    {
                        trip = 0;
                    }
                }

                return trip;
            }

            
                    
         







        }
    }
