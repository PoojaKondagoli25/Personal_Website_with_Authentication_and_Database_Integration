<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginSuccess.aspx.cs" Inherits="Application_1.LoginSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Hello
        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
        ! You have aunthenticated to the site.</p>
    <p class="auto-style2">
        <asp:HyperLink ID="txtupdate" runat="server" BorderColor="#CCCCCC" NavigateUrl="~/Update.aspx">Update My Account</asp:HyperLink>
        </p>
    <p class="auto-style2">
        <asp:HyperLink ID="txtdelete" runat="server" NavigateUrl="~/Delete.aspx">Delete My Account</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
