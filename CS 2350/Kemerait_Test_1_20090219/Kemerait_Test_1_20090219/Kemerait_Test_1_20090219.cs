//Kemerait, Christopher A
//CS 2350, Spring 09
//20090219
//Test 1: Coding Section


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Test_1_20090219
{
    class Kemerait_Test_1_20090219
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //Actual options + 1
            int options = 4;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu();

                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    //1) Write a program to read the monthly salary, output the annual salary (12 months) in currency format.
                    AnnualSalary();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    //2) Write a program to read a series of numbers, and output their average with 4 digits after the decimal point.
                    AverageNumbers();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    //3) Write a program that draw a set * characters based on the user input so that they form a filled/hollow octagon (the user specifies the side length).
                    DrawOctagon();

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

        static int StartMenu()
        {
            //declare variables
            string trash;
            int trip;
            /*
             
            1) Write a program to read the monthly salary, output the annual salary (12 months) in currency format.

            2) Write a program to read a series of numbers, and output their average with 4 digits after the decimal point.

            3) Write a program that draw a set * characters based on the user input so that they form a filled/hollow octagon (the user specifies the side length).
            
            */

            System.Console.Write("We're here to help you do a few things.\n");
            System.Console.Write("What would you like to do?\n");
            //Write a program to read the monthly salary, output the annual salary (12 months) in currency format.
            System.Console.Write("1) Output annual salary based on a monthly salary.\n");
            //Write a program to read a series of numbers, and output their average with 4 digits after the decimal point.
            System.Console.Write("2) Average a series of numbers.\n");
            //Write a program that draw a set * characters based on the user input so that they form a filled/hollow octagon (the user specifies the side length).
            System.Console.Write("3) Draw a filled/hollow Octagon.\n");
            
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

        static void AnnualSalary()
        {
            //1) Write a program to read the monthly salary, output the annual salary (12 months) in currency format.



            //declare variables


            //get input from user
            System.Console.Write("\nenter your monthly salary and we will give you your yearly salary.\n");
            string trash = System.Console.ReadLine();
            double input1 = int.Parse(trash);

            //calculate
            input1 *= 12;

            //Output
            System.Console.Write("\n\n");
            System.Console.Write("Your yearly salary is: {0:c0}.\n", input1);
            
        }

        static void AverageNumbers()
        {
            //2) Write a program to read a series of numbers, and output their average with 4 digits after the decimal point.
            
            //declare variables
            

            //promt user
            System.Console.Write("\nWe're going to help you average your statistics.\n");
            System.Console.Write("\nPlease enter your first statistic.\n");
            string trash = System.Console.ReadLine();
            double input1 = int.Parse(trash);
            int tracker = 1;
            int trip = 0;
            bool cherry1 = true;
            bool cherry2 = true;

            //loop until user is finished
            while(cherry1 == true)
            {
                //prompt user
                System.Console.Write("\nPlease enter your next statistic.\n");
                trash = System.Console.ReadLine();
                
                //increment
                tracker++;

                
                cherry2 = true;

                while(cherry2 == true)
                {
                    //prompt user
                    System.Console.Write("\nWould you like to average in another statistic?\n");
                    System.Console.Write(" 1) Yes.\n");
                    System.Console.Write(" 2) No.\n");
                    trash = System.Console.ReadLine();
                    trip = int.Parse(trash);

                    if(trip.Equals(1))
                    {
                        cherry2 = false;
                        cherry1 = true;
                    }
                    else if(trip.Equals(2))
                    {
                        cherry2 = false;
                        cherry1 = false;
                    }
                    else
                    {
                        System.Console.Write("There seems to be an error.\n");
                    }
                }
            }

            //calculate
            input1 = (input1/tracker);

            //Output
            System.Console.Write("\nYour average is: {0:f4}.\n", input1);
            
           
        }

        static void DrawOctagon()
        {
            //3) Write a program that draw a set * characters based on the user input so that they form a filled octagon (the user specifies the side length).

            //This code is based off the hand written test and not the computer designed Octagons
            //This code orginally outputed some rectangle, though hollow or filled.
            //Spaces were not included before most of the lines


            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //prompt user
            bool cherry2 = true;

            while (cherry2 == true)
            {
                //prompt user
                System.Console.Write("\nWould you like to draw a filled or hollow octagon?\n");
                System.Console.Write(" 1) Hollow.\n");
                System.Console.Write(" 2) Filled.\n");
                trash = System.Console.ReadLine();
                input1 = int.Parse(trash);

                //Containment was added post test
                if (input1.Equals(1) || input1.Equals(2))
                {
                    cherry2 = false;
                }
                else
                {
                    System.Console.Write("There seems to be an error.\n");
                }
            }

            //spacing
            System.Console.Write("\n\n");

            System.Console.Write("Please designate the side length of your octagon.\n");
            trash = System.Console.ReadLine();
            input2 = double.Parse(trash);

            limit = input2;
            //top trapezoid
            for (int x = 0; x < input2; x++)
            {
                //output spaces
                //for (maximum limit - limit)/2

                for (int y = 0; y < ((((input2*3)-2)-limit)/2); y++)
                {
                    System.Console.Write(" ");
                }

                //output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit - 1); y++)
                {
                    if (x == 0)
                    {
                        System.Console.Write("*");
                    }
                    else if (input1 == 2)
                    {
                        System.Console.Write("*");
                    }
                    else if (input1 == 1)
                    {
                        System.Console.Write(" ");
                    }
                }
                System.Console.Write("*\n");

                //increase limit
                limit+= 2;
                
                //limit exceeds maximum limit, then it equals maximum limit
                if (limit > ((input2*3)-2))
                {
                    limit = ((input2 * 3) - 2);
                }
            }


            //middle rectangle
            for (int x = 0; x < (input2 - 2); x++)
            {

                //output spaces
                //for (maximum limit - limit)/2

                for (int y = 0; y < ((((input2 * 3) - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }

                //Output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit - 1); y++)
                {
                    if (input1 == 2)
                    {
                        System.Console.Write("*");
                    }
                    else if (input1 == 1)
                    {
                        System.Console.Write(" ");
                    }
                }
                System.Console.Write("*\n");
            }
            
            //bottom trapezoid
            for(int x = 0; x < input2; x++)
            {
                //output spaces
                //for (maximum limit - limit)/2

                for (int y = 0; y < ((((input2 * 3) - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }

                //output *s
                System.Console.Write("*");
                for(int y = 1; y < (limit-1); y++)
                {
                    if(x == (input2 - 1))
                    {
                        System.Console.Write("*");
                    }
                    else if(input1 == 2)
                    {
                        System.Console.Write("*");
                    }
                    else if (input1 == 1)
                    {
                        System.Console.Write(" ");
                    }
                }
                System.Console.Write("*\n");

                //increase limit
                limit -= 2;

                //limit exceeds maximum limit, then it equals maximum limit
                if (limit < input2)
                {
                    limit = input2;
                }
            }
        }





    




        








    }
}
