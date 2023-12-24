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
    public partial class shop : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                DLbind();
            }
        }

        protected void DLbind()
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from productslist",con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows == true)
                {
                    DataList1.DataSource = dr;
                    DataList1.DataBind();
                }
            }
        }


        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "viewdetail")
            {
                string[] s = e.CommandArgument.ToString().Split(',');
                Response.Redirect("buyproduct.aspx?flowername=" + s[0].ToString() + "&flowerprice=" + s[1].ToString() + "&flowerimage=" + s[2].ToString() +"");
            }
        }
    }

}