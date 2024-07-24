using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project
{
    public class Election
    {
        private string connectionString;

        public Election(string conString) // Constructor name should match the class name
        {
            connectionString = conString;
        }

        public int GetTotalVotesCount(string tableName, string Party)
        {
            int count = 0;            
            string query1 = $"SELECT COUNT(*) FROM {tableName} WHERE Vote = {Party}";


            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query1, connection);

                try
                {
                    connection.Open();

                    count = (int)command.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    Console.WriteLine("An error occurred: " + ex.Message);
                }
            }

            return count;
        }
    }
}