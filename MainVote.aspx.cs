using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Linq;

namespace Project
{
    public partial class MainVote : System.Web.UI.Page
    {
        static string conString = "Data Source=DESKTOP-C8O6GT4\\SQLEXPRESS;Initial Catalog=VotingSystem;Integrated Security=True;";
        public string Email;
        public string Cnic;
        public string Name;
        public string Gender;
        public string Age;
        public string Phn_No;
        public string Address;
        public string Occupation;
        public string Province;
        public string National_id;
        public string Voteid;
        public string Vote;



        // Assuming you have a method to check if the user has already voted
        public bool HasUserVoted(string userId, string votedItemId)
        {
            // Perform a database query to check if there's a record
            using (var connection = new SqlConnection(conString))
            {
                connection.Open();
                var query = "SELECT COUNT(*) FROM VDetails WHERE NationalID = @Cnic AND Email = @Email ";
                var command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", Email);
                command.Parameters.AddWithValue("@Cnic", Cnic);
                var count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            Email = Session["Email"].ToString();
            Cnic = Session["cnic"].ToString();
            Name = Session["name"].ToString();
            Gender= Session["Gender"].ToString();
            Age = Session["Age"].ToString();
            Phn_No = Session["Phn_No"].ToString();
            Address = Session["Address"].ToString();
            Occupation = Session["Occupation"].ToString();
            Province = Session["Province"].ToString();
            National_id = Session["National_id"].ToString();
            Voteid = Session["Voteid"].ToString();
            
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            if (RadioButton2.Checked)
            {
                Vote = "PTI";
            }
            else if (RadioButton1.Checked)
            {
                Vote = "PML-N";
            }
            else if (RadioButton3.Checked)
            {
                Vote = "PPP";
            }
            else if(RadioButton4.Checked)
            {
                Vote = "JI";
            }

            if (HasUserVoted(Email, Cnic))
            {
                // User has already voted for this item, show a message or handle accordingly
                // For example:
                Label1.Text = "You have already voted";
            }
            else
            {
                // Insert the new vote into the database
                using (SqlConnection connection = new SqlConnection(conString))
                {

                    string query = "INSERT INTO VDetails VALUES (@Name, @Email, @Gender, @Age, @PhoneNumber, @ResidentialAddress,@Occupation,@Province,@NationalID,@VoteID,@Vote)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@Name", Name);
                        command.Parameters.AddWithValue("@Email", Email);
                        command.Parameters.AddWithValue("@Gender", Gender);
                        command.Parameters.AddWithValue("@Age", Age);
                        command.Parameters.AddWithValue("@PhoneNumber", Phn_No);
                        command.Parameters.AddWithValue("@ResidentialAddress", Address);
                        command.Parameters.AddWithValue("@Occupation", Occupation);
                        command.Parameters.AddWithValue("@Province", Province);
                        command.Parameters.AddWithValue("@NationalID", National_id);
                        command.Parameters.AddWithValue("@VoteID", Voteid);
                        command.Parameters.AddWithValue("@Vote", Vote);
                        connection.Open();
                        command.ExecuteNonQuery();
                    }
                }
                Label2.Text = "You voted Successfully";
                Label1.Text = "";
            }
            
        }
    }
}