<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserOrderRepeater.aspx.cs" Inherits="Order.UserOrderRepeater" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="orderTable" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
        <asp:Repeater ID="repeaterOrder" runat="server">
            <ItemTemplate>

                <div class='tm-product'>
                        <asp:Image ID="coffeeImage" ImageUrl="images/cappuccino/cappuccino.jpg" runat="server" Width="136px" Height="136px"/>
                        <div class='tm-product-text'>
                            <h3 class="tm-product-title"><%# Eval("Flavor") %></h3>
                            <p class='tm-product-description'>Order ID: <%# Eval("OrderId") %></p>
                            <p class='tm-product-description'>Quantity: <%# Eval("Quantity") %></p>
                            <p class='tm-product-description'>Toppings: <%# Eval("Topping") %></p>
                            <p id="pAddOns" class='tm-product-description'>Add Ons: </p>
                        </div>
                        <div class='tm-product-price'>
                            <a href = '#' class='tm-product-price-link tm-handwriting-font'>$<%# Eval("TotalPrice") %></a>
                        </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
