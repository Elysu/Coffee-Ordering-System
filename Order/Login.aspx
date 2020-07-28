<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Order.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Email:<asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
    <br />
    Password:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
</asp:Content>
