<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateAccount.aspx.cs" Inherits="Application_1.UpdateAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 73%;
            height: 246px;
        }
        .auto-style5 {
            height: 23px;
            text-align: right;
            width: 291px;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            text-align: right;
            width: 291px;
        }
        .auto-style9 {
            text-align: right;
            height: 42px;
            width: 291px;
        }
        .auto-style10 {
            text-align: left;
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <table align="center" class="auto-style2">
        <tr>
            <td class="auto-style5">Course ID:</td>
            <td class="auto-style7">
                <asp:Label ID="lblcourseid" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">Course Name:</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtcoursename" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtcoursename" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Course Description:</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtcoursedesc" runat="server" AutoPostBack="True" Width="590px"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtcoursedesc" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">Instructor ID</td>
            <td class="auto-style6">
                <asp:TextBox ID="txtinstid" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtinstid" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update My Account" />
            </td>
            <td class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
    <asp:SqlDataSource ID="dsUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Course] WHERE [Cou_ID] = @Cou_ID" InsertCommand="INSERT INTO [Course] ([Cou_Name], [Cou_Desc], [Ins_ID]) VALUES (@Cou_Name, @Cou_Desc, @Ins_ID)" SelectCommand="SELECT * FROM [Course] WHERE ([Cou_ID] = @Cou_ID)" UpdateCommand="UPDATE [Course] SET [Cou_Name] = @Cou_Name, [Cou_Desc] = @Cou_Desc, [Ins_ID] = @Ins_ID WHERE [Cou_ID] = @Cou_ID">
        <DeleteParameters>
            <asp:Parameter Name="Cou_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Cou_Name" Type="String" />
            <asp:Parameter Name="Cou_Desc" Type="String" />
            <asp:Parameter Name="Ins_ID" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter Name="Cou_ID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Cou_Name" Type="String" />
            <asp:Parameter Name="Cou_Desc" Type="String" />
            <asp:Parameter Name="Ins_ID" Type="Int32" />
            <asp:Parameter Name="Cou_ID" Type="Int32" />
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
    <br />
    <p>
    </p>
</asp:Content>
