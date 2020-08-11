﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserDelete.aspx.cs" Inherits="Order.AdminUserDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="outputAdminUserDelete" runat="server">
        <asp:Label ID="lblUserDeleteMsg" runat="server" Text="Are you sure you want to delete this user from your Member List?"></asp:Label>
        <asp:Button ID="submitUserDelete" runat="server" Text="Yes" OnClick="submitUserDelete_Click" />
        <asp:Button ID="cancelUserDelete" runat="server" Text="No" OnClick="cancelUserDelete_Click" />
        <asp:Label ID="userDeleteErrorMsg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
