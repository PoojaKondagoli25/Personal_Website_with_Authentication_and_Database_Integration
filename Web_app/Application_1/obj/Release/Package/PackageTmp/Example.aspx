<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Example.aspx.cs" Inherits="Application_1.Example" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    <br />
    <br />
    <br />
    <br />
    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Image ID="imgPhoto" runat="server" />
    <br />
    <br />
    <br />
    <asp:Label ID="lblPwd" runat="server"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Default.aspx">HyperLink</asp:HyperLink>
    <br />
    <br />
    <asp:DropDownList ID="ddlSelect" runat="server" AutoPostBack="True">
        <asp:ListItem>Option 1</asp:ListItem>
        <asp:ListItem>Option 2</asp:ListItem>
        <asp:ListItem>Option 3</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <p></p>
</asp:Content>
