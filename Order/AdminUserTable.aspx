﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserTable.aspx.cs" Inherits="Order.AdminUserTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1">
        <tr>
            <th>Member ID</th>
            <th>Member Username</th>
            <th>Member Email</th>
            <th>Member Password</th>
            <th>Member Role</th>
            <th>Member Name</th>
            <th>Member Phone</th>
            <th></th>
        </tr>

        <asp:Repeater ID="MemberTableRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("MemberId") %></td>
                    <td><%# Eval("MemberUsername") %></td>
                    <td><%# Eval("MemberEmail") %></td>
                    <td><%# Eval("MemberPassword") %></td>
                    <td><%# Eval("MemberRole") %></td>
                    <td><%# Eval("MemberName") %></td>
                    <td><%# Eval("MemberPhone") %></td>
                    <td>
                        <asp:LinkButton ID="UserEditLinkBtn" runat="server" CommandArgument='<%# Eval("MemberId") %>' OnClick="UserEditLinkBtn_Click">Edit</asp:LinkButton>
                        <asp:LinkButton ID="UserDeleteBtn" runat="server" CommandArgument='<%# Eval("MemberId") %>'>Delete</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>