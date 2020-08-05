using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class UserOrder : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string userOrderQuery = "select * from Orders where MemberId='" + Session["MemberId"].ToString() + "'";
            SqlCommand cmdUserOrder = new SqlCommand(userOrderQuery, con);
        }
    }
}