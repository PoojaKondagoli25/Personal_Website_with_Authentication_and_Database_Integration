/*
* PAGE: Delete.aspx.cs
* Web URL: http://atlas.itds.unt.edu/BCIS5680/pbk0026/Delete.aspx
* PROGRAMMER: Pooja Kondagoli
* LAST UPDATED: 19/11/2024
* DESCRIPTION:This code handles user account deletion securely. It checks if the user is logged in via Session["User_Email"] and redirects unauthorized users to the login page. On clicking the delete button, it validates the entered email against the session email before executing a SQL command to delete the account. If successful, the session is cleared, and the user is redirected to a success page; otherwise, an error message is shown.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Import class libraries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;



namespace Application_1
{
    public partial class Delete : System.Web.UI.Page
    {
        //Page_Load method checks if a session variable Session["User_Email"] exists, if not, the user is redirected to a login page
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User_Email"]==null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        //This method is triggered when the "Delete" button is clicked and it establish Database Connection,set SQL Parameter,validate Email and execute the SQL Command
        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(dsdelete.ConnectionString);
            SqlCommand cmd = new SqlCommand(dsdelete.DeleteCommand);
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@User_Email", Session["User_Email"].ToString());
                try
                {
                    if (txtemail.Text.Trim() == Session["User_Email"].ToString())
                { 
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                        Session["User_Email"] = null;
                        Response.Redirect("DeleteSuccess.aspx");
                }
                else
                {
                    lblerror.Text = "Enter valid Email";
                }
            }


            catch(Exception ex)
            {
                //Any exceptions that occur during the process are caught and displayed in a label (lblerror
                lblerror.Text = ex.Message;
                return;
            }
                


        }
    }
}