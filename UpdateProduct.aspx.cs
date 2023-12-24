using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;

namespace WebProject
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fn = Request.QueryString["fname"].Trim();
            flowernaming.Text = fn.ToString().Trim();
        }

        protected void confirm_Click(object sender, EventArgs e)
        {
            string fn = Request.QueryString["fname"].Trim();
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE productslist SET fname=@fname, fprice=@fprice WHERE fname=@fname;", con);
            cmd.Parameters.AddWithValue("@fname",flowernaming.Text.Trim());
            cmd.Parameters.AddWithValue("@fprice", price.Text.Trim());
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("~/updatedelete.aspx");
        }

        
    }
}