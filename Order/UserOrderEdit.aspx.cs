using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class UserOrderEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void setCoffee()
        {
            string orderId = Global.OrderId;
            int num = Int16.Parse(orderId);
        }
    }
}