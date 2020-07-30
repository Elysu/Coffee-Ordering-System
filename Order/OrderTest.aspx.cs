using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class OrderTest : System.Web.UI.Page
    {
        string sCoffeeType, sQuantity, sTopping, sAddOns;
        int count, index;
        double priceAddOns, priceCoffeeType, priceTopping, priceQuantity, totalPrice;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            clearLabels();

            sCoffeeType = coffeeType.SelectedItem.Text;
            sQuantity = quantity.Text != null ? quantity.Text : "";
            sTopping = topping.SelectedItem != null ? topping.SelectedItem.Text : "";
            sAddOns = "";

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

            //loop for Add-Ons price
            count = 0;
            priceAddOns = 0.00;
            for (int i = 0; i < addOns.Items.Count; i++)
            {
                if (addOns.Items[i].Selected)
                {
                    priceAddOns += Convert.ToDouble(addOns.Items[i].Value);
                    count++;
                }
            }

            //loop for Add-Ons
            index = 1;
            foreach (ListItem listDeco in addOns.Items)
            {
                if (listDeco.Selected)
                {
                    sAddOns += listDeco.Text;

                    if (index >= 1 && index != count)
                    {
                        sAddOns += ", ";
                    }

                    index++;
                }
            }

            //calculate total price
            priceCoffeeType = Convert.ToDouble(coffeeType.SelectedValue);
            priceTopping = sTopping != "" ? Convert.ToDouble(topping.SelectedValue) : 0.0;
            priceQuantity = sQuantity != "" ? Convert.ToDouble(sQuantity) : 0.0;

            //(flavor+topping+(decocations)) * quantity
            totalPrice = (priceCoffeeType + priceTopping + priceAddOns) * priceQuantity;


            if (requiredQuantity.IsValid && rangeQuantity.IsValid && requiredTopping.IsValid)
            {
                outputs();
                output.Visible = true;
            }
            else
            {
                output.Visible = false;
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
            outputAddOns.Text = sAddOns!="" ? sAddOns : "None";
            outputTotal.Text = "RM " + String.Format("{0:0.00}", totalPrice);
        }

        /*
        protected void customDecoration_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            for (int i = 0; i < addOns.Items.Count; i++)
            {
                if (addOns.Items[i].Selected)
                {
                    args.IsValid = true;
                }
            }
        }
        */
    }
}