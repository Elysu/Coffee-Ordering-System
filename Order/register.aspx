<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Order.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Username:<asp:TextBox ID="regUsername" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegUsername" runat="server" ErrorMessage="Username is required" ControlToValidate="regUsername" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <br />
    
    Email:<asp:TextBox ID="regEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegEmail" runat="server" ErrorMessage="Email is required" ControlToValidate="regEmail" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <br />
    
    Password:<asp:TextBox ID="regPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqRegPassword" runat="server" ErrorMessage="Password is required" ControlToValidate="regPassword" EnableClientScript="False" ForeColor="Red"></asp:RequiredFieldValidator>
    
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