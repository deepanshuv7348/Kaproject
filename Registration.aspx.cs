using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Reflection.Emit;
using Microsoft.Ajax.Utilities;
using System.Drawing;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Page.Validate();
    }

    protected void Register_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {
            //SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            //scon.Open();


            //SqlCommand cmd = new SqlCommand("Insert into Regstra" + "([Name],[FatherName],[MotherName],[Password],[PhoneNumber],[Email],[Address]) Values('" + txtName.Text + "','" + txtFatherName.Text + "','" + txtMotherName.Text + "','" + txtPassword.Text + "','" + txtPhoneNumber.Text + "' ,'" + TxtEmail.Text + "' ,'" + txtAddress.Text + "')", scon);
            //cmd.ExecuteNonQuery();
            //bool exists = false;
            ////string sql = string.Format("Select * from Regstra where Email='" + TxtEmail.Text + "'",scon);
            ////    SqlCommand cm = new SqlCommand(email, scon);
            ////    cmd.Para
            ////meters.AddWithValue("Email", TxtEmail.Text);

            ////    if (exists)
            ////    {
            ////        Response.Write("User Already Exists");
            ////    }
            ////    scon.Close();


            ////    Response.Redirect("loginpage.aspx");
            ////}

            //SqlCommand cm = new SqlCommand(sql, scon);
            //SqlDataReader dr = cm.ExecuteReader();
            //if (dr.HasRows)
            //{
            //    Response.Write("Email already exists");
            //}
            //else
            //{

            //    SqlCommand cmd = new SqlCommand("Insert into Regstra" + "([Name],[FatherName],[MotherName],[Password],[PhoneNumber],[Email],[Address]) Values('" + txtName.Text + "','" + txtFatherName.Text + "','" + txtMotherName.Text + "','" + txtPassword.Text + "','" + txtPhoneNumber.Text + "' ,'" + TxtEmail.Text + "' ,'" + txtAddress.Text + "')", scon);

            //    dr.Close();
            //    cmd.ExecuteNonQuery();

            //    Response.Redirect("loginpage.aspx");



            //            bool exists = false;
            //string email = string.Format("Select * from Regstra where Email='" + TxtEmail.Text + "'");
            //            SqlCommand cmd2 = new SqlCommand(email, scon);
            //            cmd2.Parameters.AddWithValue("username", Email.Text);

            //            exists = (int)cmd2.ExecuteScalar() > 0;

            //            if (exists)
            //            {
            //                Response.Write("Email already exists");
            //            }

            //            string command = (" Insert into Regstra [Name],[FatherName],[MotherName],[Password],[PhoneNumber],[Email],[Address]) Values('" + txtName.Text + "','" + txtFatherName.Text + "','" + txtMotherName.Text + "','" + txtPassword.Text + "','" + txtPhoneNumber.Text + "' ,'" + TxtEmail.Text + "' ,'" + txtAddress.Text + "'");        
            //            SqlCommand cmd = new SqlCommand(command, scon);



            //            cmd.ExecuteNonQuery();
            //        }
            //               catch(Exception);

            //          finally
            //{
            //            Response.Redirect("loginpage.aspx");
            //            conn.Close();
            //        }

            //    }

            //string connetionString = null;
            //SqlConnection scon;
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();


            SqlCommand cmd = new SqlCommand("Select * from Regstra where Email='" + TxtEmail.Text + "'", scon);


            SqlDataReader dr = cmd.ExecuteReader();
           if (dr.Read())
            {
                      //while(dr.HasRows == true)
                    //Response.Write("Email= " + dr[1].ToString() + " Already exist");
                    // ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert'Already exist');window.location ='loginpage.aspx';", true);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Email details already exist plz try another email!');window.location ='Registration.aspx';", true);


                //break;
            }
           
           else

            {
                SqlCommand cm = new SqlCommand("Insert into Regstra" + "( [Name],[FatherName],[MotherName],[Password],[PhoneNumber],[Email],[Address]) Values('" + txtName.Text + "','" + txtFatherName.Text + "','" + txtMotherName.Text + "','" + txtPassword.Text + "','" + txtPhoneNumber.Text + "' ,'" + TxtEmail.Text + "' ,'" + txtAddress.Text + "')",scon);
                dr.Close();
                cm.ExecuteNonQuery();

                //Response.Write("Data Inserted Succesfully");
                Response.Redirect("RegistrationDetails.aspx");

                Response.Redirect("loginpage.aspx");
               
                scon.Close();
            }
        }

    

        
    

    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("main.aspx");
    }
}
