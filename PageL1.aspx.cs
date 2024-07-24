using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class PageL1 : System.Web.UI.Page
    {
        public string s;
        public string UserEmail;
        
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            s = Session["name"].ToString();
            UserEmail = Session["Email"].ToString();
            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
           
            string VerificationCode = Session["VerificationCode"].ToString();
            string UserEnteredCode = TextBox1.Text;
            if (VerificationCode == UserEnteredCode)
            {
                TextBox1.Text = "";
                Response.Redirect("Default1.aspx");
            }
            else
            {
                Label2.Text = "Wrong Credentials";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string verificationCode = CodeGenerator.GenerateRandomCode();
            int c = (int)(Session["c"]);
            // Assuming CodeGenerator class from previous example
            if (c == 0)
            {
                try
                {
                    EmailService.SendVerificationCode(UserEmail, verificationCode);
                    //Optionally, store verificationCode in session or database for verification later
                    Session["VerificationCode"] = verificationCode;
                    Response.Write("Verification code sent successfully!");
                    c++;
                    Session["c"] = c;
                }
                catch (Exception ex)
                {

                    Response.Write($"Error sending verification code: {ex.Message}");
                }
                Response.Redirect("PageL1.aspx");
            }
            else
            {
                Label2.Text = "We have sended you code 2 times,Now Please Try again";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Label2.Text = "";
        }
    }
}