using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = this.Page.Request.FilePath;

            switch (currentPage)
            {
                case "/index.aspx":
                    homeButton.Attributes["class"] = "active";
                    break;
                case "/menu.aspx":
                    menuButton.Attributes["class"] = "active";
                    break;
                case "/contact.aspx":
                    contactButton.Attributes["class"] = "active";
                    break;
            }
        }
    }
}