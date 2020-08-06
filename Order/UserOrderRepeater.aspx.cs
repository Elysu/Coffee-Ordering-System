using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class UserOrderRepeater : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            DataSet ds = GetData();

            repeaterOrder.DataSource = ds;
            repeaterOrder.DataBind();
        }

        private DataSet GetData()
        {
            SqlConnection con = new SqlConnection(connectionString);
            string userOrderQuery = "select * from Orders where MemberId='" + Session["MemberId"].ToString() + "'";
            using (con)
            {
                SqlDataAdapter da = new SqlDataAdapter(userOrderQuery, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}