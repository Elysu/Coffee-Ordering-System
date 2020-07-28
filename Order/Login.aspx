<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Order.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Email:<asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requiredEmail" runat="server" ErrorMessage="Email must not be empty" EnableClientScript="False" ControlToValidate="email"></asp:RequiredFieldValidator>

    <br />

    Password:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ErrorMessage="Password must not be empty" EnableClientScript="False" ControlToValidate="password"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rangePassword" runat="server" ErrorMessage="Password must be within 6 to 30 characters" EnableClientScript="False" ControlToValidate="requiredPassword" MinimumValue="6" MaximumValue="30"></asp:RangeValidator>

    <asp:Label ID="errorMsg" runat="server" Text=""></asp:Label>

    <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click" />
</asp:Content>