<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfileEdit.aspx.cs" Inherits="Order.UserProfileEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="tm-section row">
        <div>
            <div class="col-lg-3 col-md-3">
                <div class="tm-position-relative margin-bottom-30">
                    <nav class="tm-side-menu">
                        <ul>
                            <li><a id="btnEditProfile" runat="server" class="active" href="UserProfileEdit.aspx">Profile</a></li>
                            <li><hr class="tm-hr"></li>
                            <li><a id="btnEditPassword" runat="server" href="UserPasswordEdit.aspx">Security</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div id="menuContent" runat="server" class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->
                <table>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td>
                            <asp:TextBox ID="txtboxUsername" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqUsername" runat="server" ErrorMessage="Please fill in a username." ControlToValidate="txtboxUsername" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="regExpUsername" runat="server" ControlToValidate="txtboxUsername" ErrorMessage="Username character must be more than 2" ValidationExpression=".{3}.*" EnableClientScript="False" ForeColor="Red" />
                            <asp:CustomValidator ID="customUsername" runat="server" ErrorMessage="This username has been taken" ForeColor="Red" EnableClientScript="false" ControlToValidate="txtboxUsername" OnServerValidate="customUsername_ServerValidate"></asp:CustomValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Full Name:</td>
                        <td>
                            <asp:TextBox ID="txtboxName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqName" runat="server" ErrorMessage="Please fill in a name." ControlToValidate="txtboxName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td>
                            <asp:TextBox ID="txtboxPhone" runat="server" TextMode="Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqPhone" runat="server" ErrorMessage="Please fill in a phone number." ControlToValidate="txtboxPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="submitSave" runat="server" Text="Save" OnClick="submitSave_Click" />
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