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
    public partial class UserOrderEdit : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;
        string orderId, coffeeType;
        int num;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            setCoffee();
            orderId = num.ToString();

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string orderIdQuery = "select * from Orders where OrderId='" + orderId + "'";
            SqlCommand cmdOrderId = new SqlCommand(orderIdQuery, con);

            SqlDataReader reader = cmdOrderId.ExecuteReader();
            while (reader.Read())
            {
                lblOrderId.Text = reader["OrderId"].ToString();
                lblCoffeeType.Text = reader["Flavor"].ToString();
                quantity.Text = reader["Quantity"].ToString();

                switch (reader["Topping"].ToString())
                {
                    case "Cinnamon":
                        topping.SelectedIndex = 0;
                        break;
                    case "Whipped Cream":
                        topping.SelectedIndex = 1;
                        break;
                    case "Nutmeg":
                        topping.SelectedIndex = 2;
                        break;
                    case "None":
                        topping.SelectedIndex = 3;
                        break;
                }


            }
        }

        private void setCoffee()
        {
            string orderId = Global.OrderId;
            num = Int16.Parse(orderId);
        }
    }
}