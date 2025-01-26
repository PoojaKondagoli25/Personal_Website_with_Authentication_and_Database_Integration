<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Application_1.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <p>
    </p>
    <p>
        Sorry to see you go. Please enter your email address and click delete to delete your account.</p>
    <p>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="lblerror" runat="server"></asp:Label>
    <br />
    <br />
    <asp:SqlDataSource ID="dsdelete" runat="server" ConnectionString="<%$ ConnectionStrings:5680LabsConnectionString %>" DeleteCommand="DELETE FROM [Logins] WHERE [User_Email] = @User_Email" InsertCommand="INSERT INTO [Logins] ([User_Email], [User_Pass], [User_FName], [User_LName], [User_YOB]) VALUES (@User_Email, @User_Pass, @User_FName, @User_LName, @User_YOB)" SelectCommand="SELECT * FROM [Logins] WHERE ([User_Email] = @User_Email)" UpdateCommand="UPDATE [Logins] SET [User_Pass] = @User_Pass, [User_FName] = @User_FName, [User_LName] = @User_LName, [User_YOB] = @User_YOB WHERE [User_Email] = @User_Email">
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
            <asp:Parameter Name="User_Email" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Pass" Type="String" />
            <asp:Parameter Name="User_FName" Type="String" />
            <asp:Parameter Name="User_LName" Type="String" />
            <asp:Parameter Name="User_YOB" Type="Int32" />
            <asp:Parameter Name="User_Email" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="BtnDelete" runat="server" OnClick="BtnDelete_Click" Text="Delete" />
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
</asp:Content>
