using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//put in class libreries
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Application_1
{
    public partial class UpdateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //test to see if its is a postback
            if(!IsPostBack)
            {
                //bring over the email from the login page
                //string strPK=Session["Email"].ToString();
                string strPK = "3";

                //declare a data reader
                SqlDataReader drRead = null;

                //declare a aconnection
                SqlConnection con = new SqlConnection(dsUpdate.ConnectionString);

                //declare a acommand
                SqlCommand command = new SqlCommand(dsUpdate.SelectCommand);
                command.Connection = con;
                command.Parameters.AddWithValue("@cou_id", strPK);

                try
                {
                    con.Open(); 
                    drRead = command.ExecuteReader();
                    while (drRead.Read())
                    {
                        //populate text boxes
                        lblcourseid.Text = Convert.ToString(drRead.GetInt32(0));
                        txtcoursename.Text=drRead.GetString(1);
                        txtcoursedesc.Text=drRead.GetString(2);
                        txtinstid.Text= Convert.ToString(drRead.GetInt32(3));

                    }
                    con.Close();
                }
                
                catch (Exception ex)
                {
                   lblerror.Text=ex.Message;
                    return;
                }
            }
        }

        protected void txtcourseid_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //bring over the email from the login page
            //int strPK=Session["Email"].ToString();
            int strPK = 3;

            //create the connection
            SqlConnection con = new SqlConnection(dsUpdate.ConnectionString);


            //create and configure command
            SqlCommand command = new SqlCommand( dsUpdate.UpdateCommand );
            command.Connection = con;
            command.Parameters.AddWithValue("@Cou_ID", strPK);
            command.Parameters.AddWithValue("@Cou_Name", txtcoursename.Text);
            command.Parameters.AddWithValue("@Cou_Desc",txtcoursedesc.Text);
            command.Parameters.AddWithValue("@Ins_ID",txtinstid.Text);

            try
            {
                //open connection
                con.Open();

                // execute non query
                command.ExecuteNonQuery();

                //close connection
                con.Close();
                //redirect to ourself
                Response.Redirect("UpdateAccount.aspx");
            }
            catch(Exception ex)
            {
                lblerror.Text=ex.Message;
            }


        }
    }
}