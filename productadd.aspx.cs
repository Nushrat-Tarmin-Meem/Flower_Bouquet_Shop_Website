using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.IO;
using System.Data;

namespace WebProject
{
    public partial class productadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                clearfn();
            }
        }
        protected void confirm_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension==".jfif")
                    {
                        string fname = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("FlowerImages/") + fname);
                        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString))
                        {
                            con.Open();
                            SqlCommand cmd = new SqlCommand("insert into productslist values('" + flowername.Text + "','" + price.Text + "','" + FileUpload1.FileName + "')", con);
                            int t = cmd.ExecuteNonQuery();
                            if (t > 0)
                            {
                                Response.Write("<script>alert('File has been uploaded successfully!')</script>");
                                clearfn();
                            }
                        }
                    }
                    else
                    {
                        lblmsg.Text = "Only Image Extension Files are Accepted!";
                        lblmsg.ForeColor = System.Drawing.Color.Red;                    }
                }
                catch (Exception ex)
                {
                    lblmsg.Text = "File Upload Error:" + ex.Message;
                }
            }
        }

        public void clearfn()
        {
            flowername.Text = "";
            price.Text = "";
            lblmsg.Text = "";
        }

        protected void shop_Click(object sender, EventArgs e)
        {
            Response.Redirect("shop.aspx");
        }

        protected void shop0_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminhandle.aspx");
        }
    }
}