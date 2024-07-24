using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Voting : System.Web.UI.Page
    {
        public string Name;
        public string Cnic;
        public string Email;
        static string conString = "Data Source=DESKTOP-C8O6GT4\\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;Encrypt=True;Trust Server Certificate=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Email = Session["Email"].ToString();
            Cnic = Session["cnic"].ToString();
            Name = Session["name"].ToString();

            Textbox1.Text = Name;
            TextBox2.Text = Email;
            TextBox7.Text = Cnic;

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void SubmitDetailsBtn_Click(object sender, EventArgs e)
        {
            Session["Gender"] = RadioButtonList1.Text;
            Session["Age"] = TextBox3.Text;
            Session["Phn_No"] = TextBox4.Text;
            Session["Address"] = TextBox5.Text;
            Session["Occupation"] = TextBox6.Text;
            Session["Province"] = DropDownList1.Text;
            Session["National_id"] = TextBox7.Text;
            Session["Voteid"] = TextBox8.Text;
            Response.Redirect("MainVote.aspx");

        }
    }
}