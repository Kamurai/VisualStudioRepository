using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace LabOne082808
{
    class StarShapes
    {
        static void Main(string[] args)
        {
            int sSide, rHeight, rWidth, tHeight = 0, tBase = 0;

            Console.WriteLine("Enter side length for your square:");
            sSide = Convert.ToInt32(Console.ReadLine());

            for (int i = 1; i <= sSide; i++)
                for (int j = 1; j <= sSide; j++)
                    if (j == sSide)
                        Console.WriteLine("* ");
                    else
                        Console.Write("* ");

            Console.WriteLine("\nEnter vertical length of your rectangle:");
            rHeight = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter horizontal width of your rectangle:");
            rWidth = Convert.ToInt32(Console.ReadLine());

            for (int i = 1; i <= rHeight; i++)
                for (int j = 1; j <= rWidth; j++)
                    if (j == rWidth)
                        Console.WriteLine("* ");
                    else
                        Console.Write("* ");

            bool value = true;
            while (value)
            {
                Console.WriteLine("\nEnter the height(>1) for your triangle(base and height MUST be divisible):");
                tHeight = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Enter base length(>1) for your trianglebase and height MUST be divisible):");
                tBase = Convert.ToInt32(Console.ReadLine());

                if ((tHeight % tBase != 0) && (tBase % tHeight != 0))
                    Console.WriteLine("\nYour values are not compatible to make a triangle!  Please try again.\n");
                else if ((tBase <= 1) || (tHeight <= 1))
                    Console.WriteLine("\nOne of your values are <= 1!  Please try again.\n");
                else
                    value = false;
            }

            int scale, temp;
            String stars = "\n* ";

            if (tHeight > tBase)
            {
                scale = tHeight / tBase;
                for (int i = 0; i < tHeight; i++)
                {
                    if (i >= 2)
                        if (i % scale == 0)
                            stars += "* ";

                    Console.WriteLine(stars);
                }
            }
            else if (tHeight < tBase)
            {
                scale = tBase / tHeight;
                temp = scale;
                for (int i = 1; i <= tHeight; i++)
                {
                    for (int j = 1; j <= temp; j++)
                        Console.Write("* ");

                    Console.WriteLine("");
                    temp += scale;
                }
            }
            else
            {
                scale = 1;
                for (int i = 1; i <= tHeight; i++)
                {
                    if (i > 1)
                        stars += "* ";

                    Console.WriteLine(stars);
                }
            }
        }
    }
}