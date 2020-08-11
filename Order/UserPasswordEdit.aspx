<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserPasswordEdit.aspx.cs" Inherits="Order.UserPasswordEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="tm-section row">
        <div>
            <div class="col-lg-3 col-md-3">
                <div class="tm-position-relative margin-bottom-30">
                    <nav class="tm-side-menu">
                        <ul>
                            <li><a id="btnEditProfile" runat="server" href="UserProfileEdit.aspx">Profile</a></li>
                            <li><hr class="tm-hr"></li>
                            <li><a id="btnEditPassword" runat="server" class="active" href="UserPasswordEdit.aspx">Security</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div id="menuContent" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
                <table>
                    <tr>
                        <td>Current Password:</td>
                        <td>
                            <asp:TextBox ID="txtboxCurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqCurrentPassword" runat="server" ErrorMessage="Current Password is required" ControlToValidate="txtboxCurrentPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regExpCurrentPassword" runat="server" ControlToValidate="txtboxCurrentPassword" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" EnableClientScript="False" ForeColor="Red"/>
                        </td>
                    </tr>
                    <tr>
                        <td>New Password:</td>
                        <td>
                            <asp:TextBox ID="txtboxNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqNewPassword" runat="server" ErrorMessage="New Password is required" ControlToValidate="txtboxNewPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regExpNewPassword" runat="server" ControlToValidate="txtboxNewPassword" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" EnableClientScript="False" ForeColor="Red"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm New Password:</td>
                        <td>
                            <asp:TextBox ID="txtboxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ErrorMessage="Confirm New Password is required" ControlToValidate="txtboxConfirmPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="compareConfirmPassword" runat="server" ErrorMessage="Confirm New Password must be the same as New Password" ControlToValidate="txtboxConfirmPassword" EnableClientScript="False" ForeColor="Red" ControlToCompare="txtboxNewPassword"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="submitChangePW" runat="server" Text="Change Password" OnClick="submitChangePW_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
