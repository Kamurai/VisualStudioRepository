using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.IO;
namespace Triangle
{
    class Program
    {

        

        static void Main(string[] args)
        {
            WebClient client = new WebClient();
            var url = "http://www.intesolv.com/triangle.txt";
            //string downloadString = client.DownloadString("http://www.intesolv.com/triangle.txt");

            int result = 0;
            int current = 0;
            int next = 0;

            int tracker = 0;
            string test = "";
            //grab web page

            using (var stream = client.OpenRead(url))
            using (var reader = new StreamReader(stream))
            {
                string line;
                //read line by line
                while ((line = reader.ReadLine()) != null)
                {
                    //evaluate line by highest integer
                    for (int x = 0; x < line.Length; x++)
                    {
                        for (int y = x; y < line.Length; y++)
                        {
                            if (line[y] == ' ' || line[y] == '\n')
                            {
                                /*if (y == line.Length - 1)
                                {
                                    //test = line.Substring(x);
                                    test = line.Substring(x, line.Length - 1);
                                    next = Int32.Parse(test);
                                }
                                else
                                {*/
                                    test = line.Substring(x, y-x);
                                    next = Int32.Parse(test);
                                //}


                                if (current < next)
                                    current = next;
                                if (line[y] == '\n')
                                {
                                    break;
                                }
                                x = y;
                                x++;
                                
                            }
                        }
                    }
                    
                    //add integer to sum
                    result += current;
                    //proceed next line
                    current = 0;
                    next = 0;

                }

            }
                //present largest
            Console.WriteLine(result);
        }
    }
}
