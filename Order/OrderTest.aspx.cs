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
        string sCoffeeType, sQuantity, sTopping, sDecoration;
        int count, index;
        double priceDecoration, priceCoffeeType, priceTopping, priceQuantity, totalPrice;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            clearLabels();

            sCoffeeType = coffeeType.SelectedItem.Text;
            sQuantity = quantity.Text != null ? quantity.Text : "";
            sTopping = topping.SelectedItem != null ? topping.SelectedItem.Text : "";
            sDecoration = "";

            //coffee types
            switch (sCoffeeType)
            {
                case "Cappuccino":
                    image.ImageUrl = "images/cappuccino.jpg";
                    break;
                case "Americano":
                    image.ImageUrl = "images/americano.jpg";
                    break;
                case "Latte":
                    image.ImageUrl = "images/latte.jpg";
                    break;
            }


            //loop for decoration price
            count = 0;
            priceDecoration = 0.00;
            for (int i = 0; i < decoration.Items.Count; i++)
            {
                if (decoration.Items[i].Selected)
                {
                    priceDecoration += Convert.ToDouble(decoration.Items[i].Value);
                    count++;
                }
            }

            //loop for decoration
            index = 1;
            foreach (ListItem listDeco in decoration.Items)
            {
                if (listDeco.Selected)
                {
                    sDecoration += listDeco.Text;

                    if (index >= 1 && index != count)
                    {
                        sDecoration += ", ";
                    }

                    index++;
                }
            }

            //calculate total price
            priceCoffeeType = Convert.ToDouble(coffeeType.SelectedValue);
            priceTopping = sTopping != "" ? Convert.ToDouble(topping.SelectedValue) : 0.0;
            priceQuantity = sQuantity != "" ? Convert.ToDouble(sQuantity) : 0.0;

            //(flavor+topping+(decocations)) * quantity
            totalPrice = (priceCoffeeType + priceTopping + priceDecoration) * priceQuantity;


            if (requiredQuantity.IsValid && rangeQuantity.IsValid && requiredTopping.IsValid && customDecoration.IsValid)
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
            outputDecoration.Text = "";
        }

        private void outputs()
        {
            outputCoffee.Text = sCoffeeType;
            outputQuantity.Text = sQuantity;
            outputTopping.Text = sTopping;
            outputDecoration.Text = sDecoration;
            outputTotal.Text = "RM " + String.Format("{0:0.00}", totalPrice);
        }

        protected void customDecoration_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;

            for (int i = 0; i < decoration.Items.Count; i++)
            {
                if (decoration.Items[i].Selected)
                {
                    args.IsValid = true;
                }
            }
        }
    }
}