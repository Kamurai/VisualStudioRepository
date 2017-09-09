using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kemerait_Lab_10_20090415
{
    class Kemerait_Lab_10_20090415
    {
        static void Main(string[] args)
        {
            int trip = 0;
            //actual options + 1
            int options = 7;

            //Containment Loop with limit = to < Number of Options + 1
            while (trip < options)
            {
                //prompt user with start menu
                trip = StartMenu(options);

                //if else options based on Number of Options
                if (trip.Equals(1))
                {

                    /*
                        1.  Write a program that computes the area of a circle, rectangle, and cylinder. Display a menu showing the three options. Allow users to input which figure they want to see calculated. Based on the value inputted, prompt for appropriate dimensions and perform the calculations using the following formulas:
                            Area of a circle = pi * radius2
                            Area of a rectangle = length * width
                            Area of a cylinder = pi * radius2  * height

                        Use a state-controlled loop to allow users to input as many times as they want.

 
                        For example:

                        You will be asked to select a figure and then asked to enter its dimensions.
                        The area will then be calculated and displayed.
                     
                        Please select a figure by using the following options:

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

                        Enter your choice here: c

                        Please enter a value for the radius: 3

                        The area of a CIRCLE with your given dimensions is 28.27 units.

                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: y

 

                        You will be asked to select a figure and then asked to enter its dimensions.

                        The area will then be calculated and displayed.

 

                        Please select a figure by using the following options:

 

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

 
                        Enter your choice here: r

 
                        Please enter a value for the length: 3
                        Please enter a value for the width: 4
                    
                        The area of a RECTANGLE with your given dimensions is 12.00 units.

 
                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: n
                        Press any key to continue . . .
                */

                    FindAreaofCircle();

                    //promt user for return menu
                    trip = ReturnMenu(options);
                }
                else if (trip.Equals(2))
                {
                    /*
                        1.  Write a program that computes the area of a circle, rectangle, and cylinder. Display a menu showing the three options. Allow users to input which figure they want to see calculated. Based on the value inputted, prompt for appropriate dimensions and perform the calculations using the following formulas:
                            Area of a circle = pi * radius2
                            Area of a rectangle = length * width
                            Area of a cylinder = pi * radius2  * height

                        Use a state-controlled loop to allow users to input as many times as they want.

 
                        For example:

                        You will be asked to select a figure and then asked to enter its dimensions.
                        The area will then be calculated and displayed.
                     
                        Please select a figure by using the following options:

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

                        Enter your choice here: c

                        Please enter a value for the radius: 3

                        The area of a CIRCLE with your given dimensions is 28.27 units.

                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: y

 

                        You will be asked to select a figure and then asked to enter its dimensions.

                        The area will then be calculated and displayed.

 

                        Please select a figure by using the following options:

 

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

 
                        Enter your choice here: r

 
                        Please enter a value for the length: 3
                        Please enter a value for the width: 4
                    
                        The area of a RECTANGLE with your given dimensions is 12.00 units.

 
                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: n
                        Press any key to continue . . .
                */
                    FindAreaofRectangle();

                    //promt user for return menu
                    trip = ReturnMenu(options);

                }
                else if (trip.Equals(3))
                {
                    /*
                        1.  Write a program that computes the area of a circle, rectangle, and cylinder. Display a menu showing the three options. Allow users to input which figure they want to see calculated. Based on the value inputted, prompt for appropriate dimensions and perform the calculations using the following formulas:
                            Area of a circle = pi * radius2
                            Area of a rectangle = length * width
                            Area of a cylinder = pi * radius2  * height

                        Use a state-controlled loop to allow users to input as many times as they want.

 
                        For example:

                        You will be asked to select a figure and then asked to enter its dimensions.
                        The area will then be calculated and displayed.
                     
                        Please select a figure by using the following options:

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

                        Enter your choice here: c

                        Please enter a value for the radius: 3

                        The area of a CIRCLE with your given dimensions is 28.27 units.

                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: y

 

                        You will be asked to select a figure and then asked to enter its dimensions.

                        The area will then be calculated and displayed.

 

                        Please select a figure by using the following options:

 

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

 
                        Enter your choice here: r

 
                        Please enter a value for the length: 3
                        Please enter a value for the width: 4
                    
                        The area of a RECTANGLE with your given dimensions is 12.00 units.

 
                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: n
                        Press any key to continue . . .
                */
                    FindSurfaceAreaofCylinder();

                    //promt user for return menu
                    trip = ReturnMenu(options);

                }
                else if (trip.Equals(4))
                {
                    /*
 

                2.  Create an application with four classes.
                    Three of the classes should contain data and behavior characteristics
                    for circle, rectangle, and cylinder.
                    The fourth class should allow the user to input a figure type from
                    a menu of options. Prompt for appropriate values based on the
                    inputted figure type, instantiate an object of the type entered,
                    and display characteristics about the object.

                    Area of a circle = pi * radius2
                    Area of a rectangle = length * width
                    Area of a cylinder = 2 * pi * radius  * height

                    Use a state-controlled loop to allow users to input as many times as they want. See the output example of part 1.


                */

                    UseMenuClass();

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
            string trash = "0";
            int trip;
            bool cherry = true;

            while (cherry == true)
            {
                System.Console.Write("We're here to help you do a few things.\n");
                System.Console.Write("What would you like to do?\n");
                /*
                        1.  Write a program that computes the area of a circle, rectangle, and cylinder.
                            Display a menu showing the three options. 
                            Allow users to input which figure they want to see calculated.
                            Based on the value inputted, prompt for appropriate dimensions and perform the calculations using the following formulas:                 
                  
                  
                            Area of a circle = pi * radius2
                            Area of a rectangle = length * width
                            Area of a cylinder = pi * radius2  * height

                        Use a state-controlled loop to allow users to input as many times as they want.

 
                        For example:

                        You will be asked to select a figure and then asked to enter its dimensions.
                        The area will then be calculated and displayed.
                     
                        Please select a figure by using the following options:

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

                        Enter your choice here: c

                        Please enter a value for the radius: 3

                        The area of a CIRCLE with your given dimensions is 28.27 units.

                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: y

 

                        You will be asked to select a figure and then asked to enter its dimensions.

                        The area will then be calculated and displayed.

 

                        Please select a figure by using the following options:

 

                        CIRCLE.......enter 'C'
                        RECTANGLE....enter 'R'
                        CYLINDER.....enter 'Y'

 
                        Enter your choice here: r

 
                        Please enter a value for the length: 3
                        Please enter a value for the width: 4
                    
                        The area of a RECTANGLE with your given dimensions is 12.00 units.

 
                        Would you like to try again?
                        Please enter 'y' for yes or another letter for no: n
                        Press any key to continue . . .
                */
                System.Console.Write("1) Determine the area of a Circle.\n");
                System.Console.Write("2) Determine the area of a Rectangle.\n");
                System.Console.Write("3) Determine the surface area of a Cylinder.\n");

                /*
 

                2.  Create an application with four classes. Three of the classes should contain data and behavior characteristics for circle, rectangle, and cylinder. The fourth class should allow the user to input a figure type from a menu of options. Prompt for appropriate values based on the inputted figure type, instantiate an object of the type entered, and display characteristics about the object.

                    Area of a circle = pi * radius2
                    Area of a rectangle = length * width
                    Area of a cylinder = 2 * pi * radius  * height

                    Use a state-controlled loop to allow users to input as many times as they want. See the output example of part 1.


                */
                System.Console.Write("4) Determine the area of a shape using the Menu class.\n");
                
                trash = System.Console.ReadLine();

                if (trash.Equals("1") || trash.Equals("2") || trash.Equals("3") || trash.Equals("4"))
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
                    //must be greater than the loop limit in ReturnMenu
                    cherry1 = false;

                }
                else
                {
                    trip = 0;
                }
            }

            return trip;
        }

        static void FindAreaofCircle()
        {
            /*
                    Prompt for appropriate dimensions and perform
                    the calculations using the following formulas:                 
                  
                        Area of a circle = pi * radius2
                        
                    Use a state-controlled loop to allow users to input as many times as they want.
            */

            //declare variables
            int radius;
            double area;
            string trash = "0";
            bool cherry = true;

            //prompt user for radius
            System.Console.Write("We're going to determine the area of a circle.\n");

            while (cherry == true)
            {
                System.Console.Write("Please enter the radius of the circle.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;

            //spacing
            System.Console.Write("\n\n");

            //convert to int
            radius = Convert.ToInt32(trash);

            //perform operation
            area = CalculateAreaofaCircle(radius);
                
            //output
            System.Console.Write("The area of the circle is: {0}.\n", area);

            //spacing
            System.Console.Write("\n\n");

        }

        static double CalculateAreaofaCircle(int radius)
        {
            double area;

            area = Math.Pow(radius, 2) * Math.PI;

            return area;
        }

        static void FindAreaofRectangle()
        {
            /*
                    Prompt for appropriate dimensions and perform
                    the calculations using the following formulas:                 
                  
                        Area of a rectangle = length * width
                        
                    Use a state-controlled loop to allow users to input as many times as they want.
            */

            //declare variables
            int width;
            int length;
            int area;
            string trash = "0";
            bool cherry = true;

            //prompt user for radius
            System.Console.Write("We're going to determine the area of a rectangle.\n");
            while (cherry == true)
            {
                System.Console.Write("Please enter the width of the rectangle.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;

            //spacing
            System.Console.Write("\n\n");

            //convert to int
            width = Convert.ToInt32(trash);

            while (cherry == true)
            {

                System.Console.Write("Please enter the length of the rectangle.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;

            //spacing
            System.Console.Write("\n\n");

            //convert to int
            length = Convert.ToInt32(trash);

            //perform operation
            area = CalculateAreaofaRectangle(width, length);

            //output
            System.Console.Write("The area of the rectangle is: {0}.\n", area);

            //spacing
            System.Console.Write("\n\n");

        }

        static int CalculateAreaofaRectangle(int width, int length)
        {
            int area;

            area = width * length;

            return area;
        }

        static void FindSurfaceAreaofCylinder()
        {
            /*
                    Prompt for appropriate dimensions and perform
                    the calculations using the following formulas:                 
                  
                        Area of a cylinder = pi * radius2  * height

                    Use a state-controlled loop to allow users to input as many times as they want.
            */

            //declare variables
            int radius;
            int height;
            double area;
            string trash = "0";
            bool cherry = true;

            //prompt user for radius
            System.Console.Write("We're going to determine the surface area of a cylinder.\n");
            while (cherry == true)
            {
                System.Console.Write("Please enter the radius of the cylinder.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;

            //spacing
            System.Console.Write("\n\n");

            //convert to int
            radius = Convert.ToInt32(trash);

            while (cherry == true)
            {
                System.Console.Write("Please enter the height of the cylinder.\n");
                trash = System.Console.ReadLine();
                cherry = AnalyzeString(trash);
            }
            cherry = true;

            //spacing
            System.Console.Write("\n\n");

            //convert to int
            height = Convert.ToInt32(trash);

            //perform operation
            area = CalculateSurfaceAreaofaCylinder(radius, height);

            //output
            System.Console.Write("The surface area of the cylinder is: {0}.\n", area);

            //spacing
            System.Console.Write("\n\n");
        }

        static double CalculateSurfaceAreaofaCylinder(int radius, int height)
        {
            double area;
            double terminalarea;
            double sidearea;

            terminalarea = CalculateTerminalAreaofaCylinder(radius);
            sidearea = CalculateSideAreaofaCylinder(radius, height);

            area = (2*terminalarea) + sidearea;

            return area;
        }

        static double CalculateTerminalAreaofaCylinder(int radius)
        {
            double terminalarea;

            terminalarea = Math.Pow(radius, 2) * Math.PI;
            
            return terminalarea;
        }

        static double CalculateSideAreaofaCylinder(int radius, int height)
        {
            double circumference;
            double sidearea;

            circumference = CalculateCircumferenceofaCylinder(radius);

            sidearea = circumference * height;
            
            return sidearea;
        }

        static double CalculateCircumferenceofaCylinder(int radius)
        {
            double circumference;

            circumference = radius * 2 * Math.PI;
            
            return circumference;
        }

        static void UseMenuClass()
        {
            /*
            2.  Create an application with four classes.
             *  Three of the classes should contain data and behavior characteristics
             *  for circle, rectangle, and cylinder.
             *  The fourth class should allow the user to input a figure type from
             *  a menu of options. 
             *  Prompt for appropriate values based on the
             *  inputted figure type, instantiate an object of the type entered,
             *  and display characteristics about the object.

                    Area of a circle = pi * radius2
                    Area of a rectangle = length * width
                    Area of a cylinder = 2 * pi * radius  * height
              
                Use a state-controlled loop to allow users to input as many times as they want. See the output example of part 1.
            */

            Console.WriteLine("You are now using the Menu class.\n");

            Menu menu = new Menu();
            menu.RunMenu();

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

        public class Circle
        {
            int radius;
            double area;

            public Circle(int radius)
            {
                this.radius = radius;

                this.area = CalculateArea(radius);
            }

            private double CalculateArea(int radius)
            {
                double area;

                area = Math.Pow(radius, 2) * Math.PI;

                return area;
            }

            public double GetArea()
            {
                return this.area;
            }
        }

        public class Rectangle
        {
            int length;
            int width;
            int area;

            public Rectangle(int width, int length)
            {
                this.width = width;
                this.length = length;

                this.area = CalculateArea(width, length);
            }

            private int CalculateArea(int width, int length)
            {
                int area;

                area = width * length;

                return area;
            }

            public int GetArea()
            {
                return this.area;
            }

        }

        public class Cylinder
        {
            int radius;
            int height;
            double circumference;
            double terminalarea;
            double sidearea;
            double surfacearea;

            public Cylinder(int radius, int height)
            {
                this.radius = radius;
                this.height = height;

                this.surfacearea = CalculateSurfaceArea(radius, height);
            }

            private double CalculateSurfaceArea(int radius, int height)
            {
                double area;
                double terminalarea;
                double sidearea;

                terminalarea = CalculateTerminalArea(radius);
                sidearea = CalculateSideArea(radius, height);

                area = (2*terminalarea) + sidearea;

                return area;
            }

            private double CalculateTerminalArea(int radius)
            {
                double terminalarea;

                terminalarea = Math.Pow(radius, 2) * Math.PI;
                this.terminalarea = terminalarea;

                return terminalarea;
            }

         

            private double CalculateSideArea(int radius, int height)
            {
                double circumference;
                double sidearea;
                
                circumference = CalculateCircumference(radius);

                sidearea = circumference * height;
                this.sidearea = sidearea;

                return sidearea;
            }

            private double CalculateCircumference(int radius)
            {
                double circumference;

                circumference = radius * 2 * Math.PI;
                this.circumference = circumference;

                return circumference;
            }

            public double GetSurfaceArea()
            {
                return this.surfacearea;
            }


        }

        public class Menu
        {
            Circle circle;
            Rectangle rectangle;
            Cylinder cylinder;

            public Menu()
            {
            }

            public void RunMenu()
            {
                string[] trash = new string[2];
                bool[] cherry = new bool[2];

                for (int x = 0; x < cherry.Length; x++)
                {
                    cherry[x] = true;
                }

                while (cherry[0] == true)
                {
                    Console.WriteLine("We're going to determine the surface area of one of the following shapes:");
                    Console.WriteLine("\n1) Circle\n2) Rectangle\n3) Cylinder\n");
                    Console.WriteLine("Please select an option.\n");

                    while (cherry[1] == true)
                    {
                        trash[0] = Console.ReadLine();

                        //Circle
                        if (trash[0].Equals("1"))
                        {
                            OutputAreaofaCircle();
                            cherry[1] = false;
                        }
                        //Rectangle
                        else if (trash[0].Equals("2"))
                        {
                            OutputAreaofaRectangle();
                            cherry[1] = false;
                        }
                        //Cylinder
                        else if (trash[0].Equals("3"))
                        {
                            OutputAreaofaCylinder();
                            cherry[1] = false;
                        }
                        else
                        {
                            Console.Write("\n\n Looks like we had an issue, please try again.\n\n");
                        }
                    }
                    cherry[1] = true;


                    Console.Write("\n\nWould you like to determine the surface area of another shape?\n");
                    Console.Write("1) Yes\n2) No\n");
                    while (cherry[1] == true)
                    {
                        trash[0] = Console.ReadLine();

                        if (trash[0].Equals("1"))
                        {
                            //first escape
                            cherry[1] = false;
                        }
                        else if (trash[0].Equals("2"))
                        {
                            //first escape
                            cherry[1] = false;
                            //second escape
                            cherry[0] = false;
                        }
                        else
                        {
                            Console.Write("Seems that there is an issue, please select again.\n");
                        }
                    }
                    cherry[1] = true;

                }
            }

            public void OutputAreaofaCircle()
            {
                string trash = "0";
                bool cherry = true;

                while (cherry == true)
                {
                    Console.WriteLine("Please enter the radius of the circle.");
                    trash = Console.ReadLine();
                    cherry = AnalyzeString(trash);
                }
                cherry = true;

                //Create a circle from which to determine the area
                CreateCircle(Convert.ToInt32(trash));

                //output
                Console.Write("The area of the circle is: {0}", circle.GetArea());
            }

            public void OutputAreaofaRectangle()
            {
                string[] trash = new string[2];
                bool cherry = true;

                while (cherry == true)
                {
                    Console.WriteLine("Please enter the width of the rectangle.");
                    trash[0] = Console.ReadLine();
                    cherry = AnalyzeString(trash[0]);
                }
                cherry = true;

                while (cherry == true)
                {
                    Console.WriteLine("Please enter the length of the rectangle.");
                    trash[1] = Console.ReadLine();
                    cherry = AnalyzeString(trash[1]);
                }
                cherry = true;

                //Create a circle from which to determine the area
                CreateRectangle(Convert.ToInt32(trash[0]), Convert.ToInt32(trash[1]));

                //output
                Console.Write("The area of the rectangle is: {0}", rectangle.GetArea());
            }

            public void OutputAreaofaCylinder()
            {
                string[] trash = new string[2];
                bool cherry = true;

                while (cherry == true)
                {
                    Console.WriteLine("Please enter the radius of the cylinder.");
                    trash[0] = Console.ReadLine();
                    cherry = AnalyzeString(trash[0]);
                }
                cherry = true;

                while (cherry == true)
                {
                    Console.WriteLine("Please enter the height of the cylinder.");
                    trash[1] = Console.ReadLine();
                    cherry = AnalyzeString(trash[1]);
                }
                cherry = true;

                //Create a cylinder from which to determine the surface area
                CreateCylinder(Convert.ToInt32(trash[0]), Convert.ToInt32(trash[1]));

                //output
                Console.Write("The surface area of the cylinder is: {0}", cylinder.GetSurfaceArea());
            }

            public void CreateCircle(int radius)
            {
                this.circle = new Circle(radius);
            }

            public void CreateRectangle(int width, int length)
            {
                this.rectangle = new Rectangle(width, length);
            }

            public void CreateCylinder(int radius, int height)
            {
                this.cylinder = new Cylinder(radius, height);
            }


        }

        

        







    }
}
