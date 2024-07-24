using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Default : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            s = Session["name"].ToString();
            string f= "Hello " + s + ", you are a Responsible Citizen";
            string styledText = $"<span class='styled-text'>{f}</span>";


        }
        protected void GetStarted_Click(object sender, EventArgs e)
        {
            // Code to execute when Button 1 is clicked
            Response.Redirect("Page2.aspx");
        }

        protected void LearnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("page2.aspx");
        }

        protected void CastBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Voting.aspx");
        }
    }
}