<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Skills.aspx.cs" Inherits="Application_1.Skills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* Basic styling */
        .auto-style1 {
            width: 100%;
        }
        header {
            margin-bottom: 0px; /* Ensure the header doesn't add any extra bottom space */
            padding-bottom: 0px; /* Ensure the header padding doesn't add space */
        }
        .auto-style3 {
            width: 100%;
            height: 199px;
            margin-top: 0px;
            margin-bottom: 0px;
        }

        /* Style for hover effect */
        .hover-container {
            position: relative;
            display: inline-block;
        }

        /* Fixed positioning on the right side below the header */
        .hover-image {
            visibility: hidden;
            width: 600px; /* Increased image width */
            height: 450px; /* Increased image height */
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 5px;
            position: fixed; /* Fixed position */
            z-index: 1;
            top: 250px; /* Adjust to position the image below the header */
            right: 300px; /* Position the image on the right side */
        }

        /* Show the image on hover */
        .hover-container:hover .hover-image {
            visibility: visible;
        }
        .auto-style4 {
            width: 396px;
            height: 78px;
        }
        .auto-style5 {
            height: 78px;
        }
        .auto-style8 {
            width: 396px;
            height: 90px;
        }
        .auto-style9 {
            height: 90px;
        }
        .auto-style10 {
            width: 396px;
            height: 84px;
        }
        .auto-style11 {
            height: 84px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" style="text-align: left; font-size: medium;">
        <tr>
            <td class="auto-style4" style="font-size: large">
                <!-- Programming Languages Hover -->
                <div class="hover-container" style="font-size: large; text-decoration: underline; color: #0000FF;">
                    <b>➣ Intermediate SQL</b>
                    <span class="hover-image">
                        <asp:Image ID="pa" runat="server" ImageUrl="~/img/sql.png" width="600" height="500" alt="Intermediate SQL Image" />
                    </span>
                </div>
            </td>
            <td class="auto-style5"></td>
        </tr>

        <tr>
            <td class="auto-style10" style="font-size: large">
                <!-- Database Hover -->
                <div class="hover-container" style="text-decoration: underline; color: #0000FF">
                    <b style="font-size: large">➣ Security+ (SYO-601)</b>
                    <span class="hover-image">
                        <asp:Image ID="ss" runat="server" ImageUrl="~/img/Comptia.png" width="600" height="500" alt="security Image" />
                    </span>
                </div>
            </td>
            <td class="auto-style11"></td>
        </tr>

        <tr>
            <td class="auto-style8" style="font-size: large">
                <!-- BI Tools Hover -->
                <div class="hover-container" style="text-decoration: underline; color: #0000FF">
                    <b style="font-size: large">➣ CCNA</b>
                    <span class="hover-image">
                        <asp:Image ID="ccna" runat="server" ImageUrl="~/img/ccna.png" width="600" height="500" alt="security Image" />
                    </span>
                </div>
            </td>
            <td class="auto-style9"></td>
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
<br />
<br />
<br />
<br />
<br />
</asp:Content>
