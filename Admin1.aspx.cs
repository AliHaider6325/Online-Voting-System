using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Admin1 : System.Web.UI.Page
    {
        static string conString = "Data Source=DESKTOP-C8O6GT4\\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            Counter dbHelper = new Counter(conString); 
            int TotalLogins = dbHelper.GetTotalRecordsCount("login");
            int TotalVotes = dbHelper.GetTotalRecordsCount("VDetails");

            Session["Logins"] = TotalLogins;
            Session["Votes"] = TotalVotes;

            Election dbHelper1 = new Election(conString);
            int PTI = dbHelper1.GetTotalVotesCount("VDetails", "'PTI'");
            int PML = dbHelper1.GetTotalVotesCount("VDetails", "'PML-N'");
            int PPP = dbHelper1.GetTotalVotesCount("VDetails", "'PPP'");
            int JI = dbHelper1.GetTotalVotesCount("VDetails", "'JI'");
            Session["PTI"] = PTI;
            Session["PML"] = PML;
            Session["PPP"] = PPP;
            Session["JI"] = JI;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Gmail = TextBox1.Text;
            string password = TextBox3.Text;
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT Gmail, password FROM Admin WHERE Gmail = @Gmail AND password = @password";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Gmail", Gmail);
                    cmd.Parameters.AddWithValue("@Password", password);
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        string storedPassword = reader["Password"].ToString();
                        string storedGmail= reader["Gmail"].ToString();
                        if (password == storedPassword)
                        {
                            Response.Redirect("Dashboard.aspx");
                        }
                        else
                        {
                            Response.Write("Invalid Details");
                        }
                    }
                }
                catch (SqlException ex)
                {
                    Response.Write("ok" + ex);
                }
            }
        }
    }
}