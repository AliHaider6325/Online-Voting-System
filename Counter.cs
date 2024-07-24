using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Project
{
    public class Counter
    {
        private string connectionString;

        public Counter(string conString) 
        {
            connectionString = conString;
        }

        public int GetTotalRecordsCount(string tableName)
        {
            int count = 0;

           
            string query = $"SELECT COUNT(*) FROM {tableName}";


            
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    
                    connection.Open();                    
                    count = (int)command.ExecuteScalar(); //when we want a single value we can use this 
                    //SqlDataReader reader = command.ExecuteReader();
                    //if (reader.Read())
                    //{
                      //  count = reader.GetInt32(0); //0 to make sure data from first row and colomn
                    //}
                    //reader.Close();

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