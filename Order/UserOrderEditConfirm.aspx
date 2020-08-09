<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserOrderEditConfirm.aspx.cs" Inherits="Order.UserOrderEditConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="output" runat="server">
        ORDER UPDATE DETAILS: 
        <br />
        <p>Please double check before updating your order.</p>
        <br />
        <br />

        <asp:Image ID="image" runat="server" Width="400px" Height="300px" />
        <br />
        <br />

        Coffee: 
        <asp:Label ID="outputCoffee" runat="server"></asp:Label>
        <br />

        Quantity: 
        <asp:Label ID="outputQuantity" runat="server"></asp:Label>
        <br />

        Topping: 
        <asp:Label ID="outputTopping" runat="server"></asp:Label>
        <br />

        Decoration: 
        <asp:Label ID="outputAddOns" runat="server"></asp:Label>
        <br />

        Total Price: 
        <asp:Label ID="outputTotal" runat="server"></asp:Label>

        <br />

        <asp:Button ID="submitConfirm" runat="server" Text="Confirm" OnClick="submitConfirm_Click"/>

        <br />

        <asp:Label ID="orderUpdateErrorMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
