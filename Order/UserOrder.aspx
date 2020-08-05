<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserOrder.aspx.cs" Inherits="Order.UserOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="menuContent" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
        <div class="tm-product">
            <img src="images/americano/americano.jpg" alt="Product" width="136" height="136">
            <div class="tm-product-text">
                <h3 class="tm-product-title">Classic Americano</h3>
                <p class="tm-product-description">Quantity: 2</p>
                <p class="tm-product-description">Topping: Blah</p>
                <p class="tm-product-description">Add Ons: White Sugar, Brown Sugar</p>
            </div>
            <div class="tm-product-price">
                <a href="#" class="tm-product-price-link tm-handwriting-font">$26.50</a>
            </div>
        </div>
    </div>
</asp:Content>
