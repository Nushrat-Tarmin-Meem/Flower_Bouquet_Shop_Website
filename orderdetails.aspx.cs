using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class orderdetails : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM orders", con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            CoursesGridView.DataSource = dtbl;
            CoursesGridView.DataBind();
            con.Close();

        }

        protected void CoursesGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "accept")
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE orders SET status=@status WHERE fname=@fname", con);
                cmd.Parameters.AddWithValue("@fname", e.CommandArgument);
                cmd.Parameters.AddWithValue("@status", "Order Accepted");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("orderdetails.aspx");
            }
            else if (e.CommandName == "decline")
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("UPDATE orders SET status=@status WHERE fname=@fname", con);
                cmd.Parameters.AddWithValue("@fname", e.CommandArgument);
                cmd.Parameters.AddWithValue("@status", "Order Declined");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("orderdetails.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhandle.aspx");
        }
    }
}