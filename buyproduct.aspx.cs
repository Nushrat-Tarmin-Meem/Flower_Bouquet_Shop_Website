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
    public partial class buyproduct : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            flowername.Text = Request.QueryString[0];
            flowerprice.Text = Request.QueryString[1];
            String s = Request.QueryString[2];
            s = String.Concat("~/FlowerImages/", s);
            Image1.ImageUrl = s;
            status.Text = "Pending";
            HttpCookie cookie = Request.Cookies["UserInfo"];

            if (cookie != null)
            {
                mail.Text = cookie["mail"].ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            dd.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO orders ([fname], [fprice], [mail], [phone], [location], [date], [payment], [tid], [status]) VALUES (@f, @pr, @m, @ph, @l, @d, @pa, @t, @s)", con);
            cmd.Parameters.AddWithValue("@f", flowername.Text.Trim());
            cmd.Parameters.AddWithValue("@pr", flowerprice.Text.Trim());
            cmd.Parameters.AddWithValue("@m", mail.Text.Trim());
            cmd.Parameters.AddWithValue("@ph", phoneno.Text.Trim());
            cmd.Parameters.AddWithValue("@l", l.Text.Trim());
            cmd.Parameters.AddWithValue("@d", dd.Text.Trim());
            cmd.Parameters.AddWithValue("@pa", ddl.Text.Trim());
            cmd.Parameters.AddWithValue("@t", tid.Text.Trim());
            cmd.Parameters.AddWithValue("@s", status.Text.Trim());
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank you for your order. It's on pending now!');</script>");
            Response.Redirect("~/userdetails.aspx");
            con.Close();
        }
    }
}