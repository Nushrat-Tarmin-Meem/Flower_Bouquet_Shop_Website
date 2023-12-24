using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Diagnostics;

namespace WebProject
{
    public partial class updatedelete : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT [fname], [fprice], [fimage] FROM productslist", con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            CoursesGridView.DataSource = dtbl;
            CoursesGridView.DataBind();
            con.Close();
        }

        protected void updatedeleteCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "upd")
            {
                Response.Redirect("~/UpdateProduct.aspx?fname="+ e.CommandArgument.ToString().Trim() +"");
            }
            else if(e.CommandName == "del")
            {
                SqlConnection con = new SqlConnection(strcon);
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM productslist WHERE fname=@fname", con);
                cmd.Parameters.AddWithValue("@fname", e.CommandArgument);
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("~/updatedelete.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/shop.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/adminhandle.aspx");
        }
    }
}