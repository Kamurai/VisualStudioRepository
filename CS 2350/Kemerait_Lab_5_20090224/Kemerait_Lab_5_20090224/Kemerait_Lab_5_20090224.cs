//Kemerait, Christopher A
//CS 2350, Spring 2009
//20090224
//Lab 5

using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_5_20090224
{
    class Kemerait_Lab_5_20090224
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
                    1. output the ordered list of the input (with duplicate values, either integers, or doubles) 
                    */
                    OrderInput();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    /*
                    2. output the median of the input (a group of integers)

                        Definition: 
                     *      a) Median: the number(s) in the middle of the ordered list.

                                b) If there are odd number of input numbers, the median is the middle number

                                    (For example, if the input is:   3  4  5  1  2, the median is 3)

                                c) If there are even number of input numbers, the median is the average of the middle two numbers

                                    (For example, if the input is:   3 4 5 1 2 6, the median is (3+4)/2 which is 3.5)
                    */
                    FindMedian();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    /* 
                    3. calculate the cubes of int values up to 100. The output should be in two columns: the first lists the value; the second contains the cube of that value. Manage the output so that the values line up in columns.
                    */
                    CubeIntegerRange();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip > options - 1)
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
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
            1. output the ordered list of the input (with duplicate values, either integers, or doubles) 
            */
            /*
            2. output the median of the input (a group of integers)

                Definition: 
             *      a) Median: the number(s) in the middle of the ordered list.

                        b) If there are odd number of input numbers, the median is the middle number

                            (For example, if the input is:   3  4  5  1  2, the median is 3)

                        c) If there are even number of input numbers, the median is the average of the middle two numbers

                            (For example, if the input is:   3 4 5 1 2 6, the median is (3+4)/2 which is 3.5)
            */
            
            /* 
            3. calculate the cubes of int values up to 100. The output should be in two columns: the first lists the value; the second contains the cube of that value. Manage the output so that the values line up in columns.
            */


            while (cherry == true)
            {
                System.Console.Write("We're here to help you do a few things.\n");
                System.Console.Write("What would you like to do?\n");
                /* 
                1. output the ordered list of the input (with duplicate values, either integers, or doubles) 
                */
                System.Console.Write("1) Order a list of numbers.\n");
                /*
                2. output the median of the input (a group of integers)

                    Definition: 
                 *      a) Median: the number(s) in the middle of the ordered list.

                            b) If there are odd number of input numbers, the median is the middle number

                                (For example, if the input is:   3  4  5  1  2, the median is 3)

                            c) If there are even number of input numbers, the median is the average of the middle two numbers

                                (For example, if the input is:   3 4 5 1 2 6, the median is (3+4)/2 which is 3.5)
                */
                System.Console.Write("2) Find the median in your input.\n");
                /* 
                3. calculate the cubes of int values up to 100. The output should be in two columns: the first lists the value; the second contains the cube of that value. Manage the output so that the values line up in columns.
                */
                System.Console.Write("3) Calculate the cubes of a range of integers.\n");

                trash = System.Console.ReadLine();

                if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3"))
                {
                    cherry = false;
                }
                else
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
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

        static void OrderInput()
        {
            /* 
            1. output the ordered list of the input (with duplicate values, either integers, or doubles) 
            */
            

            //declare variables
            int input1 = 0;
            string trash = "0";
            bool cherry1 = true;
            bool cherry2 = true;

            
            // Creates and initialize a new ArrayList.
            ArrayList original = new ArrayList();
            ArrayList ordered = new ArrayList();
            //myAL.Add("Hello");

            // Displays the properties and values of the ArrayList.
            /*
            Console.WriteLine("myAL");
            Console.WriteLine("\tCount:    {0}", myAL.Count);
            Console.WriteLine("\tCapacity: {0}", myAL.Capacity);
            Console.Write("\tValues:");
            PrintValues(myAL);
            */


            //get input from user
            System.Console.Write("\nPlease input your first number.\n");
            trash = System.Console.ReadLine();

            //add input to arraylist
            original.Add(double.Parse(trash));


            while (cherry1 == true)
            {
                //get input from user
                System.Console.Write("\nPlease input another number.\n");
                System.Console.Write("Enter # to stop.\n");
                trash = System.Console.ReadLine();
                if (trash.Equals("#"))
                {
                    cherry1 = false;
                }
                else
                {
                    //add input to arraylist
                    original.Add(double.Parse(trash));
                }


                
            }

            //perform operation
            //transfer to ordered
            for (int x = 0; x < original.Count; x++)
            {
                ordered.Add(original[x]);
            }
            
            //order ordered
            ordered.Sort();

            
            
            //spacing
            System.Console.Write("\n\n");

            //Display
            System.Console.Write("Below are the original input and ordered counter-part:\n");

            //walk through arraylist
            for (int x = 0; x < ordered.Count; x++)
            {
                //then output words[x] and count[x]
                System.Console.Write("Original " + (x + 1) + ": " + original[x] + "\tOrdered " + (x + 1) + ": " + ordered[x] + ".\n");
            }


        }

        static void FindMedian()
        {
            /*
            2. output the median of the input (a group of integers)

                Definition: 
             *      a) Median: the number(s) in the middle of the ordered list.

                        b) If there are odd number of input numbers, the median is the middle number

                            (For example, if the input is:   3  4  5  1  2, the median is 3)

                        c) If there are even number of input numbers, the median is the average of the middle two numbers

                            (For example, if the input is:   3 4 5 1 2 6, the median is (3+4)/2 which is 3.5)
            */

            
            //declare variables
            int input1 = 0;
            string trash = "0";
            bool cherry1 = true;
            bool cherry2 = true;
            double median = 0;

            
            // Creates and initialize a new ArrayList.
            ArrayList original = new ArrayList();
            ArrayList ordered = new ArrayList();
            //myAL.Add("Hello");

            // Displays the properties and values of the ArrayList.
            /*
            Console.WriteLine("myAL");
            Console.WriteLine("\tCount:    {0}", myAL.Count);
            Console.WriteLine("\tCapacity: {0}", myAL.Capacity);
            Console.Write("\tValues:");
            PrintValues(myAL);
            */


            //get input from user
            System.Console.Write("\nPlease input your first number.\n");
            trash = System.Console.ReadLine();

            //add input to arraylist
            original.Add(double.Parse(trash));


            while (cherry1 == true)
            {
                //get input from user
                System.Console.Write("\nPlease input another number.\n");
                System.Console.Write("Enter # to stop.\n");
                trash = System.Console.ReadLine();
                 
                if (trash.Equals("#"))
                {
                    cherry1 = false;
                }
                else
                {
                    //add input to arraylist
                    original.Add(double.Parse(trash));
                }
              }

            //perform operation
            //transfer to ordered
            for (int x = 0; x < original.Count; x++)
            {
                ordered.Add(original[x]);
            }
            //order ordered
            ordered.Sort();

            //find median
            //if count is odd
            if ((ordered.Count % 2) == 1)
            {
                System.Console.Write((ordered.Count/2) + "\n");
                median = Convert.ToDouble(ordered[(ordered.Count / 2)]);
            }
            //if count is even
            else if ((ordered.Count % 2) == 0)
            {
                System.Console.Write((ordered.Count/2) + "\n");
                median = (Convert.ToDouble(ordered[(ordered.Count / 2)]) + Convert.ToDouble(ordered[(ordered.Count / 2)-1]))/2;
            }
            
            
            //spacing
            System.Console.Write("\n\n");

            //Display
            System.Console.Write("The median of the input is:" + median + ".\n\n");

            System.Console.Write("Below are the original input and ordered counter-part:\n\n");

            //walk through arraylist
            for (int x = 0; x < ordered.Count; x++)
            {
                //then output words[x] and count[x]
                System.Console.Write("Original " + (x + 1) + ": " + original[x] + "\tOrdered " + (x + 1) + ": " + ordered[x] + ".\n");
            }
        }


        
        static void CubeIntegerRange()
        {
            /* 
            3. calculate the cubes of int values up to 100. The output should be in two columns: the first lists the value;
             * the second contains the cube of that value. Manage the output so that the values line up in columns.
            */

            //declare variables
            decimal input1 = 1;
            int lowest = 0;
            int highest = 0;
            int limit0 = 0;
            int limit1 = 0;
            int limit2 = 0;
            string spacing0 = " ";
            string spacing1 = " ";
            string spacing2 = " ";
            string trash = "0";
            ArrayList original = new ArrayList();
            ArrayList cubes = new ArrayList();

            //get input from user
            System.Console.Write("\nWe are going to find the cubes of all integers in a range.\n");
            System.Console.Write("\nWhat is the lowest integer in the desired range?\n");
            trash = System.Console.ReadLine();
            lowest = int.Parse(trash);

            System.Console.Write("\nWhat is the highest integer in the desired range?\n");
            trash = System.Console.ReadLine();
            highest = int.Parse(trash);
            
            
            //spacing
            System.Console.Write("\n\n");

            //assign values to array
            //find product
            for (int x = lowest; x <= highest; x++)
            {
                original.Add(x);
                cubes.Add(Math.Pow(x, 3));
            }

            //create limits for column spacing
            limit0 = Convert.ToString(original.Count).Length;
            limit1 = Convert.ToString(original[original.Count-1]).Length;
            limit2 = Convert.ToString(cubes[cubes.Count-1]).Length;

            //spacing
            System.Console.Write("\n");

            //Output
            System.Console.Write("Below are the original inputs and its cubes:\n\n");

            //walk through arraylist
            for (int x = 0; x < cubes.Count; x++)
            {
                //reset spacing
                spacing0 = " ";
                spacing1 = " ";
                spacing2 = " ";

                //determine amount of column spacing
                for (int y = 1; y <= (limit0 - Convert.ToString(x+1).Length); y++)
                {
                    spacing0 += " ";
                }
                for (int y = 1; y <= (limit1 - Convert.ToString(original[x]).Length); y++)
                {
                    spacing1 += " ";
                }
                for (int y = 1; y <= (limit2 - Convert.ToString(cubes[x]).Length); y++)
                {
                    spacing2 += " ";
                }

                //then output words[x] and count[x]
                System.Console.Write("Original " + spacing0 + (x + 1) + ": " + spacing1 + original[x] + " cubed is: " + spacing2 + cubes[x] + ".\n");
            }

        }







    }
}
