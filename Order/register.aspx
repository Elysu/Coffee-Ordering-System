<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Order.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>REGISTER A NEW ACCOUNT</h2>

    <br />

    Username:<asp:TextBox ID="regUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegUsername" runat="server" ErrorMessage="Username is required" ControlToValidate="regUsername" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regRegUsername" runat="server" ControlToValidate="regUsername" ErrorMessage="Username character must be more than 2" ValidationExpression=".{3}.*" EnableClientScript="False" ForeColor="Red"/>
    <asp:Label ID="regErrorUsername" runat="server" Text="" ForeColor="Red"></asp:Label>
    
    <br />
    
    Email:<asp:TextBox ID="regEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="regEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:Label ID="regErrorEmail" runat="server" Text="" ForeColor="Red"></asp:Label>
    
    <br />
    
    Password:<asp:TextBox ID="regPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="regPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regRegPassword" runat="server" ControlToValidate="regPassword" ErrorMessage="Minimum password length is 8" ValidationExpression=".{8}.*" EnableClientScript="False" ForeColor="Red"/>
    
    <br />

    Confirm Password:<asp:TextBox ID="regConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegConfirmPassword" runat="server" ErrorMessage="Please enter your password again." ControlToValidate="regConfirmPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="compareRegConfirmPassword" runat="server" ErrorMessage="Confirm Password must be the same as Password" ControlToValidate="regConfirmPassword" EnableClientScript="False" ForeColor="Red" ControlToCompare="regPassword"></asp:CompareValidator>

    <br />
    
    Full Name:<asp:TextBox ID="regName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegName" runat="server" ErrorMessage="Full name is required" ControlToValidate="regName" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <br />
    
    Phone No.:<asp:TextBox ID="regPhone" runat="server" TextMode="Phone"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegPhone" runat="server" ErrorMessage="Phone number is required" ControlToValidate="regPhone" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <br />

    <asp:Label ID="regErrorMsg" runat="server" Text="" ForeColor="Red"></asp:Label>

    <br />
    
    <asp:Button ID="submitReg" runat="server" Text="Register" OnClick="submitReg_Click" />
</asp:Content>