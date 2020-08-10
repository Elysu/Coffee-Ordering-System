<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Order.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>LOGIN TO YOUR ACCOUNT</h2>

    <br />

    Email:<asp:TextBox ID="loginEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqLoginEmail" runat="server" ErrorMessage="Email must not be empty" EnableClientScript="False" ControlToValidate="loginEmail" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

    Password:<asp:TextBox ID="loginPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqLoginPassword" runat="server" ErrorMessage="Password must not be empty" EnableClientScript="False" ControlToValidate="loginPassword" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

    <asp:Label ID="loginErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>

    <br />

    <asp:Button ID="submitLogin" runat="server" Text="Login" OnClick="submitLogin_Click" />
</asp:Content>