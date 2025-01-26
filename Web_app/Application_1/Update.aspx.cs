/*
* PAGE: Update.aspx.cs
* Web URL: http://atlas.itds.unt.edu/BCIS5680/pbk0026/Update.aspx
* PROGRAMMER: Pooja Kondagoli
* LAST UPDATED: 16/11/2024
* DESCRIPTION: The update page defines for updating user account details stored in an SQL Server database. When the page loads, it checks if the user is authenticated by verifying the session variable "User_Email". If authenticated, it retrieves the user’s current details using a "SqlCommand" and displays them in form fields. The user can update their details, and upon clicking the update button, the "Button1_Click" method validates the inputs and executes an SQL update command to modify the database. Error handling is implemented to display any issues encountered during database operations using a label, while unauthenticated users are redirected to the login page. 
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Import class libreries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.CodeDom.Compiler;

namespace Application_1
{
    public partial class Update : System.Web.UI.Page
    {
        //Page_Load method checks if the user is authenticated via a session variable (User_Email), the current details are fetched from the database and populated into form fields
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["User_Email"] != null)
                {
                    string strPK = Session["User_Email"].ToString();
                    SqlDataReader drRead = null;

                    SqlConnection con = new SqlConnection(dsUpdate1.ConnectionString);
                    SqlCommand command = new SqlCommand(dsUpdate1.SelectCommand, con);
                    command.Parameters.AddWithValue("@User_Email", strPK);

                    try
                    {
                        con.Open();
                        drRead = command.ExecuteReader();
                        if (drRead.Read())
                        {
                            lblemail.Text = drRead["User_Email"].ToString();
                            txtFname.Text = drRead["User_FName"].ToString();
                            txtLname.Text = drRead["User_LName"].ToString();
                            txtpwd.Text = drRead["User_Pass"].ToString();
                            txthired.Text = Convert.ToString(drRead.GetInt32(4));

                        }
                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        lblerror.Text = "Error: " + ex.Message;
                    }
                }
            }
        }
        //Button1_Click validates the entered details in the text fields and an UpdateCommand executes to modify the corresponding user data in the database.
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["User_Email"] != null)

            {
                string strPK = Session["User_Email"].ToString();

                SqlConnection con = new SqlConnection(dsUpdate1.ConnectionString);
                //SqlCommand object is used to execute SelectCommand from the data source to fetch feilds like User_Email, User_FName, User_LName and User_Pass
                SqlCommand command = new SqlCommand(dsUpdate1.UpdateCommand, con);
                command.Parameters.AddWithValue("@User_Email", strPK);
                command.Parameters.AddWithValue("@User_Fname", txtFname.Text);
                command.Parameters.AddWithValue("@User_Lname", txtLname.Text);
                command.Parameters.AddWithValue("@User_Pass", txtpwd.Text);
                command.Parameters.AddWithValue("@User_YOB", int.Parse(txthired.Text));

                try
                {
                    con.Open();
                    command.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("Update.aspx");
                }
                catch (Exception ex)
                {
                    //lblerror displays error messages
                    lblerror.Text = "Error: " + ex.Message + " | StackTrace: " + ex.StackTrace; ;
                }
            }
            else
            {
                //Users without a valid session are redirected to the login page 
                Response.Redirect("Login.aspx");
            }
        }
    }
}