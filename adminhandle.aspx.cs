using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class adminhandle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RegisterDetails.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/productadd.aspx");
        }

        protected void ud_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/updatedelete.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/home.aspx");
        }

        protected void orders_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/orderdetails.aspx");

        }
    }
}