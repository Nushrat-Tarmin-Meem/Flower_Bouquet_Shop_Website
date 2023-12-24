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
    public partial class reviews : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT [name], [comments], [rating] FROM review", con);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            CoursesGridView.DataSource = dtbl;
            CoursesGridView.DataBind();
            con.Close();
        }
    }
}