using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class VotersDetails : System.Web.UI.Page
    {
        static string conString = "Data Source=DESKTOP-C8O6GT4\\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT * FROM login ";
                    SqlCommand cmd = new SqlCommand(query, con);
                    DataTable dtbl = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    adapter.Fill(dtbl);

                    gvPhoneBook.DataSource = dtbl;
                    gvPhoneBook.DataBind();
                }
                catch (SqlException ex)
                {
                    Response.Write("ok" + ex);
                }
            }
        }
    }
}