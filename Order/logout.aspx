<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Order.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-bg-color SetToCenter">
        <asp:Label ID="lblLogout" runat="server" Text="Are you sure you want to logout?" CssClass="OrderLabels"></asp:Label>
        <br />
        <asp:Button ID="logoutConfirm" runat="server" Text="Logout" OnClick="logoutConfirm_Click" CssClass="btnShort"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="logoutCancel" runat="server" Text="Cancel" OnClick="logoutCancel_Click" CssClass="btnShort"/>
    </div>
</asp:Content>
