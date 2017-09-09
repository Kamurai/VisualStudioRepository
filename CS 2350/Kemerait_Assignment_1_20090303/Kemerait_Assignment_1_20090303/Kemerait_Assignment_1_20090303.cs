//Kemerait, Christopher A
//CS 2350, Spring 2009
//20090303
//Assignment 1


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Assignment_1_20090303
{
    class Kemerait_Assignment_1_20090303
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
                if (trip.Equals(1))
                {
                    /* 
                    1. count how many times each distinct word appears in its input. 
                    If the user inputs: today is really really really cold 
                    The output: today appears once, is appears once, really appears 3 times, and cold appears once.
                    */
                    CountEachWord();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    /*
                    2. report the length of the longest and shortest words in its input. 
                    If the user inputs: today is really cold
                    The output: The length of the longest word is 6, and the length of the shortest word is 2 
                    */
                    ReportExtremeWordLengths();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(3))
                {
                    /*
                    3. output the words in the input in reversed order. 
                    If the user inputs: today is really cold
                    The output: cold really is today
                    */
                    ReverseString();

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
            1. count how many times each distinct word appears in its input. 
                If the user inputs: today is really really really cold 
                The output: today appears once, is appears once, really appears 3 times, and cold appears once.
            */
 
            /*
            2. report the length of the longest and shortest words in its input. 
            If the user inputs: today is really cold
            The output: The length of the longest word is 6, and the length of the shortest word is 2 
            */

            /*
            3. output the words in the input in reversed order. 
            If the user inputs: today is really cold
            The output: cold really is today
            */

            //containment loop for valid input
            while (cherry == true)
            {
                System.Console.Write("We're here to help you do a few things.\n");
                System.Console.Write("What would you like to do?\n");
                /* 
                1. count how many times each distinct word appears in its input. 
                    If the user inputs: today is really really really cold 
                    The output: today appears once, is appears once, really appears 3 times, and cold appears once.
                */
                System.Console.Write("1) Count the number of times words appear in your input.\n");
                /*
                2. report the length of the longest and shortest words in its input. 
                If the user inputs: today is really cold
                The output: The length of the longest word is 6, and the length of the shortest word is 2 
                */
                System.Console.Write("2) Find the length of the shortest and longest words in your input.\n");
                /*
                3. output the words in the input in reversed order. 
                If the user inputs: today is really cold
                The output: cold really is today
                */
                System.Console.Write("3) Reverse the order of appearance in your input.\n");

                trash = System.Console.ReadLine();
                //if the user selects a valid option,
                if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3"))
                {
                    //then allow loop to stop
                    cherry = false;
                }
                //if not,
                else
                {
                    //then prompt user to enter input again
                    System.Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                }
            }
            //return trip's value to Main
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

        static void CountEachWord()
        {
            /* 
            1. count how many times each distinct word appears in its input. 
                If the user inputs: today is really really really cold 
                The output: today appears once, is appears once, really appears 3 times, and cold appears once.
            */
            
            //declare variables
            int limit = 0;
            string trash = "0";
            bool cherry = true;
            int[] count;
            

            //get input from user
            System.Console.Write("\nPlease input some words from which you would like to count.\n");
            trash = System.Console.ReadLine();
            
            //count number of words in string
            string[] words = trash.Split(' ', ',', '.', ':', '?' ,'!' ,';', '(', ')' ,'\t', '\n', '"');

            //limit = count of trash;
            limit = words.Count();
            count = new int[limit];
           
            //comparative counting for count[] for repetition
            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //compare each element to all elements
                for (int y = 0; y < limit; y++)
                {
                    if (words[x].Equals(words[y]))
                    {
                        count[x]++;
                    }
                }
            }
            
            
            //spacing
            System.Console.Write("\n\n");

            //Display
            System.Console.Write("The words in your input:\n\n");

            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //reset cherry
                cherry = true;
                //wallk through previously displayed array
                for (int y = 0; y < x; y++)
                {
                    //if current word has appeared previously 
                    if (words[x].Equals(words[y]))
                    {
                        //then mark as "not to output"
                        cherry = false;
                    }
                }
                //if there are no previous instances of this word
                if (cherry == true)
                {
                    //then output words[x] and count[x]
                    System.Console.Write("Word " + (x + 1) + ": " + words[x] + "\t\tOccurs: " + count[x] + ".\n");
                }

            }

            
        }

        static void ReportExtremeWordLengths()
        {
            /*
            2. report the length of the longest and shortest words in its input. 
            If the user inputs: today is really cold
            The output: The length of the longest word is 6, and the length of the shortest word is 2 
            */
            

            //declare variables
            //int input1 = 0;
            int limit = 0;
            int max = 0;
            int min = 0;
            string trash = "0";
            bool cherry = true;
            int[] count;
            
            //get input from user
            System.Console.Write("\nPlease input some words.\n");
            System.Console.Write("From these, we will determine a shortest and a longest word.\n");
            trash = System.Console.ReadLine();

            //count number of words in string
            string[] words = trash.Split(' ', ',', '.', ':', '?', '!', ';', '(', ')', '\t', '\n', '"');

            //limit = count of trash;
            limit = words.Length;
            count = new int[limit];

            //counting length of each words[] to determine count[]
            for (int x = 0; x < limit; x++)
            {
                System.Console.Write(words[x] + "\n");
                count[x] = words[x].Length;
                System.Console.Write(count[x] + "\n");
            }

            //Determine Max
            max = FindMax(count);
            
            //Determine Min
            min = FindMin(count);
            
            //spacing
            System.Console.Write("\n\n");

            //Display
            System.Console.Write("The words in your input:\n\n");

            //Operations
            //walk through array
            for (int x = 0; x < limit; x++)
            {
                //reset cherry
                cherry = true;
                //wallk through previously displayed array
                for (int y = 0; y < x; y++)
                {
                    //if current word has appeared previously 
                    if (words[x].Equals(words[y]))
                    {
                        //then mark not to output
                        cherry = false;
                    }
                }
                //if there are no previous instances of this word
                if (cherry == true)
                {
                    //then output words[x] and count[x]
                    System.Console.Write("Word " + (x + 1) + ": " + words[x] + " \t\tContains: " + count[x] + " letters.\n");
                }

            }
            
            //spacing
            System.Console.Write("\n\n");

            //then output shortest word and count
            System.Console.Write("The shortest word from above is:\n\n");
            System.Console.Write("Word " + (min + 1) + ": " + words[min] + " \t\tContaining: " + count[min] + " letters.\n");

            //spacing
            System.Console.Write("\n");

            //then output longest word and count
            System.Console.Write("The longest word from above is:\n\n");
            System.Console.Write("Word " + (max + 1) + ": " + words[max] + " \t\tContaining: " + count[max] + " letters.\n");

        }

        
        static int FindMax(int[] numbers)
        {
            int input1 = 0;
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
        
        
        static int FindMin(int[] numbers)
        {
            //declare variables
            int input2 = 0;
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
        
        static void ReverseString()
        {
            /*
            3. output the words in the input in reversed order. 
            If the user inputs: today is really cold
            The output: cold really is today
            */
            
            //declare variables
            int limit = 0;
            string trash = "0";
                        
            //get input from user
            System.Console.Write("\nEnter the input of which you would like to reverse the order.\n");
            trash = System.Console.ReadLine();

            //count number of words in string
            //transfer words from trash into words[]
            string[] words = trash.Split(' ', ',', '.', ':', '?', '!', ';', '(', ')', '\t', '\n', '"');
            limit = words.Length;

            //spacing
            System.Console.Write("\n\n");
            
            //Display
            System.Console.Write("The words in your input:\n\n");

            //Output Original string
            System.Console.Write(trash + "\n");

            //spacing
            System.Console.Write("\n\n");

            //Display
            System.Console.Write("The reverse order of the words in your input:\n\n");

            //walk through array
            for (int x = (limit-1); x >= 0; x--)
            {
                //display word[] from greatest to least
                System.Console.Write(words[x] + " ");
            }

            //End line
            System.Console.Write("\n");

        }

        







        






    }
}
