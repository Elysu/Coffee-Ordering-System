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
            if (Session["MemberEmail"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (requiredQuantity.IsValid && rangeQuantity.IsValid && requiredTopping.IsValid)
            {
                sCoffeeType = coffeeType.SelectedItem.Text;
                sQuantity = quantity.Text != null ? quantity.Text : "";
                sTopping = topping.SelectedItem != null ? topping.SelectedItem.Text : "";
                sAddOns = "";

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

                Session["CoffeeType"] = sCoffeeType;
                Session["Quantity"] = sQuantity;
                Session["Topping"] = sTopping;
                Session["AddOns"] = sAddOns;
                Session["TotalPrice"] = totalPrice.ToString();

                Server.Transfer("OrderConfirm.aspx");
            }
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