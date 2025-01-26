/*
* PAGE: Login.aspx.cs
* Web URL: http://atlas.itds.unt.edu/BCIS5680/pbk0026/Login.aspx
* PROGRAMMER: Pooja Kondagoli
* LAST UPDATED: 11/03/2024
* DESCRIPTION: This login page approves the user credentials with a database. When the button "Submit" is clicked it goes to the data base and using sql reader get  the email,password and name by using sql data reader which is first initialized to null.It then enters a "while loop" which it utilizes to read these values from the database. The "if-else" block is added after reading the typed e-mail and password it checks it  with the stored values.If there is a match, then session variable for the user name is set and the user is transferred to the LoginSuccess.aspx page. If these two do not match, an error message is displayed instead.
*/


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Common;

namespace Application_1
{
    /*
    *Page_Load:This is an ASP.NET Webpage in which Login is a class from System.Web.UI.Page. The Page_Load method is basically here empty at the moment, but it might contain code statements being executed each time the page loads – for example to set default values or verify session parameters. The event handler for the Submit Buttonclick is Buttonsubmit_Click When this button is clicked, the program searches the database to locate the users account details. If the credential provided is correct, the user is taken to the success page otherwise an error message is displayed
    */
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttonsubmit_Click(object sender, EventArgs e)
        {
            //Establish and initialize the variable for the good user identifying name and password
            string strUser = "";
            string strPwd = "";

            string strUserName = "";

            //create a sqlDataReader
            SqlDataReader drUserLogin = null;

            //create sqlconnection and set its connectionstring to the connectionstring
            //in the sqldatasource
            SqlConnection connLogin = new SqlConnection(dsLogin.ConnectionString);

            /*create the sqlcommand and set the connection property of this sqlcommand
             *  We then set the SQL command (to the connection we just created)
             * and when setting up the sqlDataSource, declare the parameters
             * (that we defined in the sqlDataSource)*/


            //creating a new instance of an sqlcommand and setting the commandtext property
            //to the select command property of of the sqlDataSource
            SqlCommand cmdLogin = new SqlCommand(dsLogin.SelectCommand);


            //setting the connection property of the command to the new connection created
            cmdLogin.Connection = connLogin;

            //defining the context and where the parameters can be obtained
            cmdLogin.Parameters.AddWithValue("@User_Email", txtuserid.Text);
            cmdLogin.Parameters.AddWithValue("@User_Pass", txtpwd.Text);

            //open the connection to the database
            connLogin.Open();

            //perform the above command and assign the result to the reader value
            drUserLogin = cmdLogin.ExecuteReader(CommandBehavior.CloseConnection);


            //use a While Loop to go through the datareader and select values in the variables 
            //that were declared at the start
            while (drUserLogin.Read())
            {
                //Populate email variable with index 0
                strUser = drUserLogin.GetString(0).Trim();
                //populate pwd variable with index 1
                strPwd = drUserLogin.GetString(1).Trim();
                //populate user name variable with index 2 + 3
                strUserName = drUserLogin.GetString(2).Trim() + " " + drUserLogin.GetString(3).Trim();

            }

            //Close the connection
            connLogin.Close();

            string user = txtuserid.Text;
            string pass = txtpwd.Text;
            if (string.IsNullOrEmpty(user) || string.IsNullOrEmpty(pass))
            {
                lblError.Text = "User ID and Password cannot be empty";
                lblError.Visible = true;
                return;
            }

            //logical test to see if correct credentials were entered
            if (txtuserid.Text == strUser && txtpwd.Text == strPwd)
            {
                //correct credentials
                //create and populate session variable
                Session["Validate"] = strUserName;
                //this is just three for the demo..it should be strUser
                Session["User_Email"] = strUser;
                //go to success page
                Response.Redirect("LoginSuccess.aspx");
            }
            else
            {
                //Invalid credentials
                //Display error message
                lblError.Text = "Incorrect User ID or Password";

            }
        }
    }
}