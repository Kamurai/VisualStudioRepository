//Kemerait, Christopher A
//CS 2350, Spring 09
//Lab 1
           
           using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_1_20090127
{
    class Kemerait_Lab_1_20090127
    {
        static void Main(string[] args)
        {
            int trip = 0;
            int options = 12;
            
            while (trip < options)
            {
                //prompt user with menu
                trip = StartMenu();

                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    //Draw Square
                    DrawSquare();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    //Draw Rectangle//rectangle with specified side and height
                    DrawRectangle();
                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    //Draw Triangle
                    DrawTriangle();
                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(4))
                {
                    //Draw Trapezoid
                    DrawTrapezoid();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(5))
                {
                    //Draw Isometric Triangle
                    DrawIsometricTriangle();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(6))
                {
                    //Draw Filled Pentagon
                    DrawFilledPentagon();   

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(7))
                {
                    //Draw Hollow Pentagon
                    DrawHollowPentagon();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(8))
                {
                    //Draw Filled Hexagon
                    DrawFilledHexagon();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(9))
                {
                    //Draw Hollow Hexagon
                    DrawHollowHexagon();
                    
                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(10))
                {
                    //Draw Filled Octagon
                    DrawFilledOctagon();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(11))
                {
                    //Draw Hollow Octagon
                    DrawHollowOctagon();

                    //prompt user with return menu
                    trip = ReturnMenu(options);
                }
                else if (trip > (options - 1))
                {
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    trip = 0;
                }






            }
        }

        static int StartMenu()
        {
            string trash;
            int trip;
            
            System.Console.Write("We're here to help you make a shape.\n");
            System.Console.Write("Which shape would you like to make?\n");
            System.Console.Write("1) Square.\n");
            System.Console.Write("2) Rectangle.\n");
            System.Console.Write("3) Triangle.\n");
            System.Console.Write("4) Trapezoid\n");
            System.Console.Write("5) Isometric Triangle\n");
            System.Console.Write("6) Draw a filled Pentagon\n");
            System.Console.Write("7) Draw a hollow Pentagon\n");
            System.Console.Write("8) Draw a filled Hexagon\n");
            System.Console.Write("9) Draw a hollow Hexagon\n");
            System.Console.Write("10) Draw a filled Octagon\n");
            System.Console.Write("11) Draw a hollow Octagon\n");
            
            trash = System.Console.ReadLine();
            trip = int.Parse(trash);
            return trip;
        }

        static int ReturnMenu(int options)
        {
            string trash;
            int trip = 0;
            //containment loop
            while (trip < 3)
            {

                System.Console.Write("\n\nWould you like to make another shape?\n");
                System.Console.Write("1) Yes.\n");
                System.Console.Write("2) I'm done for now.\n");
                trash = System.Console.ReadLine();
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

        static void DrawSquare()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput a height for your square.\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);
            input2 = input1;
            System.Console.Write("\n\n");

            //System.Console.Write("Pre-Loop Test\n");
            for (int x = 0; x < input1; x++)
            {

                for (int y = 0; y < input2; y++)
                {
                    System.Console.Write("*");
                }
                System.Console.Write("\n");
            }
                    
        }

        static void DrawRectangle()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput a height for your Rectangle.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            System.Console.Write("Input a base for your Rectangle.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input2 = int.Parse(trash);



            //System.Console.Write("Pre-Loop Test\n");
            for (int x = 0; x < input1; x++)
            {

                for (int y = 0; y < input2; y++)
                {
                    System.Console.Write("*");
                }
                System.Console.Write("\n");
            }
        }

        static void DrawTriangle()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //triangle with specified height and base
            //get input from user
            System.Console.Write("\n\nInput a height for your Triangle.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            System.Console.Write("Input a base for your Triangle.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input2 = int.Parse(trash);

            if (input1 < input2)
            {
                limit = 1;
                //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;
                for (int x = 0; x < input1; x++)
                {
                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit + (input2 / input1);
                    if (limit > input2)
                    {
                        limit = input2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }
            }
            else if (input2 < input1)
            {
                limit = 1;
                //slope equals dH / dB = -16 / 5 = -1 / (5/16) =  //.3125m;
                for (int x = 0; x < input1; x++)
                {
                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit + (input2 / input1);
                    if (limit > input2)
                    {
                        limit = input2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }
            }
            else if (input2.Equals(input1))
            {
                limit = 1;
                //slope equals dH / dB = -16 / 5 = -1 / (5/16) =  //.3125m;
                for (int x = 0; x < input1; x++)
                {

                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit + (input2 / input1);
                    if (limit > input2)
                    {
                        limit = input2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }

            }

                    
                        
                        
        }

        static void DrawTrapezoid()
        {
            //Note: Need to find an arbitrary sollution for smaller base of trapezod: (1/2)base?

            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput a height for your Trapezoid.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            System.Console.Write("Input a base for your Trapezoid.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input2 = int.Parse(trash);

            if (input1 < input2)
            {
                limit = input2;
                //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;
                for (int x = 0; x < input1; x++)
                {

                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit - (input2 / input1);
                    if (limit < 2)
                    {
                        limit = 2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }
            }
            else if (input2 < input1)
            {
                limit = 1;
                //slope equals dH / dB = -16 / 5 = -1 / (5/16) =  //.3125m;
                for (int x = 0; x < input1; x++)
                {

                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit + 1;
                    if (limit > input2)
                    {
                        limit = input2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }
            }
            else if (input2.Equals(input1))
            {
                limit = input2;
                //slope equals dH / dB = -5 / 16 = -1 / (5/16) = .3125m;
                for (int x = 0; x < input1; x++)
                {

                    for (int y = 0; y < limit; y++)
                    {
                        System.Console.Write("*");
                    }
                    limit = limit - (input2 / input1);
                    if (limit < 2)
                    {
                        limit = 2;
                    }
                    //System.Console.Write(limit);
                    System.Console.Write("\n");
                }

            }
                    

                    
        }

        static void DrawIsometricTriangle()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            int trip = 5;
            string trash = "0";

            while (trip.Equals(5))
            {
                //Isometric Triangle
                //triangle with specified height and base, drawn evenly
                //get input from user
                System.Console.Write("\n\nInput a height for your Isometric Triangle.\n");
                trash = System.Console.ReadLine();
                System.Console.Write("\n\n");
                input1 = int.Parse(trash);
                System.Console.Write("Input a base that is greater than your height for your Isometric Triangle.\n");
                trash = System.Console.ReadLine();
                System.Console.Write("\n\n");
                input2 = int.Parse(trash);


                //Note: Base maximizes based on height of triangle
                if ( (input1 + 1) < input2)
                {
                    //Isometric Triangle with a slope of one on the left side and a slope of -1 on the right
                    //This needs to be fixed to allow triangles to be wider


                    limit = 1;
                    for (int x = 0; x < input1; x++)
                    {
                        //output spaces
                        for (int y = 0; y < ((input2 - limit - 1) / 2); y++)
                        {
                            System.Console.Write(" ");
                        }

                        //output *s
                        for (int y = 0; y < limit; y++)
                        {
                            System.Console.Write("*");
                        }
                        //System.Console.Write(limit);

                        //change limit of *s allowed
                        limit = limit + (input2 / input1);
                    
                        if (limit > input2)
                        {
                            limit = input2;
                        }

                        System.Console.Write("\n");
                    }
                    trip = 1;
                }
                else if (input2 < input1)
                {
                    //Isometric Triangles will not have height greater than its base
                    //This is not true; must be fixed
                    limit = 1;
                    for (int x = 0; x < input1; x++)
                    {
                        

                        //output spaces
                        for (int y = 0; y < ((input2 - limit - 1) / 2); y++)
                        {
                            System.Console.Write(" ");
                        }

                        //output *s
                        for (int y = 0; y < limit; y++)
                        {
                            System.Console.Write("*");
                        }
                        System.Console.Write(limit);

                        //change limit of *s allowed
                        
                        limit = limit + (input2 / input1);

                        //if odd, then increment
                        /*
                        if ( (limit % 2) > 1)
                        {
                            limit++;
                        }
                        */
                        if (limit > input2)
                        {
                            limit = input2;
                        }

                        System.Console.Write("\n");
                    }
                    trip = 1;
                }
                else
                {
                    //Isometric Triangles will not have equal height and base
                    //This accounts for errors
                    //This accounts for a base = (height + 1)
                    System.Console.Write("There seems to be something wrong.\nPlease try again.\n\n");

                }


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

                /*
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
                System.Console.Write("\n");*/
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

        static void DrawFilledOctagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput the width of your Otcagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;


            limit = input1;
            
            //top trapezoid
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((2 * input1) + (input1 - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit-1); y++)
                {
                    System.Console.Write("*");
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                limit = limit + 2;
                
                if (limit > ((2 * input1) + (input1 - 2)))
                {
                    limit = ((2 * input1) + (input1 - 2));
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //middle rows
            for (int x = 0; x < (input1 - 2); x++)
            {


                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((2 * input1) + (input1 - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit - 1); y++)
                {
                    System.Console.Write("*");
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                //limit = input1;

                //System.Console.Write(limit);
                System.Console.Write("\n");
            }


            //bottom trapezoid
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < ((((2 * input1) + (input1 - 2)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit - 1); y++)
                {
                    System.Console.Write("*");
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                limit = limit - 2;

                if (limit < (input1 - 1))
                {
                    limit = input1;
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

            }
        }

        static void DrawHollowOctagon()
        {
            //declare variables
            double input1 = 0;
            double input2 = 0;
            double limit = 0;
            string trash = "0";

            //get input from user
            System.Console.Write("\n\nInput the width of your Otcagon's sides.\n");
            trash = System.Console.ReadLine();
            System.Console.Write("\n\n");
            input1 = int.Parse(trash);
            input2 = input1;


            limit = input1;

            //top trapezoid
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((2 * input1) + (input1 - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                if (x == 0)
                {
                    for (int y = 1; y < (limit - 1); y++)
                    {
                        System.Console.Write("*");
                    }
                }
                else
                {
                    for (int y = 1; y < (limit - 1); y++)
                    {
                        System.Console.Write(" ");
                    }
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                limit = limit + 2;

                if (limit > ((2 * input1) + (input1 - 2)))
                {
                    limit = ((2 * input1) + (input1 - 2));
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");
            }

            //middle rows
            for (int x = 0; x < (input1 - 2); x++)
            {


                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < (((2 * input1) + (input1 - 2) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                for (int y = 1; y < (limit - 1); y++)
                {
                    System.Console.Write(" ");
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                //limit = input1;

                //System.Console.Write(limit);
                System.Console.Write("\n");
            }


            //bottom trapezoid
            for (int x = 0; x < input1; x++)
            {
                //output spaces
                //(max limit - current limit) /2
                for (int y = 0; y < ((((2 * input1) + (input1 - 2)) - limit) / 2); y++)
                {
                    System.Console.Write(" ");
                }
                //output *s
                System.Console.Write("*");
                if (x == (input1 -1))
                {
                    for (int y = 1; y < (limit - 1); y++)
                    {
                        System.Console.Write("*");
                    }
                }
                else
                {
                    for (int y = 1; y < (limit - 1); y++)
                    {
                        System.Console.Write(" ");
                    }
                }
                System.Console.Write("*");
                
                //change limit of *s allowed
                limit = limit - 2;

                if (limit < (input1 - 1))
                {
                    limit = input1;
                }
                //System.Console.Write(limit);
                System.Console.Write("\n");

            }

        }







    
    }
}
    
    
    
    
    
    
    