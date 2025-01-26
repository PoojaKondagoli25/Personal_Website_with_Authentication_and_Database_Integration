/*
* PAGE: LoginSuccess.aspx.cs
* PROGRAMMER: Pooja Kondagoli
* LAST UPDATED: 11/03/2024
* DESCRIPTION: In this code, the LoginSuccess class is a success that a user sees once 
* they have logged into the page. It starts with, checking if the Session[“Validate”] is
* null in the Page_Load method. If it’s null, the user hasn’t been authenticated so he is
* transferred to the Login.aspx page. If the Session[“Validate”] contains value than it 
* clearly states that the user is authenticated. In this case, the user’s name, stored 
* in Session[“Validate”], is always appearing in the lblUser label. This page confirms to 
* the account authentication system to allow only the rightful users to access this page.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_1
{
    public partial class LoginSuccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test for the session variable
            if (Session["Validate"]==null)
            {
                //if true, they did not authenticate
                Response.Redirect("Login.aspx");

            }
            else
            {
                //set the label to the user's name
                lblUser.Text = Session["Validate"].ToString();
            }

        }
    }
}