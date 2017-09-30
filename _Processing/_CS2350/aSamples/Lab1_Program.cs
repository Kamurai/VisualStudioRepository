using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
                int height;
    int sq_side;
    int rec_height;
    int rec_length;
    int tri_base;
    int row;
    int col;

        
    // draw square
    
    //Prompt user for the side
    Console.Write("Enter the side of your square: ");
    sq_side=Convert.ToInt32(Console.ReadLine());
            //int intTemp = Convert.ToInt32(Console.Readline());
            //int n= int.Parse(Console.ReadLine());
    Console.WriteLine();
    

    //Draws a square based on the input
    for (int i = 0; i < sq_side; ++i)
    {
        for (int j = 0; j < sq_side; ++j)
            Console.Write( "* ");
        Console.WriteLine();
    }

    //Break a line
    Console.WriteLine();

    //Draw a rectangle

    //Prompt the user for the height and length for the rectangle
    Console.WriteLine("Please enter the Height and Length of your rectangle: ");
    rec_height = int.Parse(Console.ReadLine());
    rec_length = int.Parse(Console.ReadLine());
    Console.WriteLine();
    

    //Draws a rectangle based on the input
    for (int i = 0; i < rec_height; ++i)
    {
        for (int j = 0; j < rec_length; ++j)
            Console.Write("* ");
        Console.WriteLine();
    }

    //Break a line
    Console.WriteLine();

    // draw triangle

    // these variables are used to track the row and column counts

    int triHSize, triWSize;
	Console.WriteLine("Please enter the height of the triangle you would like: ");
	triHSize = int.Parse(Console.ReadLine());;
	Console.WriteLine("Please enter the width of the triangle you would like: ");
	triWSize = int.Parse(Console.ReadLine());
	//draw a triangle with height of triHSize and width of triWSize
	if(triWSize > 0 && triHSize > 0)
	{
		double increment = (triWSize)/(triHSize); //find an appropriate increment value for width per height
		if(increment < 1.0)
			increment = 1.0;
		Console.WriteLine("*");
		double i = increment;
		for(int t = 1; t != triHSize-1; t++)
		{
            
			string stars = new string ( '*',(int)i);
			Console.WriteLine(stars);
			i += increment;
			if(i >= triWSize)
				i = triWSize;
			else if(i-((int)i) > 0.5)
				i += 1-(i-((int)i));
		}
		string starss = new string ('*',triWSize);
		Console.WriteLine(starss);
	}
	else if(triWSize == 0 && triHSize > 0)
	{
		for(int t=0; t!=triHSize; t++)
		{
			string spaces= new string (' ',triHSize-t-1 );
            string stars = new string( '*',t * 2 + 1);
			Console.WriteLine(spaces+stars);
		}
	}
	else
	{
		Console.WriteLine("invalid height or witdth");
	}

    



        }
    }
}
