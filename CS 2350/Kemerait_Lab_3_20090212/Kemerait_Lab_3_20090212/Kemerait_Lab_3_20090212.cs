//Kemerait, Christopher A
//CS 2350, Spring 09
//20090212
//Lab 3

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_3_20090212
{
    class Kemerait_Lab_3_20090212
    {
        static void Main(string[] args)
        {
            int trip = 0;
            int options = 5;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu();

                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    //Write a program to read a series of numbers, and output the sum in currency format 
                    OutputSumOfDollarSeries();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    //Write a program that computes the average of five exam scores (double), read from the user. Print all the scores and the average value formatted with no digits to the right of the decimal. 
                    AverageExams();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    //Write a program to generate the product of all the numbers in the range [1, 10]. 
                    MultiplyRange();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(4))
                {
                    //Output Sunday to Saturday based on the input 0 to 6 
                    //For example, when user inputs 4, your program should output Thursd
                    OutputDayOfWeek();

                    //prompt user for return menu
                    trip = ReturnMenu(options);
                }

                else if (trip > options - 1)
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    trip = 0;
                }






            }
        }

        static int StartMenu()
        {
            //declare variables
            string trash;
            int trip;
            /*
             
            Write a program to read a series of numbers, and output the sum in currency format 
             * 
            Write a program that computes the average of five exam scores (double), read from the user. Print all the scores and the average value formatted with no digits to the right of the decimal. 
             * 
            Write a program to generate the product of all the numbers in the range [1, 10]. 
             * 
            Output Sunday to Saturday based on the input 0 to 6 
            For example, when user inputs 4, your program should output Thursday


             * */
            System.Console.Write("We're here to help you do a few things.\n");
            System.Console.Write("What would you like to do?\n");
            //Write a program to read a series of numbers, and output the sum in currency format 
            System.Console.Write("1) Sum some dollars amounts.\n");
            //Write a program that computes the average of five exam scores (double), read from the user. Print all the scores and the average value formatted with no digits to the right of the decimal. 
            System.Console.Write("2) Average exam scores.\n");
            //Write a program to generate the product of all the numbers in the range [1, 10]. 
            System.Console.Write("3) Find the product of a range.\n");
            //Output Sunday to Saturday based on the input 0 to 6 
            System.Console.Write("4) Find a day of the week.\n");

            trash = System.Console.ReadLine();
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
                    System.Console.Write("\n\nWould you like to perform another action?\n");
                    System.Console.Write("1) Yes.\n");
                    System.Console.Write("2) I'm done for now.\n");
                    trash = System.Console.ReadLine();

                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        cherry = false;
                    }
                    else
                    {
                        System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }
                trip = int.Parse(trash);
                System.Console.Write("\n\n");

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

        static void OutputSumOfDollarSeries()
        {
            //Write a program to read a series of numbers, and output the sum in currency format 


            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";
            bool cherry1 = true;
            bool cherry2 = true;

            //get input from user
            System.Console.Write("\nPlease input your first number.\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);

            //spacing
            System.Console.Write("\n\n");

            while (cherry1 == true)
            {
                //reset cherry2
                cherry2 = true;

                //get input from user
                System.Console.Write("\nPlease input another number.\n");
                trash = System.Console.ReadLine();
                input1 = input1 + double.Parse(trash);

                while (cherry2 == true)
                {
                    System.Console.Write("\n\nWould you like to enter another number?\n");
                    System.Console.Write("1) Yes.\n");
                    System.Console.Write("2) I'm finished.\n");
                    trash = System.Console.ReadLine();
                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        cherry2 = false;
                    }
                    else
                    {
                        System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }


                //reset cherry2
                cherry2 = true;

                input2 = double.Parse(trash);
                System.Console.Write("\n\n");

                while (cherry2.Equals(true))
                {
                    if (input2.Equals(1))
                    {
                        cherry1 = true;
                        cherry2 = false;
                    }
                    else if (input2.Equals(2))
                    {
                        cherry1 = false;
                        cherry2 = false;
                    }
                    else
                    {
                        System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }


                
            }


        }

            //Output Sum of numbers in dollar format
            System.Console.Write("The sum of the numbers entered in dollars is: {0:c2}.\n", input1);


        }

        static void AverageExams()
        {
            //Write a program that computes the average of five exam scores (double), read from the user.
            //Print all the scores and the average value formatted with no digits to the right of the decimal. 


            //declare variables
            double input1 = 0;
            int limit = 2;
            string trash = "0";
            double[] exam;


            //get input from user
            System.Console.Write("\nHow many exams would you like to average.\n");
            trash = System.Console.ReadLine();
            limit = int.Parse(trash);

            exam = new double[limit];

            //spacing
            System.Console.Write("\n\n");

            for (int x = 0; x < limit; x++)
            {
                //get input from user
                System.Console.Write("\nPlease input an exam score.\n");
                trash = System.Console.ReadLine();
                exam[x] = double.Parse(trash);
            }

            //spacing
            System.Console.Write("\n\n");

            //sum
            for (int x = 0; x < limit; x++)
            {
                input1 = input1 + exam[x];
                //output exam
                System.Console.Write("Exam" + (x + 1) + ": " + exam[x] + ".\n");
            }

            //spacing
            System.Console.Write("\n");

            //average
            input1 = input1 / limit;

            //Output average
            System.Console.Write("The average of the exam scores is: {0:f0}.\n", input1);

        }

        static void MultiplyRange()
        {
            //Write a program to generate the product of all the numbers in the range [1, 10]. 


            //declare variables
            decimal input1 = 1;
            int lowest = 0;
            int highest = 0;
            int limit = 0;
            string trash = "0";
            int[] range;


            //get input from user
            System.Console.Write("\nWe are going to multiply all integers in a range.\n");
            System.Console.Write("\nWhat is the lowest integer in the desired range?\n");
            trash = System.Console.ReadLine();
            lowest = int.Parse(trash);

            System.Console.Write("\nWhat is the highest integer in the desired range?\n");
            trash = System.Console.ReadLine();
            highest = int.Parse(trash);
            limit = (highest - lowest) + 1;
            range = new int[limit];

            //spacing
            System.Console.Write("\n\n");

            //assign values to array
            //find product
            for (int x = 0; x < limit; x++)
            {
                range[x] = lowest + x;
                input1 = input1 * Convert.ToDecimal(range[x]);
            }

            //spacing
            System.Console.Write("\n");

            //Output Product
            System.Console.Write("The product of the range from " + lowest + " to " + highest + " is: " + input1 + ".\n");



        }

        static void OutputDayOfWeek()
        {
            //Output Sunday to Saturday based on the input 0 to 6 
            //For example, when user inputs 4, your program should output Thursday

            //declare variables
            int input1 = 0;
            int limit = 7;
            string trash = "0";
            string[] DaysOfTheWeek;
            DaysOfTheWeek = new string[limit];
            bool cherry = true;

            //assign values to array
            DaysOfTheWeek[0] = "Sunday";
            DaysOfTheWeek[1] = "Monday";
            DaysOfTheWeek[2] = "Tuesday";
            DaysOfTheWeek[3] = "Wednesday";
            DaysOfTheWeek[4] = "Thursday";
            DaysOfTheWeek[5] = "Friday";
            DaysOfTheWeek[6] = "Saturday";

            while (cherry == true)
            {
                //get input from user
                System.Console.Write("\nWhich day of the week would you like to display?\n");
                System.Console.Write("1) Sunday.\n");
                System.Console.Write("2) Monday.\n");
                System.Console.Write("3) Tuesday.\n");
                System.Console.Write("4) Wednesday.\n");
                System.Console.Write("5) Thursday.\n");
                System.Console.Write("6) Friday.\n");
                System.Console.Write("7) Saturday.\n");


                trash = System.Console.ReadLine();
                input1 = int.Parse(trash);

                if (input1 > 0 && input1 < 7)
                {
                    cherry = false;
                }
                else
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                }
            }



            //spacing
            System.Console.Write("\n\n");

            //Output Day of the Week
            System.Console.Write("The day of the week selected is: " + DaysOfTheWeek[(input1 - 1)] + ".\n");
            
            

        }








    }
}