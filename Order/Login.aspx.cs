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
            if (requiredPassword.IsValid && requiredEmail.IsValid)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userConn"].ToString());

                string userEmail = email.Text;
                string userPassword = password.Text;

                con.Open();
                string query = "select count(*) from Members where MemberEmail='"+userEmail+"'";

                SqlCommand cmd = new SqlCommand(query, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                con.Close();

                if (temp == 1)
                {
                    con.Open();
                    string checkPasswordQuery = "select MemberPassword from Members where MemberEmail='"+userEmail+"'";
                    SqlCommand cmdPassword = new SqlCommand(checkPasswordQuery, con);

                    string dbPassword = cmdPassword.ExecuteScalar().ToString().Replace(" ", "");

                    if (userPassword != "")
                    {
                        if (dbPassword == userPassword)
                        {
                            Session["New"] = userEmail;
                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            errorMsg.Text = "Incorrect Password";
                        }
                    } else
                    {
                        errorMsg.Text = "";
                    }
                }
                else
                {
                    errorMsg.Text = "User does not exists.";
                }
            } else
            {
                errorMsg.Text = "";
            }
        }
    }
}