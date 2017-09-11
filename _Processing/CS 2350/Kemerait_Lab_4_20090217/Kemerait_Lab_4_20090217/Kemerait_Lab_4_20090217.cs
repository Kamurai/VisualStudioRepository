//Kemerait, Christopher A
//CS 2350, Spring 09
//20090217
//Lab 4


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_4_20090217
{
    class Kemerait_Lab_4_20090217
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //acutal options + 1
            int options = 5;

            //Containment Loop with limit = Options
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu();

                //if else options based on Number of Options
                //option 1 is chosen by the user
                if (trip.Equals(1))
                {
                    //1) Write a program to output max and min of the input (a group of data, either integers or doubles) 
                    OutputMaxAndMin();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                //if not, if option 2 is chosen by the user
                else if (trip.Equals(2))
                {
                    //2) Write a program to calculate the circumference of a circle. Declare a named constant for pi with a value of 3.14159. Display the result with 3 digits on the right side of the decimal point.
                    FindCircumference();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                //if not, if option 3 is chosen by the user
                else if (trip.Equals(3))
                {
                    //3) Write a program to print the maximum numbers of quarters, dimes, nickels, and pennies that a customer should get back as change. This program will first read the amount of cents for the value to be converted.
                    //For example, if the user inputs 34 as the amount of cents, your programs should output 1 quarter, 1 nickel, and 4 pennies.
                    CoinReturn();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                //if not, if option 4 is chose by the user
                else if (trip.Equals(4))
                {
                    /*4) Write a program to determine which way is most economic to purchase the carpets. Suppose the customer wants to purchase carpets for 3 bed rooms, 1 living room, and 1 sun room. The sizes of the rooms are provided by the customer in feet and inches (For example: length: 12 feet 3 inches, width: 14 feet 4 inches). 
                    There are two carpet options:
                        Berber (best) @ $27.95 per square yard
                        Pile (economy) @ 15.95 per square yard
                    And customer wants to use Berber for 2 of the 5 rooms, and Pile for 3 of the 5 rooms.
                    */
                    CarpetShopping();

                    //prompt user for return menu
                    trip = ReturnMenu(options);
                }
                //if not, if a number other than an option is chose by user
                else if (trip > options - 1 || trip < 1)
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
             
            1) Write a program to output max and min of the input (a group of data, either integers or doubles) 

            2) Write a program to calculate the circumference of a circle. Declare a named constant for pi with a value of 3.14159. Display the result with 3 digits on the right side of the decimal point.

            3) Write a program to print the maximum numbers of quarters, dimes, nickels, and pennies that a customer should get back as change. This program will first read the amount of cents for the value to be converted.
            For example, if the user inputs 34 as the amount of cents, your programs should output 1 quarter, 1 nickel, and 4 pennies.

            4) Write a program to determine which way is most economic to purchase the carpets. Suppose the customer wants to purchase carpets for 3 bed rooms, 1 living room, and 1 sun room. The sizes of the rooms are provided by the customer in feet and inches (For example: length: 12 feet 3 inches, width: 14 feet 4 inches). 
            There are two carpet options:
                Berber (best) @ $27.95 per square yard
                Pile (economy) @ 15.95 per square yard
            And customer wants to use Berber for 2 of the 5 rooms, and Pile for 3 of the 5 rooms.
            */

            System.Console.Write("We're here to help you do a few things.\n");
            System.Console.Write("What would you like to do?\n");

            //Write a program to output max and min of the input (a group of data, either integers or doubles) 
            System.Console.Write("1) Find a max and min of a group of numbers.\n");

            //Write a program to calculate the circumference of a circle. Declare a named constant for pi with a value of 3.14159. Display the result with 3 digits on the right side of the decimal point.
            System.Console.Write("2) Calculate the circumference of a circle based on its radius.\n");

            //Write a program to print the maximum numbers of quarters, dimes, nickels, and pennies that a customer should get back as change. This program will first read the amount of cents for the value to be converted.
            //For example, if the user inputs 34 as the amount of cents, your programs should output 1 quarter, 1 nickel, and 4 pennies.

            System.Console.Write("3) Determine the coinage available in an amount of change.\n");
            //Write a program to determine which way is most economic to purchase the carpets. Suppose the customer wants to purchase carpets for 3 bed rooms, 1 living room, and 1 sun room. The sizes of the rooms are provided by the customer in feet and inches (For example: length: 12 feet 3 inches, width: 14 feet 4 inches). 
            /*There are two carpet options:
                Berber (best) @ $27.95 per square yard
                Pile (economy) @ 15.95 per square yard
            And customer wants to use Berber for 2 of the 5 rooms, and Pile for 3 of the 5 rooms.
            */
            System.Console.Write("4) Buy carpet for a number of rooms.\n");

            trash = System.Console.ReadLine();
            trip = int.Parse(trash);
            return trip;
        }

        static int ReturnMenu(int options)
        {
            string trash = "0";
            int trip = 0;
            bool cherry = true;

            //containment loop with limit = 3
            while (trip < 3)
            {
                //containment loop for valid input
                while (cherry == true)
                {
                    System.Console.Write("\n\nWould you like to perform another action?\n");
                    System.Console.Write("1) Yes.\n");
                    System.Console.Write("2) I'm done for now.\n");
                    trash = System.Console.ReadLine();

                    //if user selects a valid input,
                    if (trash.Equals("1") || trash.Equals("2"))
                    {
                        //then allow loop to stop
                        cherry = false;
                    }
                    //if not,
                    else
                    {
                        //prompt user to enter input again
                        System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                    }
                }
                trip = int.Parse(trash);
                System.Console.Write("\n\n");

                //if user selected 2
                if (trip.Equals(2))
                {
                    //then allow loop to stop by making trip > than the limit of the loop
                    //and allow loop in Main to stop by making trip > than the limit of the loop in Main
                    trip = options;
                }
                //if user selected 1
                else if (trip.Equals(1))
                {
                    //then allow loop to stop by making trip > than the limit of the loop
                    trip = 3;
                }
                //if not
                else
                {
                    //then cause program to loop, requesting another input
                    trip = 0;
                }
            }

            return trip;
        }

        static void OutputMaxAndMin()
        {
            //1) Write a program to output max and min of the input
            //   (a group of data, either integers or doubles) 

            //declare variables
            double input1 = 0;
            double input2 = 0;
            int max = 0;
            int min = 0;
            int limit = 2;
            string trash = "0";
            double[] numbers;

            //get input from user
            System.Console.Write("\nOut of how many numbers would you like to determine a Max and Min?\n");
            trash = System.Console.ReadLine();
            limit = int.Parse(trash);

            //declare array
            numbers = new double[limit];

            //spacing
            System.Console.Write("\n\n");

            //walkt through array to input numbers
            for (int x = 0; x < limit; x++)
            {
                //get input from user
                System.Console.Write("\nPlease input a number.\n");
                trash = System.Console.ReadLine();
                //assign new number to current element of array
                numbers[x] = double.Parse(trash);
            }

            //spacing
            System.Console.Write("\n");
            
            //Display
            System.Console.Write("The set of numbers:\n");

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //output number
                System.Console.Write("Number" + (x + 1) + ": " + numbers[x] + ".\n");
            }

            //spacing
            System.Console.Write("\n");

            //Determine Max
            max = FindMax(numbers);
            input1 = numbers[max];
            
            /*
            for (int x = 0; x < limit; x++)
            {
                if (numbers[x] > input1)
                {
                    //if this is the last number
                    if ((x + 1) == limit)
                    {
                        input1 = numbers[x];
                    }
                    //if this is not the last number
                    else
                    {
                        //if first number is less than next number
                        if (numbers[x] > numbers[(x + 1)])
                        {
                            input1 = numbers[x];
                        }
                        //if first number is equal to or greater than next number
                        else
                        {
                            input1 = numbers[(x + 1)];
                        }
                    }
                }
            }
            */
            
            //Determine Min
            min = FindMin(numbers);
            input2 = numbers[min];
            /*
            for (int x = 0; x < limit; x++)
            {
                if (numbers[x] < input2)
                {
                    //if this is the last number
                    if ((x + 1) == limit)
                    {
                        input2 = numbers[x];
                    }
                    //if this is not the last number
                    else
                    {
                        //if first number is greater than next number
                        if (numbers[x] < numbers[(x + 1)])
                        {
                            input2 = numbers[x];
                        }
                        //if first number is equal to or less than next number
                        else
                        {
                            input2 = numbers[(x + 1)];
                        }
                    }
                }
            }
            */
            //Output Max
            System.Console.Write("The Max of the above set is: {0:0}.\n", input1);
            
            //Output Min
            System.Console.Write("The Min of the above set is: {0:0}.\n", input2);

        }

        static void FindCircumference()
        {
            //2) Write a program to calculate the circumference of a circle.
            //Declare a named constant for pi with a value of 3.14159.
            //Display the result with 3 digits on the right side of the decimal point.

            //declare variables
            const double aboutpi = 3.14159;
            double input1 = 0;
            double input2 = 0;
            string trash = "0";
            
            //get input from user
            System.Console.Write("\nWhat is the radius of the circle with which you need a circumference?\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);
            
            //spacing
            System.Console.Write("\n\n");

            //Calculations
            input2 = 2 * aboutpi * input1;
            
            //Output average
            System.Console.Write("The circumference of a circle with radius {0:f3} is: {1:f3}.\n", input1, input2);
        }

        static void CoinReturn()
        {
            //3) Write a program to print the maximum numbers of quarters, dimes, nickels, and pennies
            //that a customer should get back as change.
            //This program will first read the amount of cents for the value to be converted.
            
            //For example, if the user inputs 34 as the amount of cents, 
            //your programs should output 1 quarter, 1 nickel, and 4 pennies.

            //declare variables
            int input1 = 0;
            int input2 = 0;
            int limit = 5;
            string trash = "0";
            int[] coins;
            coins = new int[limit];
            string[] names;
            names = new string[limit];

            //assign values to names
            names[0] = "Dollars";
            names[1] = "Quarters";
            names[2] = "Dimes";
            names[3] = "Nickels";
            names[4] = "Pennies";

            //get input from user
            System.Console.Write("\nEnter the amount of cents you would like to sort into nominations of money.\n");
            trash = System.Console.ReadLine();
            input1 = int.Parse(trash);
            input2 = input1;
            
            //spacing
            System.Console.Write("\n\n");

            //Calculations

            //Find number of Dollars avaiable
                coins[0] = input1 / 100;
                input1 = input1 % 100;
            //Find number of Quarters avaiable
                coins[1] = input1 / 25;
                input1 = input1 % 25;
            //Find number of Dimes avaiable
                coins[2] = input1 / 10;
                input1 = input1 % 10;
            //Find number of Nickels avaiable
                coins[3] = input1 / 5;
                input1 = input1 % 5;
            //Find number of Pennies avaiable
                coins[4] = input1 / 1;
            
            //Output amount of cents
            System.Console.Write("The nominations for the amount of {0:0} cents is as follows:.\n", input2);
            
            //spacing
            System.Console.Write("\n");

            //Output Amounts of nominations
            for (int x = 0; x < limit; x++)
            {
                //output exam
                System.Console.Write(names[x] + ":   \t" + coins[x] + ".\n");
            }

        }

        static void CarpetShopping()
        {
            /*
            4) Write a program to determine which way is most economic to purchase the carpets.
            Suppose the customer wants to purchase carpets for 3 bed rooms, 1 living room, and 1 sun room. 
            The sizes of the rooms are provided by the customer in feet and inches
            
            (For example: length: 12 feet 3 inches, width: 14 feet 4 inches). 
            
            There are two carpet options:
                Berber (best) @ $27.95 per square yard
                Pile (economy) @ 15.95 per square yard
             
             12 inches per foot, 3 feet per yard, 36 inches per yard
             
             1 sq ft = 12 inches * 12 inches = 144 sq inches
             
             1 sq yd = 3 feet * 3 feet = 36 inches * 36 inches = 1296 sq inches
             * 
             * 
            
            And customer wants to use Berber for 2 of the 5 rooms, and Pile for 3 of the 5 rooms.
            */

            //declare variables
            //temporaries
            double input1 = 0;
            double input2 = 0;
            string trash = "0";

            //number of carpets of type
            int berbers = 1;
            int piles = 1;

            //size of arrays
            int limit = 1;

            //declare arrays

            //Names of carpet
            string[] names;
            names = new string[2];
            names[0] = "Berber";
            names[1] = "Pile";

            //Prices of like carpet
            double[] prices;
            prices = new double[2];
            prices[0] = 27.95;
            prices[1] = 15.95;

            //learn how to do multi-dimensional Arrays to simplify this mess

            //Attributes of rooms
            //Length
            double[] roomlength;
            //Width
            double[] roomwidth;
            //Total price of room base on dimensions by roomnameprices
            double[] roomprices;
            //Length by Width
            double[] roomdimensions;
            //Which type of carpet is assigned to the room
            string[] roomnames;
            //The rate being charged for assigned carpet
            double[] roomnameprices;

            
            //get input from user
            System.Console.Write("\nHow man rooms are you buying Berber carpet for?\n");
            trash = System.Console.ReadLine();
            berbers = int.Parse(trash);

            System.Console.Write("\nHow man rooms are you buying Pile carpet for?\n");
            trash = System.Console.ReadLine();
            piles = int.Parse(trash);

            //size of the array = number of rooms to be carpetted with berber + that with pile
            limit = (berbers + piles);

            //declare assign limit to arrays
            roomlength = new double[limit];
            roomwidth = new double[limit];
            roomprices = new double[limit];
            roomdimensions = new double[limit];
            roomnames = new string[limit];
            roomnameprices = new double[limit];


            double[,,,,,] r = new double[limit, limit, limit, limit, limit, limit];

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //assign initial values to arrays
                roomlength[x] = 0;
                roomwidth[x] = 0;
                roomprices[x] = 0;
                roomdimensions[x] = 0;
                roomnames[x] = "0";
                roomnameprices[x] = 0;
            }

            //spacing
            System.Console.Write("\n\n");

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //get room width from user
                System.Console.Write("\nPlease input a room width for room {0:0}.\n", (x + 1));
                System.Console.Write("\nFeet?\n");
                trash = System.Console.ReadLine();
                input1 = double.Parse(trash);
                System.Console.Write("\nInches?\n");
                trash = System.Console.ReadLine();
                input2 = double.Parse(trash);

                //width = inches + feet*12
                roomwidth[x] = input2 + (12 * input1);

                //get room length from user
                System.Console.Write("\nPlease input a room length for room {0:0}.\n", (x + 1));
                System.Console.Write("\nFeet?\n");
                trash = System.Console.ReadLine();
                input1 = double.Parse(trash);
                System.Console.Write("\nInches?\n");
                trash = System.Console.ReadLine();
                input2 = double.Parse(trash);

                //length = inches + feet*12
                roomlength[x] = input2 + (12 * input1);

                //obtain room dimensions (= wdith * length)
                roomdimensions[x] = roomwidth[x] * roomlength[x];

            }

            //use room dimensions to find minimum for berbers rooms or maximum for piles rooms

            //if berbers < piles then find minimums
            if (berbers <= piles)
            {
                //Determine Min
                input1 = 0;
                input2 = 0;

                //Assign berbers rooms to Berber
                for (int y = 0; y < berbers; y++)
                {
                    //if the first room is already designated for Berber
                    if(roomnames[0].Equals(names[0]))
                    {
                        //Look for the next unassigned room
                        for (int x = 0; x < limit; x++)
                        {
                            //if a room is already assigned to Berber, skip it
                            if(roomnames[x].Equals(names[0]))
                            {
                            }
                            //if not, then make it the temporary minimum for comparision
                            else
                            {
                                input2 = roomdimensions[x];
                                input1 = x;
                                x = limit;
                            }
                        }
                    }
                    //if not, then make the first room the temporary minimum for comparision
                    else
                    {
                        input2 = roomdimensions[0];
                        input1 = 0;
                    }

                    //walk through array comparing
                    for (int x = 0; x < limit; x++)
                    {
                        //if room has already designated for Berber, don't compare it
                        if (roomnames[x].Equals(names[0]))
                        {
                        }
                        else
                        {
                            if (roomdimensions[x] < input2)
                            {
                                //if this is the last number
                                if ((x + 1) == limit)
                                {
                                    input2 = roomdimensions[x];
                                    input1 = x;
                                }
                                //if this is not the last number
                                else
                                {
                                    input2 = roomdimensions[x];
                                    input1 = x;
                                    
                                }
                            }
                        }

                    }
                    //assign current room, determine to be the smallest, as berber
                    roomnames[Convert.ToInt32(input1)] = names[0];
                    //assign current room to respective price per sq yd
                    roomnameprices[Convert.ToInt32(input1)] = prices[0];
                }

                //walk through array
                for (int x = 0; x < limit; x++)
                {
                    //if current room is assigned as berber,
                    if(roomnames[x].Equals(names[0]))
                    {
                        //then do nothing
                    }
                    //if not,
                    else
                    {
                        //assing current room to pile
                        roomnames[x] = names[1];
                        //assign current room to respective price per sq yd
                        roomnameprices[x] = prices[1];
                    }
                }


            }
            //else if berbers > piles then find maximums
            else if (berbers > piles)
            {
                
                //Determine Max
                input1 = 0;
                input2 = 0;



                //Assign piles rooms to Pile
                for (int y = 0; y < piles; y++)
                {
                    //if the first room is already designated for Pile
                    if (roomnames[0].Equals(names[1]))
                    {
                        //Look for the next unassigned room
                        for (int x = 0; x < limit; x++)
                        {
                            //if a room is already assigned to Pile, skip it
                            if (roomnames[x].Equals(names[1]))
                            {
                            }
                            //if not, then make it the temporary minimum for comparision
                            else
                            {
                                input2 = roomdimensions[x];
                                input1 = x;
                                x = limit;
                            }
                        }
                    }
                    //if not, then make the first room the temporary minimum for comparision
                    else
                    {
                        input2 = roomdimensions[0];
                        input1 = 0;
                    }

                    //walk through array comparing
                    for (int x = 0; x < limit; x++)
                    {
                        //if room has already designated for Pile, don't compare it
                        if (roomnames[x].Equals(names[1]))
                        {
                        }
                        else
                        {
                            if (roomdimensions[x] > input2)
                            {
                                //if this is the last number
                                if ((x + 1) == limit)
                                {
                                    input2 = roomdimensions[x];
                                    input1 = x;
                                }
                                //if this is not the last number
                                else
                                {
                                    input2 = roomdimensions[x];
                                    input1 = x;
                                }
                            }
                        }

                    }
                    roomnames[Convert.ToInt32(input1)] = names[1];
                    roomnameprices[Convert.ToInt32(input1)] = prices[1];
                }

                
                for (int x = 0; x < limit; x++)
                {
                    if (roomnames[x].Equals(names[1]))
                    {
                    }
                    else
                    {
                        roomnames[x] = names[0];
                        roomnameprices[x] = prices[0];

                    }
                }
                


            }

            //obtain room prices
            for(int x = 0; x < limit; x++)
            {
                //Room price = dimensions by roomnameprice
                roomprices[x] = (roomdimensions[x]/1296) * roomnameprices[x];
            }


            //spacing
            System.Console.Write("\n");


            for (int x = 0; x < limit; x++)
            {
                //Output: The room with size "x" by "y" should have "name" carpet at "price" per square yard for "square yardage" square yards, yielding a total price of: "total price"
                System.Console.Write("The room with size {0:f2} feet by {1:f2} feet should have {2:0} carpet\nat {3:c2} per square yard for {4:f2} square yards,\nyielding a total price of: {5:c2}.\n\n", (roomwidth[x]/12), (roomlength[x]/12), roomnames[x], roomnameprices[x], (roomdimensions[x]/1296), roomprices[x]);
            }

            //spacing
            System.Console.Write("\n");

            //sum
            input1 = 0;
            input2 = 0;
            for (int x = 0; x < limit; x++)
            {
                input1 = input1 + (roomdimensions[x]/1296);
                input2 = input2 + roomprices[x];
            }
            //output totals
            System.Console.Write("The total square yardage being carpetted is {0:f2} square yards\nat a total price of {1:c2}.\n", input1, input2);




        }

        static int FindMax(double[] numbers)
        {
            double input1 = 0;
            int max = 0;
            int limit = numbers.Length;

            //Determine Max
            input1 = numbers[0];

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //if current number > current max,
                if (numbers[x] > input1)
                {
                    //then see
                    //if this is the last number,
                    if ((x + 1) == limit)
                    {
                        //then current max = current number
                        input1 = numbers[x];
                        //remember index of the new current max
                        max = x;
                    }
                    //if this is not the last number
                    else
                    {
                        //then see
                        //if current number is greater than the following number,
                        if (numbers[x] > numbers[(x + 1)])
                        {
                            //then current max = current number
                            input1 = numbers[x];
                            //remmber index of new current max
                            max = x;
                        }
                        //if current number is equal to or less than the following number, 
                        else
                        {
                            //then current max = the following number
                            input1 = numbers[(x + 1)];
                            //remember index of new current max
                            max = x;
                        }
                    }
                }
            }

            return max;

        }


        static int FindMin(double[] numbers)
        {
            //declare variables
            double input2 = 0;
            int minindex = 0;
            int limit = numbers.Length;

            //Determine Min
            input2 = numbers[0];

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //if current number < current min,
                if (numbers[x] < input2)
                {
                    //then see
                    //if this is the last number
                    if ((x + 1) == limit)
                    {
                        //current min = current number
                        input2 = numbers[x];
                        //remember index of new current min
                        minindex = x;
                    }
                    //if this is not the last number,
                    else
                    {
                        //then see
                        //if first number is less than next number,
                        if (numbers[x] < numbers[(x + 1)])
                        {
                            //current min = current number
                            input2 = numbers[x];
                            //remember index of new current min
                            minindex = x;
                        }
                        //if not, the first number is equal to or greater than next number
                        else
                        {
                            //then the current min = the following number
                            input2 = numbers[(x + 1)];
                            //remember index of new current min
                            minindex = x;
                        }
                    }
                }
            }

            return minindex;
        }






    }
}
