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
            if (Session["MemberEmail"] != null)
            {
                Response.Redirect("Logout.aspx");
            }
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

                    string MemberIdQuery = "select MemberId from Members where MemberEmail='" + userEmail + "'";
                    SqlCommand cmdMemberId = new SqlCommand(MemberIdQuery, con);
                    string dbMemberId = cmdMemberId.ExecuteScalar().ToString();

                    string MemberUsernameQuery = "select MemberUsername from Members where MemberEmail='" + userEmail + "'";
                    SqlCommand cmdMemberUsername = new SqlCommand(MemberUsernameQuery, con);
                    string dbMemberUsername = cmdMemberUsername.ExecuteScalar().ToString();

                    string roleQuery = "select MemberPassword from Members where MemberEmail='" + userEmail + "'";
                    SqlCommand cmdRole = new SqlCommand(roleQuery, con);
                    string dbRole = cmdRole.ExecuteScalar().ToString();

                    if (userPassword != "")
                    {
                        if (dbPassword != "" && dbMemberId != "" && dbMemberUsername != "" && dbRole != "")
                        {
                            if (dbPassword == userPassword)
                            {
                                Session["MemberEmail"] = userEmail;
                                Session["MemberId"] = dbMemberId;
                                Session["MemberUsername"] = dbMemberUsername;
                                Session["MemberRole"] = dbRole;
                                Response.Redirect("index.aspx");
                            }
                            else
                            {
                                errorMsg.Text = "Incorrect Password";
                            }
                        }
                        else
                        {
                            errorMsg.Text = "Database error";
                        }
                    }
                }
                else
                {
                    errorMsg.Text = "User does not exists.";
                }
            } 
            else
            {
                errorMsg.Text = "";
            }
        }
    }
}