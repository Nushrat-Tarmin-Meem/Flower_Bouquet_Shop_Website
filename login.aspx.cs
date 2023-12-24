using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebProject
{
    public partial class WebForm1 : System.Web.UI.Page

    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void button_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Server=LAPTOP-QNOGBDF1\\SQLEXPRESS;Database=webproject;Trusted_Connection=True");
            SqlCommand cmd = new SqlCommand("Select * from register where email=@mail and password=@pass",con);
            cmd.Parameters.AddWithValue("@mail", email.Text);
            cmd.Parameters.AddWithValue("@pass", password.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "register");
            if (ds.Tables["register"].Rows.Count==0)
            {
                Response.Write("Invalid User!");
            }
            else
            {
                HttpCookie cookie = new HttpCookie("UserInfo");
                cookie["mail"] = email.Text;
                cookie.Expires = DateTime.Now.AddDays(7);
                Response.Cookies.Add(cookie);
                Response.Redirect("userdetails.aspx");
                Response.Redirect("buyproduct.aspx");
            }

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }

}