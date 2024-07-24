using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ofc_MgtSys
{
    public class DbConn
    {
        SqlConnection conn = new SqlConnection(@"DESKTOP-C8O6GT4\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;Trust Server Certificate=True");
        public bool UDI(String query)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(query, conn);
                int c = cmd.ExecuteNonQuery();
                if (c > 0)
                    return true;
                else
                    return false;
            }
            catch (SqlException ex)
            {
                return false;
            }
            finally
            {
                conn.Close();
            }

        }
        public DataTable search(String query)
        {
            SqlDataAdapter sda = new SqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            return dt;
        }
    }
}
