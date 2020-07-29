<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Order.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Email:<asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requiredEmail" runat="server" ErrorMessage="Email must not be empty" EnableClientScript="False" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

    Password:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ErrorMessage="Password must not be empty" EnableClientScript="False" ControlToValidate="password" ForeColor="Red"></asp:RequiredFieldValidator>

    <asp:Label ID="errorMsg" runat="server" Text=""></asp:Label>

    <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click" />
</asp:Content>