using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
//using System.Configuration;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            bool result = false;
            Snorlax snuffit = new Snorlax();
            result = snuffit.isUserAuthenticated("524", "Ded");

            Console.WriteLine(result);
            //Console.ReadLine();
            
        }
    }



    public class Snorlax
    {
        SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
        //jdbc:oracle:thin:@localhost:1521:xe
        //SQLHelper helper = new SQLHelper("jdbc:oracle:thin:@htkb.dyndns.org:1521:xe", "Test", "ckemerait", "green20");

        public bool Login(string target, string password)
        {
            bool result = false;

            if (isUserAuthenticated(target, password))
            {
                //change user in database to be logged in
                result = UpdateUserInformation(target, "Login", "1");
            }

            return result;
        }

        public bool Logout(string target)
        {
            bool result = false;
            result = UpdateUserInformation(target, "Login", "0");
            return result;
        }

        public bool isUserAuthenticated(string target, string Password)
        {
            //SQLHelper helper = new SQLHelper();
            bool result = false;
            //string output = "";
            string[] load = new string[4];

            //result = helper.SQLSelect();
            load = ReadUserInformation("*", "Yellow", "ID", target);

            if (load[2].Equals(Password))
            {
                result = true;
            }
            else
            {
                result = false;
            }
            return result;
        }

        public string GetUserInformation(string target)
        {
            string[] load = new string[4];

            if (target.Equals("") || target.Equals(null))
            {
                return "try again";
            }
            //SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
            //bool result = false;
            string output = "";

            //result = helper.SQLSelect();
            //query database for user's information
            load = ReadUserInformation("*", "Yellow", "ID", target);
            output = "ID: " + load[0] + " Name: " + load[1];
            return output;

        }

        //C
        public bool InsertNewUserInformation()
        {
            //SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
            bool result = false;

            //send update to database for user
            result = helper.SQLInsert("Yellow", "ID", "Name", "Password", "Login", "527", "Mayas", "Irin", "0");
            return result;
        }
        //R
        public string[] ReadUserInformation(string subject, string table, string identifier, string target)
        {
            string[] load = new string[4];
            //SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
            //string result = "false";
            //string output = "";

            load = helper.SQLSelect(subject, table, identifier, target);
            return load;
        }
        //U
        public bool UpdateUserInformation(string target, string column, string info)
        {
            //SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
            bool result = false;
            result = helper.SQLUpdate("Yellow", column, info, "ID", target);

            return result;
        }
        //D
        public bool DeleteUser(string target)
        {
            //SQLHelper helper = new SQLHelper(@"NORW7KEMERAITC\SQLEXPRESS", "Red", "ckemerait", "green20@");
            bool result = false;

            //send update to database for user
            result = helper.SQLDelete("Yellow", "ID", target);
            return result;
        }

    }

    public class SQLHelper
    {
        string source = "";
        string database = "";
        string username = "";
        string password = "";

        public SQLHelper(string s, string d, string u, string p)
        {
            source = s;
            database = d;
            username = u;
            password = p;
        }
        //C
        public bool SQLInsert(string table, string Key, string Col1, string Col2, string Col3, string IK, string I1, string I2, string I3)
        {
            bool result = false;
            string insertString = null;
            //insertString = "INSERT INTO Yellow (ID, Name, Password, Login) VALUES ('527', 'Mayas', 'Irin', '0');";
            insertString = "INSERT INTO " + table + " (" + Key + ", " + Col1 + ", " + Col2 + ", " + Col3 + ") VALUES ('" + IK + "', '" + I1 + "', '" + I2 + "', '" + I3 + "');";
            string connString = getConnection();
            using (SqlConnection connection = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand(insertString, connection);
                connection.Open();
                try
                {
                    command.ExecuteNonQuery();
                    result = true;
                }
                catch (Exception ex)
                {
                    result = false;
                    throw new Exception(ex.Message);
                }
                finally
                {
                    // Always call Close when done reading.
                    command.Dispose();
                    connection.Close();
                }
            }

            return result;
        }
        //R
        public string[] SQLSelect(string subject, string table, string identifier, string specific)
        {
            bool result = false;
            int count = 0;
            //string name = "BAD WOLF";
            string[] load = new string[4];
            string queryString = null;
            //queryString = "SELECT ID FROM Yellow WHERE ID = 525;";
            queryString = "SELECT " + subject + " FROM " + table + " WHERE " + identifier + "= " + specific + ";";
            string connString = getConnection();
            using (SqlConnection connection = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        count++;
                        //name = reader[0].ToString();

                        for (int x = 0; x < load.Length; x++)
                        {
                            load[x] = reader[x].ToString();
                        }
                        if (count > 1)
                        {
                            result = false;
                            throw new Exception("ERROR: Multiple records for this node...");
                        }
                    }
                    result = true;
                }
                catch (Exception ex)
                {
                    result = false;
                    throw new Exception(ex.Message);
                }
                finally
                {
                    // Always call Close when done reading.
                    reader.Close();
                    connection.Close();
                }
            }

            if (result == true)
            {
                return load;
            }
            else
            {
                return new string[4];
            }

            //return result;
        }
        //U        
        public bool SQLUpdate(string table, string column, string info, string identifier, string specific)
        {
            bool result = false;
            string updateString = null;
            //updateString = "UPDATE Yellow SET Name = 'Star', Password = 'Kith' WHERE ID = '527';";
            updateString = "UPDATE " + table + " SET " + column + " = '" + info + "' WHERE " + identifier + " = '" + specific + "';";
            string connString = getConnection();
            using (SqlConnection connection = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand(updateString, connection);
                connection.Open();
                command.ExecuteNonQuery();
                try
                {
                    command.ExecuteNonQuery();
                    result = true;
                }
                catch (Exception ex)
                {
                    result = false;
                    throw new Exception(ex.Message);
                }
                finally
                {
                    // Always call Close when done reading.
                    command.Dispose();
                    connection.Close();
                }
            }

            return result;
        }
        //D
        public bool SQLDelete(string table, string identifier, string specific)
        {
            bool result = false;
            string deleteString = null;
            //deleteString = "DELETE FROM Yellow WHERE ID = '523';";
            deleteString = "DELETE FROM " + table + " WHERE " + identifier + " = '" + specific + "';";
            string connString = getConnection();
            using (SqlConnection connection = new SqlConnection(connString))
            {
                SqlCommand command = new SqlCommand(deleteString, connection);
                connection.Open();
                command.ExecuteNonQuery();
                try
                {
                    command.ExecuteNonQuery();
                    result = true;
                }
                catch (Exception ex)
                {
                    result = false;
                    throw new Exception(ex.Message);
                }
                finally
                {
                    // Always call Close when done reading.
                    command.Dispose();
                    connection.Close();
                }
            }

            return result;
        }

        public string getConnection()
        {
            string result = "";
            //result = @"Data Source=NORW7KEMERAITC\SQLEXPRESS;Initial Catalog=Red;User ID=ckemerait;Password=green20@";
            result = @"Data Source=" + source + ";Initial Catalog=" + database + ";User ID=" + username + ";Password=" + password + ";";
            return result;
        }

        public string getSource()
        {
            return source;
        }

        public string getDatabase()
        {
            return database;
        }

        public string getUsername()
        {
            return username;
        }

        public string getPassword()
        {
            return password;
        }

    }
}