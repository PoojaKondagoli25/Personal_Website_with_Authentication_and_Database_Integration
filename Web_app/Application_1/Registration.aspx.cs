/*
* PAGE: Login.aspx.cs
* Web URL: http://atlas.itds.unt.edu/BCIS5680/pbk0026/Registration.aspx
* PROGRAMMER: Pooja Kondagoli
* LAST UPDATED: 11/11/2024
* DESCRIPTION: This Registration page deals with the registration of the user. It opens a SQL Server connection by a connection string `dsqlinsert.ConnectionString` and inserts data into a database by values of SQL parameters from Text fields such as `txtFname `and `txtLname`. The `txtsubmit_Click `method builds and executes the SQL command for inserting the details of the user and then on successful execution, it moves to a success page. In case of an error it captures the exception and shows the error at the label with the text name `lblerror. There are no actions that happened on page load; the method `Page_Load` is empty.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Include required class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


namespace Application_1
{
    public partial class Regins : System.Web.UI.Page
    {
        //Page_Load is a method that is triggered every time the page is loaded. At the moment it does not contain any actions; however, it can be used to populate the data or set a value when the page is opened.
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtsubmit_Click(object sender, EventArgs e)
        {
            //Create a connection
            SqlConnection connReg = new SqlConnection(dsqlinsert.ConnectionString);

            //create a command
            SqlCommand cmdInsert = new SqlCommand(dsqlinsert.InsertCommand);
            cmdInsert.Connection = connReg;
            cmdInsert.Parameters.AddWithValue("@User_FName", txtFname.Text);
            cmdInsert.Parameters.AddWithValue("@User_LName", txtLname.Text);
            cmdInsert.Parameters.AddWithValue("@User_YOB", txtHired.Text);
            cmdInsert.Parameters.AddWithValue("@User_Pass", txtpwd.Text);
            cmdInsert.Parameters.AddWithValue("@User_ConPwd", txtconpwd.Text);
            cmdInsert.Parameters.AddWithValue("@User_Email", txtemail.Text);

            //Try and catch blocks handles errors errors during the database operation.The SQL insert command is contained in the inside of the try block which tries to open a connection before inserting. If any exception (like connection problem or Sql error) occurs then it is catched and application is saved from bloacking by displaying the error message in "lblerror" for user information.
            try
            {
                //Establish the connection
                connReg.Open();
                cmdInsert.ExecuteNonQuery();
                connReg.Close();
                Response.Redirect("RegSuccess.aspx");

            }
            catch (SqlException)
            {
                lblerror.Text = "Already used details. Please Enter New details";
                return;

            }
        }
    }
}

