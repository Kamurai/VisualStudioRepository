using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/**
 * David Harris
 * CS 2530
 * Lab 1
 */
namespace Lab1
{
	public class Program
	{

		public enum eShape
		{
			Square,
			Rectangle,
			Triangle,
			Quit
		}

		static void Main(string[] args)
		{
			while (true)
			{
				eShape s = getShapeFromUser();
				switch (s)
				{
					case eShape.Quit:
						return;
					case eShape.Square:
						drawSquare();
						break;
					case eShape.Rectangle:
						drawRectangle();
						break;
					case eShape.Triangle:
						drawTriangle();
						break;
				}
			}
		}

		static eShape getShapeFromUser()
		{
			Console.Clear();
			Console.WriteLine("Please select the shape you wish to draw:");
			Console.WriteLine(" 1 - (Square)");
			Console.WriteLine(" 2 - (Rectangle)");
			Console.WriteLine(" 3 - (Triangle)");
			Console.WriteLine(" Q - (Quit)");
			while (true)
			{
				String selection = Console.ReadLine().Trim();
				switch (selection)
				{
					case "1":
						return eShape.Square;
					case "2":
						return eShape.Rectangle;
					case "3":
						return eShape.Triangle;
					case "Q":
					case "q":
						return eShape.Quit;
					default:
						Console.WriteLine("Your selection is not valid! Please try again.");
						break;
				}
			}
		}

		static void drawSquare()
		{
			Console.Clear();
			Console.WriteLine("Please enter the square's side length:");
			Int32 sideLength = Int32.Parse(Console.ReadLine());
			Console.WriteLine("");
			for (int i = 0; i < sideLength; i++)
			{
				writeNChars('*', sideLength);
				Console.WriteLine("");
			}
			Console.WriteLine("");
			Console.WriteLine("Press any key to continue...");
			Console.ReadLine();
		}

		static void drawRectangle()
		{
			Console.Clear();
			Console.WriteLine("Please enter the rectangle's height:");
			Int32 h = Int32.Parse(Console.ReadLine());
			Console.WriteLine("Please enter the rectangle's width:");
			Int32 w = Int32.Parse(Console.ReadLine());
			Console.WriteLine("");
			for (int i = 0; i < h; i++)
			{
				writeNChars('*', w);
				Console.WriteLine("");
			}
			Console.WriteLine("");
			Console.WriteLine("Press any key to continue...");
			Console.ReadLine();
		}

		static void drawTriangle()
		{
			Console.Clear();
			Console.WriteLine("Please enter the triangle's base:");
			Int32 b = Int32.Parse(Console.ReadLine());
			Console.WriteLine("Please enter the rectangle's height:");
			Int32 h = Int32.Parse(Console.ReadLine());
			Console.WriteLine("");
			for (int i = 1; i <= h; i++)
			{
				writeNChars('*', (int)Math.Ceiling((double)b*(double)i/(double)h));
				Console.WriteLine();
			}
			Console.WriteLine("");
			Console.WriteLine("Press any key to continue...");
			Console.ReadLine();
		}

		static void writeNChars(char c, int n)
		{
			for (int i = 0; i < n; i++)
				Console.Write(c);
		}
	}
}
