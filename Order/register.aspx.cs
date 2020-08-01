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
    public partial class register : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitReg_Click(object sender, EventArgs e)
        {
            string username = regUsername.Text;
            string email = regEmail.Text;
            string password = regPassword.Text;
            string name = regName.Text;
            string phone = regPhone.Text;

            if (reqRegUsername.IsValid &&
                reqRegEmail.IsValid &&
                reqRegPassword.IsValid &&
                reqRegConfirmPassword.IsValid &&
                compareRegConfirmPassword.IsValid &&
                reqRegName.IsValid &&
                reqRegPhone.IsValid)
            {
                SqlConnection con = new SqlConnection(connectionString);

                string checkEmailExist = "select count(*) from Members where MemberEmail='" + email + "'";
                SqlCommand cmdCheckEmail = new SqlCommand(checkEmailExist, con);
                int emailExist = Convert.ToInt32(cmdCheckEmail.ExecuteScalar().ToString());

                string checkUsernameExist = "select count(*) from Members where MemberEmail='" + username + "'";
                SqlCommand cmdCheckUsername = new SqlCommand(checkUsernameExist, con);
                int usernameExist = Convert.ToInt32(cmdCheckUsername.ExecuteScalar().ToString());

                if (emailExist != 1 && usernameExist != 1)
                {
                    string insertSQL = "INSERT INTO Members (MemberName, MemberPhone, MemberEmail, MemberPassword, MemberRole, MemberUsername)";
                    insertSQL += "VALUES ('";
                    insertSQL += name + "', '";
                }
                else
                {
                    switch (emailExist)
                    {
                        case 1:
                            {
                                regErrorEmail.Text += "This email was used by someone else.";
                                break;
                            }
                    }
                    switch (usernameExist)
                    {
                        case 1:
                            {
                                regErrorUsername.Text += "This username was used by someone else.";
                                break;
                            }
                    }
                }
            }
        }
    }
}