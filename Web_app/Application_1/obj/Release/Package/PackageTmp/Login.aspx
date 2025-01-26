<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Application_1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 49%;
        height: 202px;
            margin-bottom: 0px;
        }
    .auto-style3 {
        height: 57px;
        text-align: left;
    }
    .auto-style4 {
        height: 57px;
        width: 288px;
        text-align: right;
    }
    .auto-style5 {
        width: 288px;
        text-align: right;
            height: 24px;
        }
    .auto-style6 {
        margin-left: 0px;
    }
    .auto-style7 {
        text-align: left;
            height: 24px;
        }
    .auto-style10 {
        height: 50px;
        width: 288px;
        text-align: right;
    }
    .auto-style11 {
        height: 50px;
        text-align: left;
    }
        .auto-style12 {
            height: 49px;
            width: 288px;
            text-align: right;
        }
        .auto-style13 {
            height: 49px;
            text-align: left;
        }
        .auto-style14 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
</p>
    <p>
</p>
<table align="center" class="auto-style2">
    <tr>
        <td class="auto-style4" style="font-size: medium; font-weight: bold;">UserID:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtuserid" runat="server" CssClass="auto-style6" Height="42px" Width="406px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12" style="font-size: medium; font-weight: bold">Password:</td>
        <td class="auto-style13">
            <asp:TextBox ID="txtpwd" runat="server" CssClass="auto-style6" Height="43px" TextMode="Password" Width="401px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"></td>
        <td class="auto-style7">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            <br />
        </td>
        <td class="auto-style11">
            <strong>
            <asp:Button ID="Buttonsubmit" runat="server" Text="Submit" OnClick="Buttonsubmit_Click" CssClass="auto-style14" Height="33px" Width="120px" />
            </strong>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style11">
            <em>New User?</em> <em>
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Registration.aspx">Register here</asp:HyperLink>
            </em>
        </td>
    </tr>
</table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="dsLogin" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE (([User_Email] = @User_Email) AND ([User_Pass] = @User_Pass))" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
        <DeleteParameters>
            <asp:Parameter Name="User_Email" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="User_Email" Type="String" />
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Scrappy@unt.edu" Name="User_Email" Type="String" />
            <asp:Parameter DefaultValue="F@ll24" Name="User_Pass" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
            <asp:Parameter Name="User_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
