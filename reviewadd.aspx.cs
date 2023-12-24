using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO review ([name], [comments], [rating]) VALUES (@name, @comment, @rate)", con);
            cmd.Parameters.AddWithValue("@name", rname.Text.Trim());
            cmd.Parameters.AddWithValue("@comment", rcomment.Text.Trim());
            cmd.Parameters.AddWithValue("@rate", rrating.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank you for your review!');</script>");
            Response.Redirect("~/home.aspx");
            con.Close();
        }
    }
}