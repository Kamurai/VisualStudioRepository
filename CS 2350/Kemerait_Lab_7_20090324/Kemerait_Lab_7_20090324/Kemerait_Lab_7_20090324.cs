using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_7_20090324
{
    class Kemerait_Lab_7_20090324
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //actual options + 1
            int options = 2;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip.Equals(1))
                {

                    /*
                    Imagine a course in which the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get 
                    A (90 to 100)
                    B (80 to 89)
                    C (70 to 79)
                    D (60 to 69)
                    F (59 or below)

                    Write a program to:
                    1.     Define a class for each student which records his/her ksu id, first name, last name, midterm grade, final grade, and (multiple) homework grades. Try different modifiers (static, public, private, etc) to see how they work. Try concepts we learned from chapter 4 such as out, properties, ToString(), etc. Write methods such as: 
                        CalculateGrade()
                        GetKSUID()
                        GetFirstName()
                        GetLastName()
                    2.     Read from the user student information, and add them into a List.
                    3.     Make sure that no two students have the same ksu id
                    4.     Output the student ksu id, FirstName, last name, and the course grade (A, B, C, D, or F) sorted by 
                        a)     their ksu ids
                        b)     their first names
                        c)     their last names
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
            int trip;
            
            /*
                    Imagine a course in which the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get 
                    A (90 to 100)
                    B (80 to 89)
                    C (70 to 79)
                    D (60 to 69)
                    F (59 or below)

                    Write a program to:
                    1.     Define a class for each student which records his/her ksu id, first name, last name, midterm grade, final grade, and (multiple) homework grades. Try different modifiers (static, public, private, etc) to see how they work. Try concepts we learned from chapter 4 such as out, properties, ToString(), etc. Write methods such as: 
                        CalculateGrade()
                        GetKSUID()
                        GetFirstName()
                        GetLastName()
                    2.     Read from the user student information, and add them into a List.
                    3.     Make sure that no two students have the same ksu id
                    4.     Output the student ksu id, FirstName, last name, and the course grade (A, B, C, D, or F) sorted by 
                        a)     their ksu ids
                        b)     their first names
                        c)     their last names
                    */

                Console.Write("We're here to help you enter and display student records.\n");

            trip = 1;
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

        static void StudentRecords()
        {
            /*
                    Imagine a course in which the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get 
                    A (90 to 100)
                    B (80 to 89)
                    C (70 to 79)
                    D (60 to 69)
                    F (59 or below)

                    Write a program to:
                    1.     Define a class for each student which records his/her ksu id, first name, last name, midterm grade, final grade, and (multiple) homework grades. Try different modifiers (static, public, private, etc) to see how they work. Try concepts we learned from chapter 4 such as out, properties, ToString(), etc. Write methods such as: 
                        CalculateGrade()
                        GetKSUID()
                        GetFirstName()
                        GetLastName()
                    2.     Read from the user student information, and add them into a List.
                    3.     Make sure that no two students have the same ksu id
                    4.     Output the student ksu id, FirstName, last name, and the course grade (A, B, C, D, or F) sorted by 
                        a)     their ksu ids
                        b)     their first names
                        c)     their last names
                    */

            //declare variables
            List<Record> Students = new List<Record>();
            List<string> trash = new List<string>();
            int trip = 0;

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
            Console.Write("Midterm Grade:            ");
            trash.Add(Console.ReadLine());
            Console.Write("Final Grade:              ");
            trash.Add(Console.ReadLine());
            Console.Write("Homework Grade:           ");
            trash.Add(Console.ReadLine());

            while (cherry1 == true)
            {
                Console.Write("Homework Grade:           \n");
                Console.Write("#, if there are no more.  ");
                trash.Add(Console.ReadLine());

                if (trash[trash.Count - 1].Equals("#"))
                {
                    //escape
                    cherry1 = false;

                    //remove #
                    trash.Remove(trash[(trash.Count-1)]);
                }


            }
            cherry1 = true;




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

            //add input into list of classes
            Students.Add(new Record(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToString(trash[2])));

            //set Midterm
            Students[Students.Count - 1].SetMidterm(Convert.ToInt32(trash[3]));

            //set Final
            Students[Students.Count - 1].SetFinal(Convert.ToInt32(trash[4]));

            //set Homeworks
            for (int x = 5; x < trash.Count; x++)
            {
                Students[Students.Count - 1].AddHomework(Convert.ToInt32(trash[x]));
            }

            //set Overall Grade
            Students[Students.Count - 1].CalculateOverall();

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

                        //containment loop to ensure unique ids
                        while (cherry1 == true)
                        {
                            Console.Write("Student KSU ID:           ");
                            trash[2] = Console.ReadLine();
                            
                            //put spaces behind KSU ID
                            for (int x = 0; x < (10 - Convert.ToString(trash[2]).Length); x++)
                            {
                                trash[2] += " ";
                            }

                            //if the KSUID is not unique
                            if (UniqueID(trash[2], Students) == false)
                            {
                                //prompt to enter it again
                                Console.Write("There is already a student with KSU ID " + trash[2] + ".\n");
                                Console.Write("Please enter a different number.\n");
                            }
                            else
                            {
                                cherry1 = false;
                            }
                            
                        }
                        cherry1 = true;

                        //remove spaces from behind KSU ID
                        while( trash[2].Substring((trash[2].Length-1),1).Equals(" "))
                        {
                            trash[2] = trash[2].Remove(trash[2].LastIndexOf(' '));
                        }

                        //if the KSU ID input quits
                        if (trash[2].Equals("#"))
                        {
                            cherry1 = false;
                        }
                        else
                        {
                            
                            //put spaces back behind KSU ID
                            for (int x = 0; x < (10 - Convert.ToString(trash[2]).Length); x++)
                            {
                                trash[2] += " ";
                            }

                            Console.Write("Midterm Grade:            ");
                            trash[3] = Console.ReadLine();

                            //if midterm grade quits
                            if (trash[3].Equals("#"))
                            {
                                cherry1 = false;
                            }
                            else
                            {

                                Console.Write("Final Grade:              ");
                                trash[4] = Console.ReadLine();

                                if (trash[4].Equals("#"))
                                {
                                    cherry1 = false;
                                }
                                else
                                {

                                    //clear and reassign homework grades
                                    for (int x = trash.Count - 1; x > 4; x--)
                                    {
                                        trash.Remove(trash[x]);
                                    }

                                    Console.Write("Homework Grade:           ");
                                    trash.Add(Console.ReadLine());

                                    while (cherry1 == true)
                                    {
                                        Console.Write("Homework Grade:           \n");
                                        Console.Write("#, if there are no more.  ");
                                        trash.Add(Console.ReadLine());

                                        if (trash[trash.Count - 1].Equals("#"))
                                        {
                                            //escape
                                            cherry1 = false;

                                            //remove #
                                            trash.Remove(trash[trash.Count - 1]);
                                        }


                                    }
                                    cherry1 = true;

                                    //add input into list of classes
                                    Students.Add(new Record(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToString(trash[2])));

                                    //set Midterm
                                    Students[Students.Count - 1].SetMidterm(Convert.ToInt32(trash[3]));

                                    //set Final
                                    Students[Students.Count - 1].SetFinal(Convert.ToInt32(trash[4]));


                                    //set Homeworks
                                    for (int x = 5; x < trash.Count; x++)
                                    {
                                        Students[Students.Count - 1].AddHomework(Convert.ToInt32(trash[x]));
                                    }

                                    //set Overall Grade
                                    Students[Students.Count - 1].CalculateOverall();

                                }
                            }
                        }
                    }
                    //spacing
                    Console.Write("\n\n");

                }
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
                    SortByKSUID(Students);
                    
                    //output records
                    Console.Write("KSU ID \t\t Last Name \t First Name \t Grade\n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2} \t {3} ({4}) \n", Students[x].GetKSUID(), Students[x].GetLastName(), Students[x].GetFirstName(),LetterGrade(Students[x].GetOverall()), Students[x].GetOverall());
                    }
                    //promt user for output's return menu
                    trip = OutputReturnMenu(options);
                }
                else if (trip == 2)
                {
                    //sort the Records in the List (Students) by Last Name
                    SortByLastName(Students);
                    
                    //output records
                    Console.Write("Last Name \t First Name \t KSU ID \t Grade\n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2} \t {3}\n", Students[x].GetLastName(), Students[x].GetFirstName(), Students[x].GetKSUID(), Students[x].GetOverall());
                    }
                    //promt user for output's return menu
                    trip = OutputReturnMenu(options);
                }
                else if (trip == 3)
                {
                    //sort the Records in the List (Students) by First Name
                    SortByFirstName(Students);
                    
                    //output records
                    Console.Write("First Name \t Last Name \t KSU ID \t Grade \n");
                    for (int x = 0; x < Students.Count; x++)
                    {
                        Console.Write("{0} \t {1} \t {2} \t {3}\n", Students[x].GetFirstName(), Students[x].GetLastName(), Students[x].GetKSUID(), Students[x].GetOverall());
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

        static List<Record> SortByLastName(List<Record> templist)
        {
            Record temp = templist[0];

            //walk through the list for each element
            for (int y = 0; y < templist.Count; y++)
            {
                //walk through the list for each element per each element
                for (int x = 0; x < templist.Count; x++)
                {
                    //if x is the last element
                    if (x == templist.Count - 1)
                    {
                        //check that current element < the next
                        if (0 > templist[x].CompareLastNameTo(templist[x - 1].GetLastName()))
                        {
                            //move it to the index after the element it is greater than
                            //store current element to temp
                            temp = templist[x];
                            //remove current element to shift, x+1 becoming x
                            templist.Remove(templist[x]);
                            //insert stored element to x + 1, where current x used to be
                            templist.Insert(x - 1, temp);
                        }
                    }
                    else
                    {
                        //check that current element > the next
                        if (0 < templist[x].CompareLastNameTo(templist[x + 1].GetLastName()))
                        {
                            //move it to the index after the element it is greater than
                            //store current element to temp
                            temp = templist[x];
                            //remove current element to shift, x+1 becoming x
                            templist.Remove(templist[x]);
                            //insert stored element to x + 1, where current x used to be
                            templist.Insert(x + 1, temp);
                        }
                    }

                }
            }

            return templist;
        }

        static List<Record> SortByFirstName(List<Record> templist)
        {
            Record temp = templist[0];

            //walk through the list for each element
            for (int y = 0; y < templist.Count; y++)
            {
                for (int x = 0; x < templist.Count; x++)
                {
                    //if x is the last element
                    if (x == templist.Count - 1)
                    {
                        //check that current element < the next
                        if (0 > templist[x].CompareFirstNameTo(templist[x - 1].GetFirstName()))
                        {
                            //move it to the index after the element it is greater than
                            //store current element to temp
                            temp = templist[x];
                            //remove current element to shift, x+1 becoming x
                            templist.Remove(templist[x]);
                            //insert stored element to x + 1, where current x used to be
                            templist.Insert(x - 1, temp);
                        }
                    }
                    else
                    {
                        //check that current element > the next
                        if (0 < templist[x].CompareFirstNameTo(templist[x + 1].GetFirstName()))
                        {
                            //move it to the index after the element it is greater than
                            //store current element to temp
                            temp = templist[x];
                            //remove current element to shift, x+1 becoming x
                            templist.Remove(templist[x]);
                            //insert stored element to x + 1, where current x used to be
                            templist.Insert(x + 1, temp);
                        }
                    }

                }
            }

            return templist;
        }

        static List<Record> SortByKSUID(List<Record> templist)
        {
            Record temp = templist[0];

            //walk through the list for each element
            for (int y = 0; y < templist.Count; y++)
            {
                //walk through the list for element per each element
                for (int x = 0; x < templist.Count; x++)
                {
                    //if x is the last element
                    if (x == templist.Count - 1)
                    {
                        if (x != 0)
                        {
                            //check that current element < the prior
                            if (0 > templist[x].CompareIDTo(Convert.ToInt32(templist[x - 1].GetKSUID())))
                            {
                                //move it to the index after the element it is greater than
                                //store current element to temp
                                temp = templist[x];
                                //remove current element to shift, x+1 becoming x
                                templist.Remove(templist[x]);
                                //insert stored element to x + 1, where current x used to be
                                templist.Insert(x - 1, temp);
                            }
                        }
                    }
                    else
                    {
                        //check that current element > the next
                        if (0 < templist[x].CompareIDTo(Convert.ToInt32(templist[x + 1].GetKSUID())))
                        {
                            //move it to the index after the element it is greater than
                            //store current element to temp
                            temp = templist[x];
                            //remove current element to shift, x+1 becoming x
                            templist.Remove(templist[x]);
                            //insert stored element to x + 1, where current x used to be
                            templist.Insert(x + 1, temp);
                        }
                    }

                }
            }

            return templist;
        }

        static bool UniqueID(string tempnum, List<Record> templist)
		{
            bool cherry = true;
            string temp = "0";
            
            //walk through the list
			for(int x = 0; x < templist.Count; x++)
			{
                temp = templist[x].GetKSUID();
                //if the target Record is in the list
				if( tempnum.Equals(temp))
				{
                    cherry = false;
				}
			}

            return cherry;
		}

        static string LetterGrade(int tempnum)
        {
            string result = "0";
            if (tempnum >= 90)
            {
                result = "A";
            }
            else if (tempnum >= 80)
            {
                result = "B";
            }
            else if (tempnum >= 70)
            {
                result = "C";
            }
            else if (tempnum >= 60)
            {
                result = "D";
            }
            else
            {
                result = "F";
            }

            return result;
        }

        private class Record
        {
            private string LastName, FirstName, KSUID;
            private int Midterm, Final, Overall;
            List<int> Homework = new List<int>();

            public Record(string ln, string fn, string id)
            {
                LastName = ln;
                FirstName = fn;
                KSUID = id;
            }
        
            public string GetKSUID()
            {
		        return this.KSUID;
	        }
	        
            public string GetFirstName()
	        {
		        return this.FirstName;
	        }

	        public string GetLastName()
	        {
		        return this.LastName;
	        }

            public int GetMidterm()
            {
                return Midterm;
            }

            public int GetFinal()
            {
                return Final;
            }

            public int GetHomework(int index)
            {
                if (index >= Homework.Count || index < 0)
                {
                    index = 0;
                }
                else
                {
                    index = Homework[index];
                }
                return index;
            }

            public int GetOverall()
            {
                return Overall;
            }

            public void SetMidterm(int temp)
            {
                Midterm = temp;
            }

            public void AddHomework(int temp)
            {
                Homework.Add(temp);
            }

            public void RemoveHomework(int index)
            {
                Homework.Remove(index);
            }

            public void SetFinal(int temp)
            {
                Final = temp;
            }

            public void CalculateOverall()
            {
                int temp = 0;

                temp += Convert.ToInt32((Midterm*.4) + (Final*.4));
                temp += Convert.ToInt32((FindMedian(Homework) * .2));
                Overall = temp;
            }

            private int FindMedian(List<int> templist)
            {
                int median = 0;
                
                //find median
                //if count is odd
                if ((templist.Count % 2) == 1)
                {
                    median = templist[(templist.Count / 2)];
                }
                //if count is even
                else if ((templist.Count % 2) == 0)
                {
                    median = (templist[(templist.Count / 2)] + templist[(templist.Count / 2) - 1]) / 2;
                }

                return Convert.ToInt32(median);
            }

            public int CompareLastNameTo(string otherLastName)
            {
                return CompareString(this.LastName, otherLastName);
            }

            public int CompareFirstNameTo(string otherFirstName)
            {
                return CompareString(this.FirstName, otherFirstName);
            }

            public int CompareIDTo(int otherid)
            {
                return CompareInteger(Convert.ToInt32(this.KSUID), otherid);
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

            private int CompareAlphabetically(string x, string y)
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
