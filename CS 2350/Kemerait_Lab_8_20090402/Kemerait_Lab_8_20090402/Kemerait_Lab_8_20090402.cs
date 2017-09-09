using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;


namespace Kemerait_Lab_8_20090402
{
    class Kemerait_Lab_8_20090402
    {
        static void Main(string[] args)
        {

            int trip = 0;
            //Actual options + 1;
            int options = 4;

            //Containment Loop with limit = options
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip == 1)
                {
                    /*
                   1. Write a program that generates 100 random numbers between 0 and 1000. Display the number of even 
                        values generated as well as the smallest, the largest, and the range of values. Output should be  
                        displayed in a Windows messagebox. 

            You can look at the Random class in C#.

             * For example, in your messagebox, there will be:
            Even numbers: 54
            Smallest number: 0
            Largest number:  993
            Range of numbers: 0 - 993
            */
                   

                    RandomList();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip == 2)
                {
                    /* 
                            2. Prompt the user for the length of three line segments as integers. If the three lines could form a 
                               triangle, print the integers and a message indicating they form a triangle. Recall that the sum of 
                               the lengths of any two sides must be greater than the length of the third side to form a triangle. 
                               For example, 20, 5, and 10 cannot be the lengths of the sides of a triangle because 5 + 10 is not 
                               greater than 20. For line segments that do not form a triangle, print the integers and an 
                               appropriate message indicating no triangle can be created. Use a state-controlled loop to allow 
                               users to enter as many different combinations as they want. 
             
                   For example:
                   *** You can be prompted to enter 3 integers which could possibly
                   *** be the respective lengths of the three sides of a triangle.
             
                   Please enter the first integer: 20
                   Please enter the second integer: 1
                   Please enter the third integer: 3
             
                      * The numbers 20 , 1, and 3 CANNOT represent sides of the same triangle. *
             
                   Would you like to try 3 numbers?
                     Please enter 'y' for yes or another letter for no: y
             
                   Please enter the first integer: 10
                   Please enter the second integer: 6
                   Please enter the third integer: 8
             
                    * The numbers 10 , 6, and 8 CAN represent sides of the same triangle. *
            
                    * Would you like to try 3 numbers?
                     Please enter 'y' for yes or another letter for no: n
                   */
                    TriangleDilemma();

                    //promt user for return menu
                    trip = ReturnMenu(options);

                }
                else if (trip == 3)
                {

                    /*
                  3. Write a program that produces a multiplication table. Allow the user to input the first and last  
                                base values for the multiplication table. Display a column in the table beginning with the first  
                                base inputted value. The last column should be the ending base value entered. Produce 15 rows of 
                                computations. The first row should be for 1 times the beginning base, 1 times the (beginning base 
                                value + 1), through 1 times the ending base value. The last row should be for 15 times the 
                                beginning base, 15 times the (beginning base value + 1), through 15 times the ending base value. 
                                Base values can range from 2 through 8. Display a formatted multiplication table. 
                    
                    For example:
                    ***   You will be prompted to enter two integers.     ***
                    ***   A multiplication table will be displayed       ***
                    ***   based on these two base values entered.        ***
                    ***   Base values multiplied from 1 through 15.       ***
                    ***   Enter as many sets of 2 bases as you like.     ***
             
                    Please enter the first base value, 2 - 8 :  2
             
                    Please enter the last base value <= 8 :  5
             
             
             
                            X       2       3       4       5
                            1       2       3       4       5
                            2       4       6       8       10
                            3       6       9       12      15
                            4       8       12      16      20
                            5       10      15      20      25
                            6       12      18      24      30
                            7       14      21      28      35
                            8       16      24      32      40
                            9       18      27      36      45
                            10      20      30      40      50
                            11      22      33      44      55
                            12      24      36      48      60
                            13      26      39      52      65
                            14      28      42      56      70
                            15      30      45      60      75
             
                    ***   Would you like to enter two base values?
                    ***   Please enter 'y' for yes or any other letter for no: n
            
                    */
                    MultiplicationTable();

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
                   1. Write a program that generates 100 random numbers between 0 and 1000. Display the number of even 
                        values generated as well as the smallest, the largest, and the range of values. Output should be  
                        displayed in a Windows messagebox. 

            You can look at the Random class in C#.

             * For example, in your messagebox, there will be:
            Even numbers: 54
            Smallest number: 0
            Largest number:  993
            Range of numbers: 0 - 993
            */
            /* 
                     2. Prompt the user for the length of three line segments as integers. If the three lines could form a 
                        triangle, print the integers and a message indicating they form a triangle. Recall that the sum of 
                        the lengths of any two sides must be greater than the length of the third side to form a triangle. 
                        For example, 20, 5, and 10 cannot be the lengths of the sides of a triangle because 5 + 10 is not 
                        greater than 20. For line segments that do not form a triangle, print the integers and an 
                        appropriate message indicating no triangle can be created. Use a state-controlled loop to allow 
                        users to enter as many different combinations as they want. 
             
            For example:
            *** You can be prompted to enter 3 integers which could possibly
            *** be the respective lengths of the three sides of a triangle.
             
            Please enter the first integer: 20
            Please enter the second integer: 1
            Please enter the third integer: 3
             
               * The numbers 20 , 1, and 3 CANNOT represent sides of the same triangle. *
             
            Would you like to try 3 numbers?
              Please enter 'y' for yes or another letter for no: y
             
            Please enter the first integer: 10
            Please enter the second integer: 6
            Please enter the third integer: 8
             
             * The numbers 10 , 6, and 8 CAN represent sides of the same triangle. *
            
             * Would you like to try 3 numbers?
              Please enter 'y' for yes or another letter for no: n
            */
            
            /*
          3. Write a program that produces a multiplication table. Allow the user to input the first and last  
                        base values for the multiplication table. Display a column in the table beginning with the first  
                        base inputted value. The last column should be the ending base value entered. Produce 15 rows of 
                        computations. The first row should be for 1 times the beginning base, 1 times the (beginning base 
                        value + 1), through 1 times the ending base value. The last row should be for 15 times the 
                        beginning base, 15 times the (beginning base value + 1), through 15 times the ending base value. 
                        Base values can range from 2 through 8. Display a formatted multiplication table. 
                    
            For example:
            ***   You will be prompted to enter two integers.     ***
            ***   A multiplication table will be displayed       ***
            ***   based on these two base values entered.        ***
            ***   Base values multiplied from 1 through 15.       ***
            ***   Enter as many sets of 2 bases as you like.     ***
             
            Please enter the first base value, 2 - 8 :  2
             
            Please enter the last base value <= 8 :  5
             
             
             
                    X       2       3       4       5
                    1       2       3       4       5
                    2       4       6       8       10
                    3       6       9       12      15
                    4       8       12      16      20
                    5       10      15      20      25
                    6       12      18      24      30
                    7       14      21      28      35
                    8       16      24      32      40
                    9       18      27      36      45
                    10      20      30      40      50
                    11      22      33      44      55
                    12      24      36      48      60
                    13      26      39      52      65
                    14      28      42      56      70
                    15      30      45      60      75
             
            ***   Would you like to enter two base values?
            ***   Please enter 'y' for yes or any other letter for no: n
            
            */

            


            while (cherry == true)
            {
                System.Console.Write("We're here to help you do a few things.\n");
                System.Console.Write("What would you like to do?\n");
                /*
                   1. Write a program that generates 100 random numbers between 0 and 1000. Display the number of even 
                        values generated as well as the smallest, the largest, and the range of values. Output should be  
                        displayed in a Windows messagebox. 

            You can look at the Random class in C#.

             * For example, in your messagebox, there will be:
            Even numbers: 54
            Smallest number: 0
            Largest number:  993
            Range of numbers: 0 - 993
            */
                
                System.Console.Write("1) Get information about a randomly generated list of integers.\n");
                /* 
                         2. Prompt the user for the length of three line segments as integers. If the three lines could form a 
                            triangle, print the integers and a message indicating they form a triangle. Recall that the sum of 
                            the lengths of any two sides must be greater than the length of the third side to form a triangle. 
                            For example, 20, 5, and 10 cannot be the lengths of the sides of a triangle because 5 + 10 is not 
                            greater than 20. For line segments that do not form a triangle, print the integers and an 
                            appropriate message indicating no triangle can be created. Use a state-controlled loop to allow 
                            users to enter as many different combinations as they want. 
             
                For example:
                *** You can be prompted to enter 3 integers which could possibly
                *** be the respective lengths of the three sides of a triangle.
             
                Please enter the first integer: 20
                Please enter the second integer: 1
                Please enter the third integer: 3
             
                   * The numbers 20 , 1, and 3 CANNOT represent sides of the same triangle. *
             
                Would you like to try 3 numbers?
                  Please enter 'y' for yes or another letter for no: y
             
                Please enter the first integer: 10
                Please enter the second integer: 6
                Please enter the third integer: 8
             
                 * The numbers 10 , 6, and 8 CAN represent sides of the same triangle. *
            
                 * Would you like to try 3 numbers?
                  Please enter 'y' for yes or another letter for no: n
                */

                
                System.Console.Write("2) Determine if three lines are able to form a triangle.\n");
                /*
              3. Write a program that produces a multiplication table. Allow the user to input the first and last  
                            base values for the multiplication table. Display a column in the table beginning with the first  
                            base inputted value. The last column should be the ending base value entered. Produce 15 rows of 
                            computations. The first row should be for 1 times the beginning base, 1 times the (beginning base 
                            value + 1), through 1 times the ending base value. The last row should be for 15 times the 
                            beginning base, 15 times the (beginning base value + 1), through 15 times the ending base value. 
                            Base values can range from 2 through 8. Display a formatted multiplication table. 
                    
                For example:
                ***   You will be prompted to enter two integers.     ***
                ***   A multiplication table will be displayed       ***
                ***   based on these two base values entered.        ***
                ***   Base values multiplied from 1 through 15.       ***
                ***   Enter as many sets of 2 bases as you like.     ***
             
                Please enter the first base value, 2 - 8 :  2
             
                Please enter the last base value <= 8 :  5
             
             
             
                        X       2       3       4       5
                        1       2       3       4       5
                        2       4       6       8       10
                        3       6       9       12      15
                        4       8       12      16      20
                        5       10      15      20      25
                        6       12      18      24      30
                        7       14      21      28      35
                        8       16      24      32      40
                        9       18      27      36      45
                        10      20      30      40      50
                        11      22      33      44      55
                        12      24      36      48      60
                        13      26      39      52      65
                        14      28      42      56      70
                        15      30      45      60      75
             
                ***   Would you like to enter two base values?
                ***   Please enter 'y' for yes or any other letter for no: n
            
                */
                System.Console.Write("3) Make a multiplication table.\n");

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
            bool cherry1 = true;
            bool cherry2 = true;

            //containment loop
            while (cherry1 == true)
            {
                while (cherry2 == true)
                {
                    Console.Write("\n\nWould you like to perform another operation?\n");
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

        static void RandomList()
        {
            /*
                   1. Write a program that generates 100 random numbers between 0 and 1000. Display the number of even 
                        values generated as well as the smallest, the largest, and the range of values. Output should be  
                        displayed in a Windows messagebox. 

            You can look at the Random class in C#.

             * For example, in your messagebox, there will be:
            Even numbers: 54
            Smallest number: 0
            Largest number:  993
            Range of numbers: 0 - 993
            */
            

            //declare variables
            int tempnum = 0;
            int smallest = 1000;
            int largest = 0;
            int counter = 0;
            List<int> integerlist = new List<int>();
            Random generator = new Random();
            bool cherry = true;
            //string trash = "0";

            while (cherry == true)
            {
                //get input from user
                Console.Write("\nPress any key to create a list of 100 random integers from 0 to 1000.\n");
                Console.ReadLine();

                //store random numbers 100 times
                for (int x = 0; x < 100; x++)
                {
                    //randomly generate a number from 0 to 1000
                    tempnum = generator.Next(1000);

                    //store number in list
                    integerlist.Add(tempnum);

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

                    //count even numbers
                    if (tempnum % 2 == 0)
                    {
                        counter++;
                    }

                }

                //Display (in Message Box)
                //MessageBox.Show(Text, Title Bar, Buttons....);
                MessageBox.Show("The range of numbers runs\n from the Smallest: " + smallest + "\n to the Largest: " + largest + "\n and contains " + counter + " Even Numbers", "Results", MessageBoxButtons.OK);


                //prompt user for additional run
                cherry = SpecificReturnMenu();

                //reset list for next run
                for (int x = (integerlist.Count-1); x > -1 ; x--)
                {
                    integerlist.RemoveAt(x);
                }
                //reset variables
                counter = 0;
                smallest = 1000;
                largest = 0;
                

            }

            


        }

        static void TriangleDilemma()
        {
            /* 
            2. Prompt the user for the length of three line segments as integers. If the three lines could form a 
            triangle, print the integers and a message indicating they form a triangle. Recall that the sum of 
            the lengths of any two sides must be greater than the length of the third side to form a triangle. 
            For example, 20, 5, and 10 cannot be the lengths of the sides of a triangle because 5 + 10 is not 
            greater than 20. For line segments that do not form a triangle, print the integers and an 
            appropriate message indicating no triangle can be created. Use a state-controlled loop to allow 
            users to enter as many different combinations as they want. 
             
            For example:
            *** You can be prompted to enter 3 integers which could possibly
            *** be the respective lengths of the three sides of a triangle.
             
            Please enter the first integer: 20
            Please enter the second integer: 1
            Please enter the third integer: 3
             
               * The numbers 20 , 1, and 3 CANNOT represent sides of the same triangle. *
             
            Would you like to try 3 numbers?
              Please enter 'y' for yes or another letter for no: y
             
            Please enter the first integer: 10
            Please enter the second integer: 6
            Please enter the third integer: 8
             
             * The numbers 10 , 6, and 8 CAN represent sides of the same triangle. *
            
             * Would you like to try 3 numbers?
              Please enter 'y' for yes or another letter for no: n
            */

            //declare variables
            bool cherry = true;
            string[] trash = new string[3];

            Console.Write("\nWe're going to see if three lines can make a triangle.\n");

            while (cherry == true)
            {
                //spacing
                Console.Write("\n");

                //prompt user to input 3 numbers
                Console.Write("Please enter 3 positive values for the lines desired.\n");
                while (Convert.ToInt32(trash[0]) < 1)
                {
                    Console.Write("Line 1:");
                    trash[0] = Console.ReadLine();
                }
                while (Convert.ToInt32(trash[1]) < 1)
                {
                    Console.Write("Line 2:");
                    trash[1] = Console.ReadLine();
                }
                while (Convert.ToInt32(trash[2]) < 1)
                {
                    Console.Write("Line 3:");
                    trash[2] = Console.ReadLine();
                }

                //output results
                //* The numbers 20 , 1, and 3 CANNOT represent sides of the same triangle. *
                Console.Write("\nThe numbers {0}, {1}, and {2} ", trash[0], trash[1], trash[2]);

                //check to see if they will form a triangle (a+b > c)
                if( (Convert.ToInt32(trash[0])+Convert.ToInt32(trash[1]) > Convert.ToInt32(trash[2])))
                {
                    Console.Write("ARE ABLE");
                }
                else
                {
                    Console.Write("ARE UNABLE");
                }

                Console.Write(" to form sides of the same triangle.\n");

                //prompt user for additional run
                cherry = SpecificReturnMenu();

                //reset variables
                for (int x = 0; x < trash.Length; x++)
                {
                    trash[x] = "0";
                }
                
            }
        }

        static void MultiplicationTable()
        {
            /*
          3. Write a program that produces a multiplication table. Allow the user to input the first and last  
                        base values for the multiplication table. Display a column in the table beginning with the first  
                        base inputted value. The last column should be the ending base value entered. Produce 15 rows of 
                        computations. The first row should be for 1 times the beginning base, 1 times the (beginning base 
                        value + 1), through 1 times the ending base value. The last row should be for 15 times the 
                        beginning base, 15 times the (beginning base value + 1), through 15 times the ending base value. 
                        Base values can range from 2 through 8. Display a formatted multiplication table. 
                    
            For example:
            ***   You will be prompted to enter two integers.     ***
            ***   A multiplication table will be displayed       ***
            ***   based on these two base values entered.        ***
            ***   Base values multiplied from 1 through 15.       ***
            ***   Enter as many sets of 2 bases as you like.     ***
             
            Please enter the first base value, 2 - 8 :  2
             
            Please enter the last base value <= 8 :  5
             
             
             
                    X       2       3       4       5
                    1       2       3       4       5
                    2       4       6       8       10
                    3       6       9       12      15
                    4       8       12      16      20
                    5       10      15      20      25
                    6       12      18      24      30
                    7       14      21      28      35
                    8       16      24      32      40
                    9       18      27      36      45
                    10      20      30      40      50
                    11      22      33      44      55
                    12      24      36      48      60
                    13      26      39      52      65
                    14      28      42      56      70
                    15      30      45      60      75
             
            ***   Would you like to enter two base values?
            ***   Please enter 'y' for yes or any other letter for no: n
            
            */

            //declare variables
            bool cherry = true;
            string[] trash = new string[2];
            int[,] table = new int[8, 16];

            Console.Write("\nWe're going to create a multiplication table.\n");

            while (cherry == true)
            {
                //spacing
                Console.Write("\n");

                //prompt user to input 3 numbers
                Console.Write("Please enter 2 bases from 2 to 8.\n");
                while (Convert.ToInt32(trash[0]) < 2 || Convert.ToInt32(trash[0]) > 8)
                {
                    Console.Write("Base 1:");
                    trash[0] = Console.ReadLine();
                }

                while (Convert.ToInt32(trash[1]) < 2 || Convert.ToInt32(trash[1]) > 8)
                {
                    Console.Write("Base 2:");
                    trash[1] = Console.ReadLine();
                }
                


                //set up table
                table[0,0] = 0;

                //borders: First Base designated ("Top Row")
                table[1, 0] = 2;

                //following bases: each base is one more than the base before it
                for (int x = table[1,0]; x < 8; x++)
                {
                        table[x, 0] = (table[(x-1),0] + 1);
                }

                //borders: 1 to 15 ("Left Column")
                for (int y = 1; y < 16; y++)
                {
                    table[0, y] = y;
                }

                //inner rows and columns
                for (int y = 1; y < 16; y++)
                {
                    for (int x = 1; x < 8; x++)
                    {
                        table[x, y] = ( table[0, y] * table[x, 0]);
                    }
                }

                //spacing
                Console.Write("\n");

                //output results (Multiplication Table)
                //walk through the array
                for (int y = 0; y < 16; y++)
                {
                    //display first column (border)
                    Console.Write(table[0, y] + "\t");

                    for (int x = (Convert.ToInt32(trash[0]) - 1); x < Convert.ToInt32(trash[1]); x++)
                    {
                        Console.Write(table[x, y] + "\t");
                    }
                    Console.Write("\n");
                }
                
                
                //prompt user for additional run
                cherry = SpecificReturnMenu();

                //reset variables
                for (int x = 0; x < trash.Length; x++)
                {
                    trash[x] = "0";
                }

                


            }

        }

        





    }
}
