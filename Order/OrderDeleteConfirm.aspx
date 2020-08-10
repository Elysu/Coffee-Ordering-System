<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderDeleteConfirm.aspx.cs" Inherits="Order.OrderDeleteConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblDeleteMsg" runat="server" Text="Are you sure you want to delete this order?"></asp:Label>
    <asp:Button ID="submitDelete" runat="server" Text="Yes" OnClick="submitDelete_Click" />
    <asp:Button ID="cancelDelete" runat="server" Text="No" OnClick="cancelDelete_Click" />
</asp:Content>
