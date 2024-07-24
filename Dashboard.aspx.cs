using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public static string Tlogins;
        public static string TVotes;
        public static string PTI;
        public static string PML;
        public static string PPP;
        public static string JI;

        protected void Page_Load(object sender, EventArgs e)
        {
            Tlogins = Session["Logins"].ToString();
            TVotes = Session["Votes"].ToString();
            PTI = Session["PTI"].ToString();
            PML = Session["PML"].ToString();
            PPP = Session["PPP"].ToString();
            JI = Session["JI"].ToString();

            DataTable dtbl = new DataTable();
            dtbl.Columns.Add("Total-voters", typeof(string));
            dtbl.Columns.Add("PTI", typeof(string));
            dtbl.Columns.Add("PMLN", typeof(string));
            dtbl.Columns.Add("PPP", typeof(string));
            dtbl.Columns.Add("JI", typeof(string));
            dtbl.Rows.Add(Tlogins, PTI, PML, PPP, JI);
            // Bind the DataTable to GridView
            gvPhoneBook.DataSource = dtbl;
            gvPhoneBook.DataBind();
        }

    }
    
}