<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Application_1.Regins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        width: 100%;
    }
    .auto-style3 {
        height: 42px;
        text-align: left;
    }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            height: 42px;
            text-align: right;
        }
        .auto-style9 {
            height: 42px;
            text-align: left;
            width: 308px;
        }
        .auto-style25 {
        height: 40px;
        text-align: right;
    }
    .auto-style26 {
        height: 40px;
        text-align: left;
        width: 308px;
    }
    .auto-style27 {
        height: 40px;
        text-align: left;
    }
    .auto-style28 {
        height: 41px;
        text-align: right;
    }
    .auto-style29 {
        height: 41px;
        text-align: left;
        width: 308px;
    }
    .auto-style30 {
        height: 41px;
        text-align: left;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<table class="auto-style2" style="table-layout: auto; font-size: medium; font-weight: normal">
    <tr>
        <td class="auto-style25"><strong>First Name:</strong></td>
        <td class="auto-style26">
            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style27">
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtFname" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Last Name:</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtLname" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Year Hired:</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtHired" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtHired" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Password:</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Confirm Password:</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtconpwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtconpwd" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtconpwd" ErrorMessage="*Password must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style28"><strong>Email:</strong></td>
        <td class="auto-style29">
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="auto-style30">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="rev1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Must be an email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style9">
            <asp:Button ID="txtsubmit" runat="server" OnClick="txtsubmit_Click" Text="Register" CssClass="auto-style5" />
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style9">
    <asp:Label ID="lblerror" runat="server"></asp:Label>
        </td>
        <td class="auto-style3">
            &nbsp;</td>
    </tr>
</table>
<p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:SqlDataSource ID="dsqlinsert" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" SelectCommand="SELECT * FROM [Logins]" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
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
        <UpdateParameters>
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
            <asp:Parameter Name="User_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
<p>
</p>
</asp:Content>
