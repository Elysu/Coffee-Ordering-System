<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserTable.aspx.cs" Inherits="Order.AdminUserTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MemberId" DataSourceID="AdminUserEditDS" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="MemberId" HeaderText="MemberId" InsertVisible="False" ReadOnly="True" SortExpression="MemberId" />
        <asp:BoundField DataField="MemberName" HeaderText="MemberName" SortExpression="MemberName" />
        <asp:BoundField DataField="MemberPhone" HeaderText="MemberPhone" SortExpression="MemberPhone" />
        <asp:BoundField DataField="MemberEmail" HeaderText="MemberEmail" SortExpression="MemberEmail" />
        <asp:BoundField DataField="MemberPassword" HeaderText="MemberPassword" SortExpression="MemberPassword" />
        <asp:BoundField DataField="MemberRole" HeaderText="MemberRole" SortExpression="MemberRole" />
        <asp:BoundField DataField="MemberUsername" HeaderText="MemberUsername" SortExpression="MemberUsername" />
    </Columns>
        <SelectedRowStyle BackColor="#FFCC66" />
</asp:GridView>
<asp:SqlDataSource ID="AdminUserEditDS" runat="server" ConnectionString="<%$ ConnectionStrings:GridViewCS %>" DeleteCommand="DELETE FROM [Members] WHERE [MemberId] = @MemberId" InsertCommand="INSERT INTO [Members] ([MemberName], [MemberPhone], [MemberEmail], [MemberPassword], [MemberRole], [MemberUsername]) VALUES (@MemberName, @MemberPhone, @MemberEmail, @MemberPassword, @MemberRole, @MemberUsername)" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [MemberName] = @MemberName, [MemberPhone] = @MemberPhone, [MemberEmail] = @MemberEmail, [MemberPassword] = @MemberPassword, [MemberRole] = @MemberRole, [MemberUsername] = @MemberUsername WHERE [MemberId] = @MemberId">
    <DeleteParameters>
        <asp:Parameter Name="MemberId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MemberName" Type="String" />
        <asp:Parameter Name="MemberPhone" Type="String" />
        <asp:Parameter Name="MemberEmail" Type="String" />
        <asp:Parameter Name="MemberPassword" Type="String" />
        <asp:Parameter Name="MemberRole" Type="String" />
        <asp:Parameter Name="MemberUsername" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="MemberName" Type="String" />
        <asp:Parameter Name="MemberPhone" Type="String" />
        <asp:Parameter Name="MemberEmail" Type="String" />
        <asp:Parameter Name="MemberPassword" Type="String" />
        <asp:Parameter Name="MemberRole" Type="String" />
        <asp:Parameter Name="MemberUsername" Type="String" />
        <asp:Parameter Name="MemberId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
