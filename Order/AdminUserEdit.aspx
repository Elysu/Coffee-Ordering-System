<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminUserEdit.aspx.cs" Inherits="Order.AdminUserEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" id="outputAdminMember">
        <table>
            <tr>
                <td>Member ID:</td>
                <td>
                    <asp:Label ID="lblMemberId" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Member Username:</td>
                <td>
                    <asp:TextBox ID="txtboxUsername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ErrorMessage="Please fill in a username." ControlToValidate="txtboxUsername" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regExpUsername" runat="server" ControlToValidate="txtboxUsername" ErrorMessage="Username character must be more than 2" ValidationExpression=".{3}.*" EnableClientScript="False" ForeColor="Red" />
                    <asp:CustomValidator ID="customUsername" runat="server" ErrorMessage="This username has been taken" ForeColor="Red" EnableClientScript="false" ControlToValidate="txtboxUsername" OnServerValidate="customUsername_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Member Email:</td>
                <td>
                    <asp:TextBox ID="txtboxEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqEmail" runat="server" ErrorMessage="Please fill in a email." ControlToValidate="txtboxEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="customEmail" runat="server" ErrorMessage="This email has been taken" ForeColor="Red" EnableClientScript="false" ControlToValidate="txtboxEmail" OnServerValidate="customEmail_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>Member Password:</td>
                <td>
                    <asp:TextBox ID="txtboxPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ErrorMessage="Please fill in a password." ControlToValidate="txtboxPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regExpPassword" runat="server" ControlToValidate="txtboxPassword" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" EnableClientScript="False" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>Member Role:</td>
                <td>
                    <asp:DropDownList ID="ddlRole" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Member Name:</td>
                <td>
                    <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="Please fill in a name." ControlToValidate="txtboxName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Member Phone:</td>
                <td>
                    <asp:TextBox ID="txtboxPhone" runat="server" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqPhone" runat="server" ErrorMessage="Please fill in a phone number." ControlToValidate="txtboxPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="submitAdminUserEdit" runat="server" Text="Update" OnClick="submitAdminUserEdit_Click" />
                </td>
            </tr>
        </table>

        <br />

        <asp:Label ID="AdminMemberUpdateErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>