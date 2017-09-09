//Kemerait, Christopher A
//CS 2350, Spring 09
//20090203
//Lab 2

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_2_20090203
{
    class Kemerait_Lab_2_20090203
    {
        static void Main(string[] args)
        {
            int trip = 0;
            

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < 8)
            {
                //prompt user with start menu
                trip = StartMenu();
                
                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    //Convert from Celsius to Fahrenheit
                    ConvertCelsiustoFahrenheit();

                    //promt user for return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(2))
                {
                    //Convert from Celsius to Fahrenheit
                    ConvertFahrenheittoCelsius();

                    //promt user for return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(3))
                {
                    //Reads two numbers from the user input.
                    //Display their sum, difference, product, quotient, and remainder of the values.
                    EvaluateTwoNumbers();

                    //promt user for return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(4))
                {
                    //Draw a Filled Hexagon
                    DrawFilledHexagon();
                    
                    //prompt user for return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(5))
                {                    
                    //Draw Hollow Hexagon
                    DrawHollowHexagon();
                    
                    //prompt user with return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(6))
                {
                    //DrawFilled Pentagon
                    DrawFilledPentagon();

                    //promput user with return menu
                    trip = ReturnMenu();
                }
                else if (trip.Equals(7))
                {
                    //Draw Hollow Pentagon
                    DrawHollowPentagon();
                    
                    //promp user with return menu
                    trip = ReturnMenu();
                }
                else if (trip > 7)
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
             
             P133 2 and 3) 
             
             Write a program that draws a set of * characters based on the user input so that they form a filled/hollow hexagon (the user specifies the side length). 
             (Optional) Write a program that draws a set of * characters based on the user input so that they form a filled/hollow pentagon (the user specifies the side length).

             * */
            System.Console.Write("We're here to help you do a few things.\n");
            System.Console.Write("What would you like to do?\n");
            //Write a program that converts a temperature given in Celsius to Fahrenheit
            System.Console.Write("1) Convert from Celsius to Fahrenheit.\n");
            //converts a temperature given in Fahrenheit to Celsius.
            System.Console.Write("2) Convert from Fahrenheit to Celsius.\n");
            //Write a program that reads two double numbers from the user input. Display their sum, difference, product, quotient, and remainder of the values.
            System.Console.Write("3) Compute two numbers.\n");
            //Write a program that draws a set of * characters based on the user input so that they form a filled/hollow hexagon (the user specifies the side length). 
            System.Console.Write("4) Draw a filled Hexagon\n");
            System.Console.Write("5) Draw a hollow Hexagon\n");
            //(Optional) Write a program that draws a set of * characters based on the user input so that they form a filled/hollow pentagon (the user specifies the side length).
            System.Console.Write("6) Draw a filled Pentagon\n");
            System.Console.Write("7) Draw a hollow Pentagon\n");

            trash = System.Console.ReadLine();
            trip = int.Parse(trash);
            return trip;
        }

        static int ReturnMenu()
        {
            //declare variables
            string trash;
            int trip = 0;

            //containment loop
            while (trip < 3)
            {

                System.Console.Write("\n\nWould you like to perform another operation?\n");
                System.Console.Write("1) Yes.\n");
                System.Console.Write("2) I'm done for now.\n");
                trash = System.Console.ReadLine();
                trip = int.Parse(trash);
                System.Console.Write("\n\n");

                if (trip.Equals(2))
                {
                    //must be greater than the loop limit in main, which is < 8
                    trip = 8;
                }
                else if (trip.Equals(1))
                {
                    //must be greater than the loop limit in ReturnMenu, which is < 3
                    trip = 3;
                }
                else
                {
                    
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    trip = 0;
                }
                
            }



            return trip;
        }

        static void ConvertCelsiustoFahrenheit()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nWhich temperature in Celsius would you like to convert to Fahrenheit?\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);
            
            //spacing
            System.Console.Write("\n\n");

            //Calculations
            input2 = input1 * (9 / 5) + 32;

            //Output converted temperature to user
            System.Console.Write("The temperature " + input1 + " degrees Celsius equals\n");
            System.Console.Write("The temperature " + input2 + " degrees Fahrenheit.\n");

        }

        static void ConvertFahrenheittoCelsius()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nWhich temperature in Fahrenheit would you like to convert to Celsius?\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);

            //spacing
            System.Console.Write("\n\n");

            //caculations
            input2 = ((input1 - 32) * (5)) / 9;

            //Output converted temperature to user
            System.Console.Write("The temperature " + input1 + " degrees Fahrenheit equals\n");
            System.Console.Write("The temperature " + input2 + " degrees Celsius.\n");

        }

        static void EvaluateTwoNumbers()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput your first number with which to calculate.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            System.Console.Write("Input your second number with which to calculate.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input2 = int.Parse(trash);

            //calculation
            //Sum
            SumTwoNumbers(input1, input2);
            
            //calculation
            //Difference
            SubtractTwoNumbers(input1, input2);
            
            //calculation
            //Product
            MultiplyTwoNumbers(input1, input2);
            
            //calculation
            //Quotient
            DivideTwoNumbers(input1, input2);
            
            //calculation
            //Remainder Function
            RemainderofTwoNumbers(input1, input2);
        }

        static void SumTwoNumbers(double input1, double input2)
        {
            //declare variables
            double limit = 0;

            //perform operation
            limit = input1 + input2;

            //output to user
            System.Console.Write("The sum of " + input1 + " and " + input2 + " is:\n");
            System.Console.Write(limit + "\n\n");

        }

        static void SubtractTwoNumbers(double input1, double input2)
        {
            //declare variables
            double limit = 0;

            //perform operation
            limit = input1 - input2;

            //output to user
            System.Console.Write("The difference between " + input1 + " and " + input2 + " is:\n");
            System.Console.Write(limit + "\n\n");
        }

        static void MultiplyTwoNumbers(double input1, double input2)
        {
            //declare variables
            double limit = 0;

            //perform operation
            limit = input1 * input2;

            //output to user
            System.Console.Write("The product of " + input1 + " by " + input2 + " is:\n");
            System.Console.Write(limit + "\n\n");
        }

        static void DivideTwoNumbers(double input1, double input2)
        {
            //declare variables
            double limit = 0;

            //perform operation
            limit = input1 / input2;

            //output to user
            System.Console.Write("The quotient of " + input1 + " over " + input2 + " is:\n");
            System.Console.Write(limit + "\n\n");
        }

        static void RemainderofTwoNumbers(double input1, double input2)
        {
            //declare variables
            double limit = 0;

            //perform operation
            limit = input1 % input2;

            //output to user
            System.Console.Write("The remainder from the quotient of " + input1 + " over " + input2 + " is:\n");
            System.Console.Write(limit + "\n\n");
        }

        static void DrawFilledHexagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";
            
            //get input from user
            System.Console.Write("\n\nInput the width of your Hexagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;


            limit = 1;
            //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;

            //top triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                for (int y = 0; y < limit; y++)
                {
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = (x + 1) + (x + 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //middle rows
            for (int x = 0; x < (input1 - 2); x++)
            {


                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                for (int y = 0; y < limit; y++)
                {
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                //limit = input1;

                //System.Console.Write(limit);
                System.Console.Write("\n");
            }


            //bottom triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                for (int y = 0; y < limit; y++)
                {
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = ((input1 - x) - 1) + ((input1 - x) - 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

            }
        }

        static void DrawHollowHexagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput the width of your Hexagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;


            limit = 1;
            //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;

            //top triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *
                System.Console.Write("*");
                if (limit > 1)
                {
                    //inner spaces
                    for (int y = 0; y < (limit - 2); y++)
                    {
                        System.Console.Write(" ");
                    }
                    //output *
                    System.Console.Write("*");
                }

                //change limit of characters allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = (x + 1) + (x + 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //middle rows
            for (int x = 0; x < (input1 - 2); x++)
            {


                //output spaces
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }

                //output *
                System.Console.Write("*");
                if (limit > 1)
                {
                    //inner spaces
                    for (int y = 0; y < (limit - 2); y++)
                    {
                        System.Console.Write(" ");
                    }
                    //output *
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                //limit = input1;

                //System.Console.Write(limit);
                System.Console.Write("\n");
            }


            //bottom triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *
                System.Console.Write("*");
                if (limit > 1)
                {
                    //inner spaces
                    for (int y = 0; y < (limit - 2); y++)
                    {
                        System.Console.Write(" ");
                    }
                    //output *
                    System.Console.Write("*");
                }
                //change limit of *s allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = ((input1 - x) - 1) + ((input1 - x) - 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

            }

        }

        static void DrawFilledPentagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput the width of your Pentagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;


            limit = 1;
            //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;

            //top triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                for (int y = 0; y < limit; y++)
                {
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = (x + 1) + (x + 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //trapezoid
            //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;
            for (int x = 0; x < (input1 - 1); x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                for (int y = 0; y < limit; y++)
                {
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                limit = limit - (limit / input1);
                if (limit < input1)
                {
                    limit = input1;
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

                
            }


                    

                    
        }

        static void DrawHollowPentagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput the width of your Pentagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;

            //intialize limit of * allowed
            limit = 1;
            
            //top triangle
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *
                System.Console.Write("*");
                if (limit > 1)
                {
                    //inner spaces
                    for (int y = 0; y < (limit - 2); y++)
                    {
                        System.Console.Write(" ");
                    }
                    //output *
                    System.Console.Write("*");
                }

                //change limit of *s allowed
                if (x < (input1 - 1))
                {
                    //limit = height + the following height
                    limit = (x + 1) + (x + 2);
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //trapezoid
            //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;
            for (int x = 0; x < (input1 - 1); x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((input1 + (input1 - 1)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *
                System.Console.Write("*");
                if (limit > 1)
                {
                    if (x == (input1 - 2))
                    {
                        //output *s
                        for (int y = 0; y < (limit - 1); y++)
                        {
                            System.Console.Write("*");
                        }


                    }
                    else
                    {
                        //inner spaces
                        for (int y = 0; y < (limit - 2); y++)
                        {
                            System.Console.Write(" ");
                        }
                        //output *
                        System.Console.Write("*");
                    }
                }

                //change limit of *s allowed
                limit = limit - (limit / input1);
                if (limit < input1)
                {
                    limit = input1;
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

                
            }
        }



    }
}