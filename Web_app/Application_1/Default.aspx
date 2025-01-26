<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Application_1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 146px;
        }
        .auto-style3 {
            width: 55px;
        }
        header {
            margin-bottom: 0px; /* Ensure the header doesn't add any extra bottom space */
            padding-bottom: 0px; /* Ensure the header padding doesn't add space */
        }
        .auto-style4 {
            width: 55px;
            height: 146px;
        }
        .auto-style5 {
            width: 104%;
            height: 612px;
            margin-top: 0px;
        }
        .auto-style6 {
            height: 146px;
            width: 1547px;
        }

        /* Oval image styling */
        .oval-image {
            border-radius: 100%; /* Makes the image oval */
            width: 240px;
            height: 260px;
            object-fit: cover; /* Ensures the image covers the entire area without stretching */
            border: 2px solid #ddd; /* Optional: border styling */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5" style="font-size: medium">
        <tr>
            <td class="auto-style2">
                <!-- Image with oval shape -->
                <asp:Image ID="Image1" alt="Oval Image" runat="server" ImageUrl="~/img/pooja.jpeg" CssClass="oval-image" />
            </td>
            <td class="auto-style4"> </td>
            <td class="auto-style6" style="text-align: left; font-size: large; font-style: normal;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduate Student pursuing a Master's in Information Technology and Decision Science at the <b>University of North Texas (UNT)</b>, with a focus on data-driven decision-making and advanced IT infrastructure management. This program equips me with skills in data analytics, project management, and cutting-edge technologies, preparing me for leadership roles in IT and business strategy.<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Additionally, I am a <b>Cisco Certified Network Engineer</b> with 2+ years of demonstrated experience in the networking domain, skilled in switching, routing, network monitoring, virtual load balancer, working on vulnerabilities, and troubleshooting in Cisco environments. I possess excellent design and integration problem-solving skills.My technical expertise extends to automating network operations and implementing security protocols, ensuring robust and secure infrastructures. I have a passion for leveraging technology to drive innovation and enhance organizational efficiency.
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Currently, I am expanding my knowledge in advanced data management and analytics, looking to bridge the gap between IT infrastructure and business goals. I thrive in collaborative environments where I can contribute to both strategic planning and hands-on technical solutions.<br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
