using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Project
{
    public partial class Page1 : System.Web.UI.Page
    {
        static string conString = "Data Source=DESKTOP-C8O6GT4\\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = TextBox1.Text;
            string Cnic = TextBox3.Text;
            using (SqlConnection con = new SqlConnection(conString))
            {
                try
                {
                    con.Open();
                    string query = "SELECT Name, CNIC FROM login WHERE Email = @Email AND Cnic = @CNIC";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@CNIC", Cnic);
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        string name = reader["Name"].ToString();
                       // string cnic = reader["CNIC"].ToString();

                        Session["Email"] = email;
                        Session["name"] = name;
                        Session["cnic"] = Cnic;
                        Session["c"]=0;

                        reader.Close();

                        string userEmail = email;  
                        string verificationCode = CodeGenerator.GenerateRandomCode();

                        try
                        {
                            EmailService.SendVerificationCode(userEmail, verificationCode);
                            Session["VerificationCode"] = verificationCode;
                            Response.Write("Verification code sent successfully!");
                        }
                        catch (Exception ex)
                        {
                          
                           Response.Write($"Error sending verification code: {ex.Message}");
                        }
                        Response.Redirect("PageL1.aspx");
                    }
                    else
                    {
                        Label4.Text = "Invalid email or password.";
                    }
                }
                catch (SqlException ex)
                {
                    Label4.Text = "An error occurred: " + ex.Message;
                }
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin1.aspx");
        }
    }
}
