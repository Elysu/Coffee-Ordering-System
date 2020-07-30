<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Order.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblLogout" runat="server" Text="Are you sure you want to logout?"></asp:Label>
    <asp:Button ID="logoutCancel" runat="server" Text="Cancel" OnClick="logoutCancel_Click" />
    <asp:Button ID="logoutConfirm" runat="server" Text="Logout" OnClick="logoutConfirm_Click" />
</asp:Content>
