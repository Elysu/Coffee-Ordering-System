<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserOrder.aspx.cs" Inherits="Order.AdminUserOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="orderTable" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->   
        <asp:Repeater ID="repeaterAdminOrder" runat="server">
            <ItemTemplate>
                <div class='tm-product'>
                    <asp:Image ID="coffeeImage" ImageUrl='<%# GetImage(Eval("Flavor").ToString()) %>' runat="server" Width="136px" Height="136px" />
                    <div class='tm-product-text OrderRepeaterDetails'>
                        <asp:LinkButton ID="orderLinkButton" runat="server" CommandArgument='<%# Eval("OrderId").ToString() %>' OnClick="sendOrderID">
                            <h3 class="tm-product-title"><%# Eval("Flavor") %></h3>
                        </asp:LinkButton>
                        <p class='tm-product-description'>Order ID: <%# Eval("OrderId") %></p>
                        <p class='tm-product-description'>Status: <%# Eval("Status") %></p>
                        <p class='tm-product-description'>Quantity: <%# Eval("Quantity") %></p>
                        <p class='tm-product-description'>Toppings: <%# Eval("Topping") %></p>
                        <p id="pAddOns" class='tm-product-description'>Add Ons: <%# AddOns(Eval("BrownSugar").ToString(), Eval("WhiteSugar").ToString(), Eval("Salt").ToString(), Eval("Creamer").ToString(), Eval("Stirrer").ToString()) %></p>
                    </div>
                    <div class='tm-product-price'>
                        <a href='#' class='tm-product-price-link tm-handwriting-font'>$<%# Eval("TotalPrice") %></a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
