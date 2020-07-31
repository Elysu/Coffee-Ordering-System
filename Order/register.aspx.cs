using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitReg_Click(object sender, EventArgs e)
        {
            if (reqRegUsername.IsValid &&
                reqRegEmail.IsValid &&
                reqRegPassword.IsValid &&
                reqRegConfirmPassword.IsValid &&
                compareRegConfirmPassword.IsValid &&
                reqRegName.IsValid &&
                reqRegPhone.IsValid)
            {
                regErrorMsg.Text = "Successful";
            }
        }
    }
}