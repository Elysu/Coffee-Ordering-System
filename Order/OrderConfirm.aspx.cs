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
    public partial class OrderConfirm : System.Web.UI.Page
    {
        string sCoffeeType, sQuantity, sTopping, sAddOns;
        double totalPrice;
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            sCoffeeType = Session["CoffeeType"].ToString();
            sQuantity = Session["Quantity"].ToString();
            sTopping = Session["Topping"].ToString();
            sAddOns = Session["AddOns"].ToString();
            totalPrice = Convert.ToDouble(Session["TotalPrice"].ToString());

            //coffee types
            switch (sCoffeeType)
            {
                case "Classic Cappuccino":
                    image.ImageUrl = "images/cappuccino/cappuccino.jpg";
                    break;
                case "Iced Cappuccino":
                    image.ImageUrl = "images/cappuccino/iced cappuccino.jpg";
                    break;
                case "Classic Americano":
                    image.ImageUrl = "images/americano/americano.jpg";
                    break;
                case "Classic Latte":
                    image.ImageUrl = "images/latte/latte.jpg";
                    break;
                case "Vanilla Latte":
                    image.ImageUrl = "images/latte/vanilla latte.jpg";
                    break;
                case "Caramel Latte":
                    image.ImageUrl = "images/latte/caramel latte.jpg";
                    break;
                case "Mocha Latte":
                    image.ImageUrl = "images/latte/mocha latte.jpg";
                    break;
            }

            outputs();
        }

        protected void submitConfirm_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string insertData = "INSERT INTO Orders (MemberId, Flavor, Quantity, Topping, AddOns, TotalPrice)";
            insertData += "VALUES ('";
            insertData += Session["MemberId"].ToString() + "', '";
            insertData += sCoffeeType + "', '";
            insertData += Convert.ToInt32(sQuantity) + "', '";
            insertData += sTopping + "', '";
            insertData += sAddOns + "', '";
            insertData += totalPrice + "')";

            SqlCommand cmdInsertData = new SqlCommand(insertData, con);
            int added = 0;

            try
            {
                added = cmdInsertData.ExecuteNonQuery();

                //check if record was successfully inserted
                if (added > 0)
                {
                    output.InnerHtml = "<label id='orderSucess'>Your order has been confirmed, thank you.</label>";
                }
                else
                {
                    orderErrorMsg.Text = "Unsuccessful order, please try again later.";
                }
            }
            catch (Exception err)
            {
                orderErrorMsg.Text = "Order Error <br /> " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        private void clearLabels()
        {
            outputCoffee.Text = "";
            outputQuantity.Text = "";
            outputTopping.Text = "";
            outputAddOns.Text = "";
        }

        private void outputs()
        {
            outputCoffee.Text = sCoffeeType;
            outputQuantity.Text = sQuantity;
            outputTopping.Text = sTopping;
            outputAddOns.Text = sAddOns != "" ? sAddOns : "None";
            outputTotal.Text = "RM " + String.Format("{0:0.00}", totalPrice);
        }
    }
}