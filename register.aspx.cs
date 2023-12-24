using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Register ([email], [phonenumber], [password]) VALUES (@mail, @phone, @pass)", con);
            cmd.Parameters.AddWithValue("@mail", email.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", phone.Text.Trim());
            cmd.Parameters.AddWithValue("@pass", password.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registration Successful!');</script>");
            Response.Redirect("~/shop.aspx");
            con.Close();
            
        }
    }
}