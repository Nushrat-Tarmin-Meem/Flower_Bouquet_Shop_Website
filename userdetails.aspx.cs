using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace WebProject
{
    public partial class userdetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];

            if(cookie!=null)
            {
                mail.Text = cookie["mail"].ToString();

            }


            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM orders", con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            CoursesGridView.DataSource = dtbl;
            CoursesGridView.DataBind();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");

        }

    }
}