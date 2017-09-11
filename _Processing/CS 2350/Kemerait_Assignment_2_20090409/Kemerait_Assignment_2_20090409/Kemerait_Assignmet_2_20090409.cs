using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Assignment_2_20090409
{
    class Kemerait_Assignmet_2_20090409
    {
        static void Main(string[] args)
        {
            
            int trip = 0;
            //Actual options + 1;
            int options = 2;

            //Containment Loop with limit = options
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip.Equals(1))
                {
                    /*
                    1. User inputs a string

                    2. program outputs the number of times each character appears in this line
             
                        (3.) declaring, whether each character counted is:
                            a) a letter (uppercase/lowercase)
                            b) a decimal digit

 
                    */

                    /*
                    For example:

                    Input: I am a student in KSU.
            
                    Output: 
                    character I appears once, and it is a letter, uppercase
                    character a appears twice, and it is a letter, lowercase
                    character m appears once, and it is a letter, lowercase
                    character s appears once, and it is a letter, lowercase
                    etc
                    character . appears once
                    */

                    CountEachCharacter();

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
            int trip;

            /*
                    1. User inputs a string

                    2. program outputs the number of times each character appears in this line
             
                        (3.) declaring, whether each character counted is:
                            a) a letter (uppercase/lowercase)
                            b) a decimal digit

 
                    */

            /*
            For example:

            Input: I am a student in KSU.
            
            Output: 
            character I appears once, and it is a letter, uppercase
            character a appears twice, and it is a letter, lowercase
            character m appears once, and it is a letter, lowercase
            character s appears once, and it is a letter, lowercase
            etc
            character . appears once
            */

            Console.Write("We're here to help you count characters in a string.\n");

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

        static bool AnalyzeString(string trash)
        {
            //declare variables
            bool cherry = false;
            char tempchar = '0';

            //check characters in string and identify as a number
            for (int x = 0; x < trash.Length; x++)
            {
                tempchar = Convert.ToChar(trash.Substring(x, 1));

                //if there are no violations
                if (cherry == false)
                {
                    cherry = NumberCheck(tempchar);
                }

                //escape
                if (cherry == true)
                {
                    return cherry;
                }
            }

            return cherry;

            /*
             * Example of use of this method
             * while (cherry == true)
            {
                System.Console.Write("Please enter the height of the cylinder.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;
             * */

        }

        static bool NumberCheck(char tempchar)
        {
            bool cherry = false;

            //check for type
            //if a number
            if (tempchar < 48 || tempchar > 57)
            {
                //violation
                cherry = true;
                return cherry;
            }


            return cherry;
        }

        static void CountEachCharacter()
        {
            /*
                    1. User inputs a string

                    2. program outputs the number of times each character appears in this line
             
                        (3.) declaring, whether each character counted is:
                            a) a letter (uppercase/lowercase)
                            b) a decimal digit

 
                    */

            /*
            For example:

            Input: I am a student in KSU.
            
            Output: 
            character I appears once, and it is a letter, uppercase
            character a appears twice, and it is a letter, lowercase
            character m appears once, and it is a letter, lowercase
            character s appears once, and it is a letter, lowercase
            etc
            character . appears once
            */

            //declare variables
            //int temp = 0;
            string trash = "0";
            bool cherry = true;
            char tempchar = '0';
            List<Record> characterlist = new List<Record>();


            //get input from user
            Console.Write("\nPlease input some words from which you would like to count characters.\n");
            trash = Console.ReadLine();

            // store first character of string
            tempchar = Convert.ToChar(trash.Substring(0, 1));

            //add the first character to list
            characterlist.Add(CheckType(tempchar));
            
            //take characters in string and add to list, and increase count
            for (int x = 1; x < trash.Length; x++)
            {
                tempchar = Convert.ToChar(trash.Substring(x, 1));
        
                //check current character against every character in the list
                for (int y = 0; y < characterlist.Count; y++)
                {
                    //if characters already exists in list, then just increase count
                    if (tempchar == characterlist[y].GetCharacter())
                    {
                        characterlist[y].IncreaseCount();
                        cherry = false;
                    }
                    
                }
                if (cherry == true)
                {
                    characterlist.Add(CheckType(tempchar));
                }
                cherry = true;
            }

            //spacing
            Console.Write("\n\n");

            //Display
            Console.Write("The words in your input:\n\n");
            Console.Write(trash + "\n");

            //spacing
            Console.Write("\n\n");

            //walk through array
            for (int x = 0; x < characterlist.Count; x++)
            {
                //then output words[x] and count[x]
                System.Console.Write("Character {0} \t\tOccurs: {1} and is a {2}\n", characterlist[x].GetCharacter(), characterlist[x].GetCount(), characterlist[x].GetType());
            }


        }

        static Record CheckType(char tempchar)
        {
            
            //check for type (letter, digit, punctuation or space
            //if a space
            if (tempchar == ' ')
            {
                Record temprec = new Record(tempchar, 1, "Space");
                return temprec;
            }
            // if a upper case letter
            else if (tempchar >= 65 && tempchar <= 90)
            {
                Record temprec = new Record(tempchar, 1, "Upper Case Letter");
                return temprec;
            }
            // if a lower case letter
            else if (tempchar >= 97 && tempchar <= 122)
            {
                Record temprec = new Record(tempchar, 1, "Lower Case Letter");
                return temprec;
            }
            //if a number
            else if (tempchar >= 48 && tempchar <= 57)
            {
                Record temprec = new Record(tempchar, 1, "Number");
                return temprec;
            }
            //if nothing above, its a punctuation
            else
            {
                Record temprec = new Record(tempchar, 1, "Punctuation");
                return temprec;
            }

            
        }

        private class Record
        {
            private char character;
            private int count;
            private string type;

            public Record(char ch, int ct, string tp)
            {
                character = ch;
                count = ct;
                type = tp;
            }

            public char GetCharacter()
            {
                return character;
            }

            public int GetCount()
            {
                return count;
            }

            public void IncreaseCount()
            {
                count++;
            }

            public void DecreaseCount()
            {
                count--;
            }

            public string GetType()
            {
                return type;
            }

        }






    }
}
