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
    public partial class UserOrderEditConfirm : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;

        string editFlavor, editTopping, editAddOns;
        int num, orderId, editBrownSugar, editWhiteSugar, editSalt, editCreamer, editStirrer, editQuantity;
        double totalPrice = 0.0;

        protected void Page_Load(object sender, EventArgs e)
        {
                editFlavor = Session["editFlavor"].ToString();
                editQuantity = Convert.ToInt32(Session["editQuantity"].ToString());
                editTopping = Session["editTopping"].ToString();
                editAddOns = Session["editAddOns"].ToString();
                editBrownSugar = Convert.ToInt32(Session["editBrownSugar"].ToString());
                editWhiteSugar = Convert.ToInt32(Session["editWhiteSugar"].ToString());
                editSalt = Convert.ToInt32(Session["editSalt"].ToString());
                editCreamer = Convert.ToInt32(Session["editCreamer"].ToString());
                editStirrer = Convert.ToInt32(Session["editStirrer"].ToString());
                totalPrice = Convert.ToDouble(Session["editTotalPrice"].ToString());

                //coffee types
                switch (editFlavor)
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
            setCoffee();
            orderId = num;

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string updateQuery = "UPDATE Orders SET Quantity=" + editQuantity + ", ";
            updateQuery += "Topping='" + editTopping + "', ";
            updateQuery += "BrownSugar=" + editBrownSugar + ", ";
            updateQuery += "WhiteSugar=" + editWhiteSugar + ", ";
            updateQuery += "Salt=" + editSalt + ", ";
            updateQuery += "Creamer=" + editCreamer + ", ";
            updateQuery += "Stirrer=" + editStirrer + ", ";
            updateQuery += "TotalPrice=" + totalPrice + " ";
            updateQuery += "WHERE OrderId=" + orderId;

            SqlCommand cmdUpdate = new SqlCommand(updateQuery, con);

            int added = 0;
            try
            {
                added = cmdUpdate.ExecuteNonQuery();

                //check if record was successfully inserted
                if (added > 0)
                {
                    output.InnerHtml = "<label id='OrderEditSuccess'>Your order has been updated.</label>";
                    output.InnerHtml += "<p><a href='userorderrepeater.aspx'>Back to My Orders</a></p>";
                    output.InnerHtml += "<p><a href='index.aspx'>Home</a></p>";
                }
                else
                {
                    orderUpdateErrorMsg.Text = "Order update failed, please try again later.";
                }
            }
            catch (Exception err)
            {
                orderUpdateErrorMsg.Text = "Order Update Error <br /> " + err.Message;
            }
            finally
            {
                con.Close();
            }
        }

        private void setCoffee()
        {
            string orderId = Global.OrderId;
            num = Int16.Parse(orderId);
        }

        private void outputs()
        {
            outputCoffee.Text = editFlavor;
            outputQuantity.Text = editQuantity.ToString();
            outputTopping.Text = editTopping;
            outputAddOns.Text = editAddOns != "" ? editAddOns : "None";
            outputTotal.Text = "RM " + String.Format("{0:0.00}", totalPrice);
        }
    }
}