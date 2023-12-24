using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (password.Text.Trim() == "1907083")
            {
                Response.Redirect("~/adminhandle.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Password!');</script>");
            }
        }
    }
}