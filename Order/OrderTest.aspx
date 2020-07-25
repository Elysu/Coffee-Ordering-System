<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderTest.aspx.cs" Inherits="Order.OrderTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            Coffee: <asp:DropDownList ID="coffeeType" runat="server">
                <asp:ListItem Value="4.50" Text="Classic Cappuccino">Classic Cappuccino</asp:ListItem>
                <asp:ListItem Value="4.90" Text="Iced Cappuccino">Iced Cappuccino</asp:ListItem>
                <asp:ListItem Value="5.00" Text="Classic Americano">Classic Americano</asp:ListItem>
                <asp:ListItem Value="4.20" Text="Classic Latte">Classic Latte</asp:ListItem>
                <asp:ListItem Value="4.30" Text="Vanilla Latte">Vanilla Latte</asp:ListItem>
                <asp:ListItem Value="4.40" Text="Caramel Latte">Caramel Latte</asp:ListItem>
                <asp:ListItem Value="4.80" Text="Mocha Latte">Mocha Latte</asp:ListItem>
            </asp:DropDownList>

            <br />
            <br />

            Quantity: <br />
            <asp:TextBox ID="quantity" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requiredQuantity" runat="server" ControlToValidate="quantity" EnableClientScript="False" ErrorMessage="Quantity is required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="rangeQuantity" runat="server" ErrorMessage="Number must be 1 to 12" EnableClientScript="False" ControlToValidate="quantity" MaximumValue="12" MinimumValue="1" Type="Integer" ForeColor="Red"></asp:RangeValidator>
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

            Add-Ons: <br />
            <asp:CheckBoxList ID="addOns" runat="server">
                <asp:ListItem Value="0.50" Text="Brown Sugar"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="White Sugar"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Salt"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Creamer"></asp:ListItem>
                <asp:ListItem Value="0.50" Text="Stirrer"></asp:ListItem>
            </asp:CheckBoxList>

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
        <asp:Label ID="outputAddOns" runat="server"></asp:Label>
        <br />

        Total Price: 
        <asp:Label ID="outputTotal" runat="server"></asp:Label>
    </div>
</asp:Content>
