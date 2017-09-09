using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_9_20090407
{
    class Kemerait_Lab_9_20090407
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
                    Imagine for each course, the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get grade points for each course:
                        4pts (90 to 100)
                        3pts (80 to 89)
                        2pts (70 to 79)
                        1pts (60 to 69)
                        0pts (59 or below)
                    
                     Write a program to:
                        1.     Define a struct CourseInfo to record the name and credit hours for each course
                        2.     Ask the user to input all the course information (course name and credit hours)
                        3.     Ask the user to input information for each student including KSU id, first name, last name, and for each course, its midterm, final, and homework grades. For each student, for each course, the grade points are calculated as mentioned above. For each student, calculate the grade point average (GPA) by dividing the total amount of grade points earned by the total amount of credit hours attempted.
                        4.     Make sure that no two students have the same ksu id
                        5.     Output the student ksu id, firstname, last name, and GPA sorted by 
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
                    Imagine for each course, the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get grade points for each course:
                        4pts (90 to 100)
                        3pts (80 to 89)
                        2pts (70 to 79)
                        1pts (60 to 69)
                        0pts (59 or below)
                    
                     Write a program to:
                        1.     Define a struct CourseInfo to record the name and credit hours for each course
                        2.     Ask the user to input all the course information (course name and credit hours)
                        3.     Ask the user to input information for each student including KSU id, first name, last name, and for each course, its midterm, final, and homework grades. For each student, for each course, the grade points are calculated as mentioned above. For each student, calculate the grade point average (GPA) by dividing the total amount of grade points earned by the total amount of credit hours attempted.
                        4.     Make sure that no two students have the same ksu id
                        5.     Output the student ksu id, firstname, last name, and GPA sorted by 
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
                    Imagine for each course, the final exam counts for 40% of the final grade, the midterm exam counts for 40%, and the median homework grade makes up the remaining 20%. The student will get grade points for each course:
                        4pts (90 to 100)
                        3pts (80 to 89)
                        2pts (70 to 79)
                        1pts (60 to 69)
                        0pts (59 or below)
                    
                     Write a program to:
                        1.     Define a struct CourseInfo to record the name and credit hours for each course
                        2.     Ask the user to input all the course information (course name and credit hours)
                        3.     Ask the user to input information for each student including KSU id, first name, last name, and for each course, its midterm, final, and homework grades. For each student, for each course, the grade points are calculated as mentioned above. For each student, calculate the grade point average (GPA) by dividing the total amount of grade points earned by the total amount of credit hours attempted.
                        4.     Make sure that no two students have the same ksu id
                        5.     Output the student ksu id, firstname, last name, and GPA sorted by 
                            a)     their ksu ids
                            b)     their first names
                            c)     their last names


                    */

            //declare variables
            List<Student> Students = new List<Student>();
            List<string> trash = new List<string>();
            int trip = 0;
            List<int> templist = new List<int>();
            

            //actual options + 1
            int options = 4;
            bool cherry1 = true;

            //get input from user
            Console.Write("\nWe are going to begin by inputing student records.\n");
            Console.Write("Please enter the record for the first student.\n");
            Console.Write("Last Name of Student:     ");
            trash.Add(Console.ReadLine());
            Console.Write("\nFirst Name of Student:    ");
            trash.Add(Console.ReadLine());
            Console.Write("\nStudent KSU ID:           ");
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

            //add student information into list of students
            Students.Add(new Student(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToString(trash[2])));



            while (cherry1 == true)
            {
                Console.Write("\nCourse Name:            \n");
                Console.Write("#, if there are no more.  ");
                trash.Add(Console.ReadLine());

                if (trash[trash.Count - 1].Equals("#"))
                {
                    //escape
                    cherry1 = false;

                    //remove #
                    trash.Remove(trash[(trash.Count - 1)]);
                }
                else
                {
                    Console.Write("\nCredit Hours:             ");
                    trash.Add(Console.ReadLine());
                    
                    Console.Write("\nMidterm Grade:            ");
                    trash.Add(Console.ReadLine());

                    //add final grade
                    Console.Write("\nFinal Grade:              ");
                    trash.Add(Console.ReadLine());

                    //adding homeworks
                    Console.Write("\nHomework Grade:           ");
                    templist.Add(Convert.ToInt32(Console.ReadLine()));



                    while (cherry1 == true)
                    {
                        Console.Write("\nHomework Grade:           \n");
                        Console.Write("#, if there are no more.  ");
                        trash.Add(Console.ReadLine());

                        if (trash[trash.Count - 1].Equals("#"))
                        {
                            //escape
                            cherry1 = false;
                        }
                        else
                        {

                            templist.Add(Convert.ToInt32(trash[(trash.Count - 1)]));
                        }
                        //remove #
                        trash.Remove(trash[(trash.Count - 1)]);
                    }
                    cherry1 = true;

                    //create CourseInfo
                    Students[Students.Count - 1].AddCourse(Convert.ToString(trash[trash.Count - 4]), Convert.ToInt32(trash[trash.Count - 3]), Convert.ToInt32(trash[trash.Count - 2]), Convert.ToInt32(trash[trash.Count - 1]), templist);
                    
                    
                }
            }
            cherry1 = true;

            //set GPA
            Students[Students.Count - 1].SetGPA();


            //spacing
            Console.Write("\n\n");

            //Receiving Input Section
            while (cherry1 == true)
            {
                //get input from user
                Console.Write("\nPlease enter the record for the next student.\n");
                Console.Write("Enter # to stop.\n");
                Console.Write("Last Name of Student:     ");
                trash[0] = Console.ReadLine();

                //clear trash for new input
                for (int x = trash.Count - 1; x > 2; x--)
                {
                    trash.Remove(trash[x]);
                }

                //clear templist for new input
                for (int x = templist.Count - 1; x > -1; x--)
                {
                    templist.Remove(templist[x]);
                }

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

                    Console.Write("\nFirst Name of Student:    ");
                    trash[1] = Console.ReadLine();


                    //put spaces behind first name
                    for (int x = 0; x < (10 - Convert.ToString(trash[1]).Length); x++)
                    {
                        trash[1] += " ";
                    }

                    //containment loop to ensure unique ids
                    while (cherry1 == true)
                    {
                        Console.Write("\nStudent KSU ID:           ");
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
                    while (trash[2].Substring((trash[2].Length - 1), 1).Equals(" "))
                    {
                        trash[2] = trash[2].Remove(trash[2].LastIndexOf(' '));
                    }



                    //put spaces back behind KSU ID
                    for (int x = 0; x < (10 - Convert.ToString(trash[2]).Length); x++)
                    {
                        trash[2] += " ";
                    }

                    //add Student to list of students
                    Students.Add(new Student(Convert.ToString(trash[0]), Convert.ToString(trash[1]), Convert.ToString(trash[2])));


                    //containment loop for multiple courses
                    while (cherry1 == true)
                    {
                        Console.Write("\nCourse Name:               \n");
                        Console.Write("#, if there are no more.  ");
                        trash.Add(Console.ReadLine());

                        if (trash[trash.Count - 1].Equals("#"))
                        {
                            //escape
                            cherry1 = false;

                            //remove #
                            trash.Remove(Convert.ToString(trash[trash.Count - 1]));
                        }
                        else
                        {
                            Console.Write("\nCredit Hours:             ");
                            trash.Add(Console.ReadLine());

                            Console.Write("\nMidterm Grade:            ");
                            trash.Add(Console.ReadLine());

                            Console.Write("\nFinal Grade:              ");
                            trash.Add(Console.ReadLine());


                            //adding homeworks
                            Console.Write("\nHomework Grade:           ");
                            templist.Add(Convert.ToInt32(Console.ReadLine()));



                            while (cherry1 == true)
                            {
                                Console.Write("\nHomework Grade:           \n");
                                Console.Write("#, if there are no more.  ");
                                trash.Add(Console.ReadLine());

                                if (trash[trash.Count - 1].Equals("#"))
                                {
                                    //escape
                                    cherry1 = false;

                                    //remove #
                                    trash.Remove(trash[(trash.Count - 1)]);
                                }
                                else
                                {

                                    templist.Add(Convert.ToInt32(trash[(trash.Count - 1)]));

                                    //remove #
                                    trash.Remove(trash[(trash.Count - 1)]);
                                }
                            }
                            cherry1 = true;

                            //create CourseInfo
                            Students[Students.Count - 1].AddCourse(Convert.ToString(trash[trash.Count - 4]), Convert.ToInt32(trash[trash.Count - 3]), Convert.ToInt32(trash[trash.Count - 2]), Convert.ToInt32(trash[trash.Count - 1]), templist);

                        }

                        //set GPA
                        Students[Students.Count - 1].SetGPA();

                    }
                    cherry1 = true;
                }
            }
            //reset cherry
            cherry1 = true;           
                    
            //spacing
            Console.Write("\n\n");

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
                        Console.Write("{0} \t {1} \t {2} \t {3} \n", Students[x].GetKSUID(), Students[x].GetLastName(), Students[x].GetFirstName(), Students[x].GetGPA());
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
                        Console.Write("{0} \t {1} \t {2} \t {3}\n", Students[x].GetLastName(), Students[x].GetFirstName(), Students[x].GetKSUID(), Students[x].GetGPA());
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
                        Console.Write("{0} \t {1} \t {2} \t {3}\n", Students[x].GetFirstName(), Students[x].GetLastName(), Students[x].GetKSUID(), Students[x].GetGPA());
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

        static List<Student> SortByLastName(List<Student> templist)
        {
            Student temp = templist[0];

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

        static List<Student> SortByFirstName(List<Student> templist)
        {
            Student temp = templist[0];

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

        static List<Student> SortByKSUID(List<Student> templist)
        {
            Student temp = templist[0];

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

        static bool UniqueID(string tempnum, List<Student> templist)
        {
            bool cherry = true;
            string temp = "0";

            //walk through the list
            for (int x = 0; x < templist.Count; x++)
            {
                temp = templist[x].GetKSUID();
                //if the target Student is in the list
                if (tempnum.Equals(temp))
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

        public class Student
        {
            /*
            1.     Define a struct CourseInfo to record the name and credit hours for each course
             * 
            3.     Ask the user to input information for each student including KSU id, first name,
             * last name, and for each course, its midterm, final, and homework grades.
             * For each student, for each course, the grade points are calculated as mentioned above.
             * For each student, calculate the grade point average (GPA) by dividing the total amount
             * of grade points earned by the total amount of credit hours attempted.
             
             */
            public string LastName, FirstName, KSUID;
            public double GPA;
            List<CourseInfo> CourseList = new List<CourseInfo>();

            public Student(string LastName, string FirstName, string KSUID)
            {
                this.LastName = LastName;
                this.FirstName = FirstName;
                this.KSUID = KSUID;
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

            public double GetGPA()
            {
                return GPA;
            }

            public int GetCourseCount()
            {
                return CourseList.Count;
            }

            public int GetHomeworkCount(int index)
            {
                return CourseList[index].GetHomeworkCount();
            }

            public void SetGPA()
            {
                int temp = 0;

                //sum products of grade points by credit hours
                for (int x = 0; x < CourseList.Count; x++)
                {
                    //grade points earned * credit hours
                    GPA += CourseList[x].GetGradePoints() * CourseList[x].GetCreditHours();

                    //sum hours
                    temp += CourseList[x].GetCreditHours();
                }

                //summed products of grade points earned and credit hours / sum of hours
                GPA /= temp;
            }

            public void AddCourse(string CourseName, int CreditHours, int Midterm, int Final, List<int> Homework)
            {
                int Overall = CalculateOverall(Midterm, Final, Homework);
                int GradePoints = GetGradePoints(Overall);
                CourseList.Add(new CourseInfo(CourseName, CreditHours, Midterm, Final, Overall, GradePoints, Homework));
            }

            public int GetGradePoints(int Overall)
            {
                int GradePoints;

                if (Overall >= 90)
                {
                    GradePoints = 4;
                }
                else if (Overall >= 80)
                {
                    GradePoints = 3;
                }
                else if (Overall >= 70)
                {
                    GradePoints = 2;
                }
                else if (Overall >= 60)
                {
                    GradePoints = 1;
                }
                else
                {
                    GradePoints = 0;
                }

                return GradePoints;
            }

            public int CalculateOverall(int Midterm, int Final, List<int> Homework)
            {
                int temp = 0;

                temp += Convert.ToInt32((Midterm * .4) + (Final * .4));
                temp += Convert.ToInt32((FindMedian(Homework) * .2));

                int Overall = temp;
                return Overall;
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

            public string GetCourseName(int temp)
            {
                return CourseList[temp].GetCourseName();
            }

            public int GetMidterm(int index)
            {
                return CourseList[index].GetMidterm();
            }

            public void SetMidterm(int index, int temp)
            {
                CourseList[index].SetMidterm(temp);
            }

            public int GetFinal(int index)
            {
                return CourseList[index].GetFinal();
            }

            public void SetFinal(int index, int temp)
            {
                CourseList[index].SetFinal(temp);
            }
            
            public int GetOverall(int index)
            {
                return CourseList[index].GetOverall();
            }

            public void AddHomework(int index, int temp)
            {
                CourseList[index].AddHomework(temp);
            }

            public void RemoveHomework(int index, int subindex)
            {
                CourseList[index].RemoveHomework(subindex);
            }

            public int GetHomework(int index, int subindex)
            {
                return CourseList[index].GetHomework(subindex);
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

        public class CourseInfo
        {
            /*
            1.     Define a struct CourseInfo to record the name and credit hours for each course
             * 
            3.     Ask the user to input information for each student including KSU id, first name,
             * last name, and for each course, its midterm, final, and homework grades.
             * For each student, for each course, the grade points are calculated as mentioned above.
             * For each student, calculate the grade point average (GPA) by dividing the total amount
             * of grade points earned by the total amount of credit hours attempted.
             
             */
            public string CourseName;
            public int CreditHours, Midterm, Final, Overall, GradePoints;
            List<int> Homework;

            public CourseInfo(string CourseName, int CreditHours, int Midterm, int Final, int Overall, int GradePoints, List<int> Homework)
            {
                this.CourseName = CourseName;
                this.CreditHours = CreditHours;

                this.Midterm = Midterm;
                this.Final = Final;
                this.Overall = Overall;
                this.GradePoints = GradePoints;

                this.Homework = Homework;
            }

            public string GetCourseName()
            {
                return CourseName;
            }

            public int GetCreditHours()
            {
                return CreditHours;
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

            public int GetHomeworkCount()
            {
                return Homework.Count;
            }

            public int GetOverall()
            {
                return Overall;
            }

            public int GetGradePoints()
            {
                return GradePoints;
            }

            public void SetMidterm(int temp)
            {
                this.Midterm = temp;
            }

            public void AddHomework(int temp)
            {
                this.Homework.Add(temp);
            }

            public void RemoveHomework(int index)
            {
                this.Homework.Remove(index);
            }

            public void SetFinal(int temp)
            {
                this.Final = temp;
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
