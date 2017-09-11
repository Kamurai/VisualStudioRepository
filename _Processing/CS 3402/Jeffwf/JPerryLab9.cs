using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Text;
using System.IO;


namespace JPerryLab9
{
    struct CourseInfo
    {
        public string name;
        public int credits, homework;

        public CourseInfo(string name, int credits, int homework)
        {
            this.name = name;
            this.credits = credits;
            this.homework = homework;
        }
    }

    class Course
    {
        public int grade, midterm, final, credits, wgrade, h;
        public double median;
        public ArrayList homework;

        public Course(int midterm, int final, int h, int credits, ArrayList homework)
        {
            this.midterm = midterm;
            this.final = final;
            this.credits = credits;
            this.homework = homework;
            this.h = h;
            this.median = calcMedian(h, homework);
            this.grade = calcGrade(midterm, final, median);
            this.wgrade = grade * credits;
        }

        public double calcMedian(int h, ArrayList orderedList)
        {
            orderedList.Sort();
            decimal c = Math.Ceiling((decimal)h / 2);
            decimal f = Math.Floor((decimal)h / 2);
            decimal m = Math.Ceiling((decimal)h / 2);
            double median = 0;
            if (c == f)
            {
                median = (Double.Parse(orderedList[(int)(c - 1)].ToString()) + Double.Parse(orderedList[(int)(c)].ToString())) / 2;
            }
            else
            {
                median = Double.Parse(orderedList[(int)(m - 1)].ToString());
            }
            return median;
        }

        private int calcGrade(int midterm, int final, double median)
        {
            double finalgrade = .4 * midterm + .4 * final + .2 * median;
            int grade = 0;
            if (finalgrade >= 90)
            {
                grade = 4;
            }
            if (finalgrade < 90 && finalgrade >= 80)
            {
                grade = 3;
            }
            if (finalgrade < 80 && finalgrade >= 70)
            {
                grade = 2;
            }
            if (finalgrade < 70 && finalgrade >= 60)
            {
                grade = 1;
            }
            if (finalgrade < 60)
            {
                grade = 0;
            }
            return grade;
        }
        public int getCredits()
        {
            return credits;
        }
        public int getWgrade()
        {
            return wgrade;
        }

    }


    class Student
    {
        public int ksuid, courseTally;
        public double gpa;
        public List<Course> courses;
        public string first, last;

        public Student(string first, string last, int ksuid, int courseTally, List<Course> courses)
        {
            this.first = first;
            this.last = last;
            this.ksuid = ksuid;
            this.courseTally = courseTally;
            this.courses = courses;
            this.gpa = calcGPA(courseTally, courses);
        }

        public double calcGPA(int c, List<Course> courses)
        {
            int totalcredits = 0;
            for (int i = 0; i < c; i++)
            {
                totalcredits = totalcredits + courses[i].getCredits();
            }
            int weightedtotal = 0;
            for (int i = 0; i < c; i++)
            {
                weightedtotal = weightedtotal + courses[i].getWgrade();
            }
            double gpa = (double)(weightedtotal) / (double)(totalcredits);
            return gpa;
        }

        public int getID()
        {
            return ksuid;
        }
        public string getFirst()
        {
            return first;
        }
        public string getLast()
        {
            return last;
        }
        public double getGrade()
        {
            return Math.Round(gpa, 2);
        }
    }

    class Program
    {
        public enum eShape
        {
            Student,
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
                    case eShape.Student:
                        studentInfo();
                        break;
                }
            }
        }

        static eShape getShapeFromUser()
        {
            Console.Clear();
            Console.WriteLine("Please select the excersize you wish to try:");
            Console.WriteLine(" 1 - (Student Info)");
            Console.WriteLine(" Q - (Quit)");
            while (true)
            {
                String selection = Console.ReadLine().Trim();
                switch (selection)
                {
                    case "1":
                        return eShape.Student;
                    case "Q":
                    case "q":
                        return eShape.Quit;
                    default:
                        Console.WriteLine("Your selection is not valid! Please try again.");
                        break;
                }
            }
        }

        public static void studentInfo()
        {
            Console.Clear();
            Console.WriteLine("How many courses would you like to input?");
            int c = Int32.Parse(Console.ReadLine());
            List<CourseInfo> courseList = new List<CourseInfo>();
            for (int i = 0; i < c; i++)
            {
                Console.Clear();
                Console.WriteLine("What is the name of course #" + (i + 1) + "?");
                string cn = Console.ReadLine();
                Console.WriteLine("How many credit hours is this course worth?");
                int ch = Int32.Parse(Console.ReadLine());
                Console.WriteLine("How many home work assignments were offered in this course?");
                int h = Int32.Parse(Console.ReadLine());
                courseList.Add(new CourseInfo(cn, ch, h));
            }
            Console.Clear();
            Console.WriteLine("How many students would you like to input?");
            int n = Int32.Parse(Console.ReadLine());
            List<Student> studentList = new List<Student>();
            int tally = 0;
            for (int i = 0; i < n; i++)
            {
                Console.Clear();
                Console.WriteLine("Please enter the Student ID for student #" + (i + 1) + ".");
                int studentId = Int32.Parse(Console.ReadLine());
                bool idcheck = true;
                for (int j = 0; j < tally; j++)
                {
                    if (studentId == studentList[j].getID())
                    {
                        idcheck = false;
                        Console.WriteLine("This student id has already been used, would you like to skip this student or try again?");
                        Console.WriteLine(" 1 - (Reinput Student ID)");
                        Console.WriteLine(" 2 - (Skip This Student)");
                        int x = Int32.Parse(Console.ReadLine());
                        if (x == 1)
                        {
                            i--;
                        }
                    }
                }
                if (idcheck == true)
                {
                    tally++;
                    Console.WriteLine("Please enter the Student's First Name.");
                    string firstName = Console.ReadLine();
                    Console.WriteLine("Please enter the Student's Last Name.");
                    string lastName = Console.ReadLine();
                    List<Course> courses = new List<Course>();
                    for (int j = 0; j < c; j++)
                    {
                        Console.Clear();
                        Console.WriteLine("Please enter the midterm exam grade for course: " + courseList[j].name + ".");
                        int midterm = Int32.Parse(Console.ReadLine());
                        Console.WriteLine("Please enter the final exam grade for course: " + courseList[j].name + ".");
                        int final = Int32.Parse(Console.ReadLine());
                        ArrayList homework = new ArrayList();
                        for (int k = 0; k < courseList[j].homework; k++)
                        {
                            Console.WriteLine("Please enter homework grade #" + (k + 1) + " for course: " + courseList[j].name + ".");
                            homework.Add(Console.ReadLine());
                        }
                        courses.Add(new Course(midterm, final, courseList[j].homework, courseList[j].credits, homework));
                    }
                    Student student = new Student(firstName, lastName, studentId, c, courses);
                    studentList.Add(student);
                }
            }
            for (int i = 0; i < 1; i++)
            {
                Console.Clear();
                Console.WriteLine("How would you like to sort the Students?");
                Console.WriteLine(" 1 - (Student ID)");
                Console.WriteLine(" 2 - (First Name)");
                Console.WriteLine(" 3 - (Last Name)");
                int s = Int32.Parse(Console.ReadLine());
                if (s == 1)
                {
                    Console.Clear();
                    studentList.Sort(sortID);
                    Console.WriteLine("Students by Student ID\n");
                    displayID(studentList);
                }
                if (s == 2)
                {
                    Console.Clear();
                    studentList.Sort(sortFN);
                    Console.WriteLine("Students by First Name\n");
                    displayFN(studentList);
                }
                if (s == 3)
                {
                    Console.Clear();
                    studentList.Sort(sortLN);
                    Console.WriteLine("Students by Last Name\n");
                    displayLN(studentList);
                }
                Console.WriteLine("\nPress any key to continue...");
                Console.ReadLine();
                Console.Clear();
                Console.WriteLine("Do you wish to sort the list differently?");
                Console.WriteLine(" 1 - (Return to sort list screen)");
                Console.WriteLine(" 2 - (Save Data)");
                Console.WriteLine(" 3 - (Quit)");
                int x = Int32.Parse(Console.ReadLine());
                if (x == 1)
                {
                    i--;
                }
                if (x == 2)
                {
                    Console.Clear();
                    Console.WriteLine("What would you like to name the file containing the Course Info?");
                    string coursename = Console.ReadLine();
                    coursename = coursename + ".txt";
                    Console.WriteLine();
                    Console.WriteLine();
                    Console.WriteLine("What would you like to name the file containing the Student Info?");
                    string studentname = Console.ReadLine();
                    studentname = studentname + ".txt";
                    using (StreamWriter sw = new StreamWriter(coursename))
                    {
                        foreach (CourseInfo m in courseList)
                        {
                            sw.WriteLine(m.name);
                            sw.WriteLine(m.credits);
                            sw.WriteLine(m.homework);
                        }
                    }
                    using (StreamWriter sx = new StreamWriter(studentname))
                    {
                        sx.WriteLine(n);
                        foreach (Student z in studentList)
                        {
                            sx.WriteLine(z.first);
                            sx.WriteLine(z.last);
                            sx.WriteLine(z.ksuid);
                            sx.WriteLine(z.courseTally);
                            foreach (Course o in z.courses)
                            {
                                sx.WriteLine(o.midterm);
                                sx.WriteLine(o.final);
                                sx.WriteLine(o.h);
                                sx.WriteLine(o.credits);
                                foreach (string h in o.homework)
                                {
                                    sx.WriteLine(h);
                                }
                            }
                        }
                    }
                    courseList.Clear();
                    studentList.Clear();
                    Console.Clear();
                    Console.WriteLine("Your data has been saved!");
                    string line = "";
                    using (StreamReader sr = new StreamReader(coursename))
                    {
                        while ((line = sr.ReadLine()) != null)
                        {
                            courseList = recreateCourseInfo(stringStrip(line));
                        }
                    }

//trouble area
                    string lin = "";
                    using (StreamReader sn = new StreamReader(studentname))
                    {

//this says while lin (which is equal to sn.Readlin() ) does not equal null?
                        lin = sn.ReadLine();

                        //while ((lin = sn.ReadLine()) != null)
                        while ( lin  != null )
                        {
                            studentList = recreateStudentInfo(stringStrip(lin), courseList);
                        }
                    }
                    Console.ReadLine();
                    i--;
                }
            }


        }

        public static int sortID(Student x, Student y)
        {
            return x.getID().CompareTo(y.getID());
        }

        public static int sortFN(Student x, Student y)
        {
            return x.getFirst().CompareTo(y.getFirst());
        }

        public static int sortLN(Student x, Student y)
        {
            return x.getLast().CompareTo(y.getLast());
        }

        public static void displayID(List<Student> list)
        {
            foreach (Student s in list)
            {
                Console.WriteLine(s.getID() + " " + s.getFirst() + " " + s.getLast() + "   " + s.getGrade());
            }
        }

        public static void displayFN(List<Student> list)
        {
            foreach (Student s in list)
            {
                Console.WriteLine(s.getFirst() + " " + s.getLast() + " " + s.getID() + "   " + s.getGrade());
            }
        }

        public static void displayLN(List<Student> list)
        {
            foreach (Student s in list)
            {
                Console.WriteLine(s.getLast() + ", " + s.getFirst() + "  " + s.getID() + "   " + s.getGrade());
            }
        }
        public static string[] stringStrip(string words)
        {
            string delimStr = " ,.:";
            char[] delimiter = delimStr.ToCharArray();
            string[] split = null;

            for (int i = 1; i <= words.Length; i++)
            {
                split = words.Split(delimiter, i);
            }
            return split;
        }
        public static List<CourseInfo> recreateCourseInfo(string[] x)
        {
            List<CourseInfo> courseList = new List<CourseInfo>();
            int l = x.Length / 3;
            for (int i = 0; i < l; i++)
            {
                int c = i * 3;
                courseList.Add(new CourseInfo(x[c], Int32.Parse(x[c + 1]), Int32.Parse(x[c + 2])));
            }
            return courseList;
        }
        public static List<Student> recreateStudentInfo(string[] x, List<CourseInfo> courseList)
        {
            List<Student> studentList = new List<Student>();
            int ns = Int32.Parse(x[0]);
            int ct = Int32.Parse(x[4]);
            int sl = (x.Length - 1) / ns;
            for (int i = 0; i < ns; i++)
            {
                int c = i * sl + 1;
                string firstName = x[c];
                string lastName = x[c + 1];
                int studentId = Int32.Parse(x[c + 2]);
                int courseTally = Int32.Parse(x[c + 3]);
                List<Course> courses = new List<Course>();
                int hw = 8;
                for (int j = 0; j < courseTally; j++)
                {
                    int midterm = Int32.Parse(Console.ReadLine());
                    int final = Int32.Parse(Console.ReadLine());
                    ArrayList homework = new ArrayList();
                    for (int k = 0; k < courseList[j].homework; k++)
                    {
                        homework.Add(Int32.Parse(x[c + hw + k]));
                    }
                    hw = hw + courseList[j].homework + 4;
                    courses.Add(new Course(midterm, final, courseList[j].homework, courseList[j].credits, homework));
                }
                Student student = new Student(firstName, lastName, studentId, courseTally, courses);
                studentList.Add(student);
            }
            return studentList;
        }

    }
}