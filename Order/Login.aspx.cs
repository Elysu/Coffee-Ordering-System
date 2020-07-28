using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (rangePassword.IsValid && requiredPassword.IsValid && requiredEmail.IsValid)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userCon"].ToString());

                string userEmail = email.Text;
                string userPassword = password.Text;

                con.Open();
                string query = "select * from Members where MemberEmail='"+userEmail+"' and MemberPassword='"+userPassword+"'";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if(sdr.Read())
                {
                    Response.Redirect("index.aspx");
                } else
                {
                    errorMsg.Text = "Incorrect Email or Password!";
                }
            }
        }
    }
}