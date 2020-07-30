using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void logoutCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void logoutConfirm_Click(object sender, EventArgs e)
        {
            Session["MemberEmail"] = null;
            Session["MemberId"] = null;
            Session["MemberRole"] = null;
            Response.Redirect("index.aspx");
        }
    }
}