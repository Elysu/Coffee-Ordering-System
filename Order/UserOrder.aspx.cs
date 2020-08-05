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

            //command
            string userOrderQuery = "select * from Orders where MemberId='" + Session["MemberId"].ToString() + "'";
            SqlCommand cmdUserOrder = new SqlCommand(userOrderQuery, con);

            string img = "";

            //read from DB
            SqlDataReader reader = cmdUserOrder.ExecuteReader();
            while (reader.Read())
            {
                switch (reader["Flavor"].ToString())
                {
                    case "Classic Cappuccino":
                        img = "images/cappuccino/cappuccino.jpg";
                        break;
                    case "Iced Cappuccino":
                        img = "images/cappuccino/iced cappuccino.jpg";
                        break;
                    case "Classic Americano":
                        img = "images/americano/americano.jpg";
                        break;
                    case "Classic Latte":
                        img = "images/latte/latte.jpg";
                        break;
                    case "Vanilla Latte":
                        img = "images/latte/vanilla latte.jpg";
                        break;
                    case "Caramel Latte":
                        img = "images/latte/caramel latte.jpg";
                        break;
                    case "Mocha Latte":
                        img = "images/latte/mocha latte.jpg";
                        break;
                }

                orderTable.InnerHtml += "<div class='tm-product'>" +
                                            "<img src='" + img + "' alt='Product' width='136' height='136'>" +
                                            "<div class='tm-product-text'>" +
                                                "<h3 class='tm-product-title'>" + reader["Flavor"].ToString() + "</h3>" +
                                                "<p class='tm-product-description'>Order ID: " + reader["OrderId"].ToString() + "</p>" +
                                                "<p class='tm-product-description'>Quantity: " + reader["Quantity"].ToString() + "</p>" +
                                                "<p class='tm-product-description'>Toppings: " + reader["Topping"].ToString() + "</p>" +
                                                "<p class='tm-product-description'>Add Ons: " + reader["AddOns"].ToString() + "</p>" +
                                                "<a href=''></a>" +
                                            "</div>" +
                                            "<div class='tm-product-price'>" +
                                                "<a href = '#' class='tm-product-price-link tm-handwriting-font'>$" + reader["TotalPrice"].ToString() + "</a>" +
                                            "</div>" +
                                        "</div>";
            }

            con.Close();


        }
    }
}