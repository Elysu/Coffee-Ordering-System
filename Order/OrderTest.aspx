<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderTest.aspx.cs" Inherits="Order.OrderTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            Coffee: <asp:DropDownList ID="coffeeType" runat="server">
                <asp:ListItem Value="4.50" Text="Classic Cappuccino">Classic Cappuccino</asp:ListItem>
                <asp:ListItem Value="4.90" Text="Iced Cappuccino">Iced Cappuccino</asp:ListItem>
                <asp:ListItem Value="4.60" Text="Wet Cappuccino">Wet Cappuccino</asp:ListItem>
                <asp:ListItem Value="4.70" Text="Dry Cappuccino">Dry Cappuccino</asp:ListItem>
                <asp:ListItem Value="5.00" Text="Classic Americano">Classic Americano</asp:ListItem>
                <asp:ListItem Value="4.20" Text="Classic Latte">Classic Latte</asp:ListItem>
                <asp:ListItem Value="4.30" Text="Vanilla Latte">Vanilla Latte</asp:ListItem>
                <asp:ListItem Value="4.40" Text="Caramel Latte">Caramel Latte</asp:ListItem>
                <asp:ListItem Value="4.80" Text="Mocha Latte">Mocha Latte</asp:ListItem>
            </asp:DropDownList>

            Quantity: <br />
            <asp:TextBox ID="quantity" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredQuantity" runat="server" ControlToValidate="quantity" EnableClientScript="False" ErrorMessage="Quantity is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rangeQuantity" runat="server" ErrorMessage="Number must be 1 to 12" EnableClientScript="False" ControlToValidate="quantity" MaximumValue="12" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            <br />
            <br />
            <br />

            Topping: <br />
            <asp:RadioButtonList ID="topping" runat="server">
                <asp:ListItem Value="2.50" Text="Cinnamon"></asp:ListItem>
                <asp:ListItem Value="3.50" Text="Whipped Cream"></asp:ListItem>
                <asp:ListItem Value="2.00" Text="Nutmeg"></asp:ListItem>
                <asp:ListItem Value="0.00" Text="None"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="requiredTopping" runat="server" ControlToValidate="topping" EnableClientScript="False" ErrorMessage="Topping is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            
            <br />

            Decoration: <br />
            <asp:CheckBoxList ID="decoration" runat="server">
                <asp:ListItem Value="3.00" Text="M&amp;M"></asp:ListItem>
                <asp:ListItem Value="1.00" Text="Snickers"></asp:ListItem>
                <asp:ListItem Value="1.50" Text="Oreo"></asp:ListItem>
            </asp:CheckBoxList>
            <asp:CustomValidator ID="customDecoration" runat="server" ErrorMessage="Decoration is required!" EnableClientScript="False" ForeColor="Red" OnServerValidate="customDecoration_ServerValidate"></asp:CustomValidator>

            <br />

            <asp:Button ID="submit" runat="server" Text="Submit Order" OnClick="submit_Click" />
        </div>

    <div id="output" runat="server" visible="false">
        ORDER DETAILS: 
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
        <asp:Label ID="outputDecoration" runat="server"></asp:Label>
        <br />

        Total Price: 
        <asp:Label ID="outputTotal" runat="server"></asp:Label>
    </div>
</asp:Content>
