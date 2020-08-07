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
        private static string connectionString = WebConfigurationManager.ConnectionStrings["userConn"].ConnectionString;
        string BrownSugar, WhiteSugar, Salt, Creamer, Stirrer, sTopping;
        int num, orderId, intQuantity;
        SqlConnection con = new SqlConnection(connectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            setCoffee();
            orderId = num;

            con.Open();

            string orderIdQuery = "select * from Orders where OrderId='" + orderId + "'";
            SqlCommand cmdOrderId = new SqlCommand(orderIdQuery, con);

            SqlDataReader reader = cmdOrderId.ExecuteReader();

            //set into order form
            while (reader.Read())
            {
                lblOrderId.Text += reader["OrderId"].ToString();
                lblCoffeeType.Text += reader["Flavor"].ToString();
                intQuantity = Convert.ToInt32(reader["Quantity"].ToString());

                sTopping = reader["Topping"].ToString();
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

                BrownSugar = reader["BrownSugar"].ToString();
                WhiteSugar = reader["WhiteSugar"].ToString();
                Salt = reader["Salt"].ToString();
                Creamer = reader["Creamer"].ToString();
                Stirrer = reader["Stirrer"].ToString();
            }

            con.Close();

            quantity.Text = intQuantity.ToString();

            string[] arrayAddOns = { BrownSugar, WhiteSugar, Salt, Creamer, Stirrer };
            for (int i = 0; i < arrayAddOns.Length; i++)
            {
                if (arrayAddOns[i] == "1")
                {
                    addOns.Items[i].Selected = true;
                }
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            setCoffee();
            orderId = num;

            string editQuantity = quantity.Text != null ? quantity.Text : "";
            string editTopping = topping.SelectedItem != null ? topping.SelectedItem.Text : ""; ;
            string editAddOns = "";
            int editBrownSugar = 0, editWhiteSugar = 0, editSalt = 0, editCreamer = 0, editStirrer = 0;

            //loop for Add-Ons price
            int count = 0;
            double priceAddOns = 0.00;

            for (int i = 0; i < addOns.Items.Count; i++)
            {
                if (addOns.Items[i].Selected)
                {
                    priceAddOns += Convert.ToDouble(addOns.Items[i].Value);
                    count++;

                    switch (i)
                    {
                        case 0:
                            editBrownSugar = 1;
                            break;
                        case 1:
                            editWhiteSugar = 1;
                            break;
                        case 2:
                            editSalt = 1;
                            break;
                        case 3:
                            editCreamer = 1;
                            break;
                        case 4:
                            editStirrer = 1;
                            break;
                    }
                }
            }

            int index = 1;
            foreach (ListItem listDeco in addOns.Items)
            {
                if (listDeco.Selected)
                {
                    editAddOns += listDeco.Text;

                    if (index >= 1 && index != count)
                    {
                        editAddOns += ", ";
                    }

                    index++;
                }
            }

            string updateQuery = "UPDATE Orders SET Quantity=" + Convert.ToInt32(editQuantity) + ", ";
            updateQuery += "Topping='" + editTopping + "', ";
            updateQuery += "BrownSugar=" + editBrownSugar + ", ";
            updateQuery += "WhiteSugar=" + editWhiteSugar + ", ";
            updateQuery += "Salt=" + editSalt + ", ";
            updateQuery += "Creamer=" + editCreamer + ", ";
            updateQuery += "Stirrer=" + editStirrer + " ";
            updateQuery += "WHERE OrderId=" + orderId;

            con.Open();
            SqlCommand cmdUpdate = new SqlCommand(updateQuery, con);

            int added = 0;
            try
            {
                added = cmdUpdate.ExecuteNonQuery();

                //check if record was successfully inserted
                if (added > 0)
                {
                    divOutput.InnerHtml = "<label id='orderSucess'>Your order has been updated.</label>";
                    divOutput.InnerHtml += "<p><a href='userorderrepeater.aspx'>Back to My Orders</a></p>";
                    divOutput.InnerHtml += "<p><a href='index.aspx'>Home</a></p>";
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
    }
}