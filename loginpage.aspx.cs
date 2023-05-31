using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data;


public partial class kavita : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LOGIN_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand cmd = new SqlCommand("select * from Regstra where Email='" + txtEamil.Text + "'  and   Password='" + txtPassword.Text + "'", scon);
            using (SqlDataReader reader = cmd.ExecuteReader())
                if (reader.Read())
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('login details invalid!');window.location ='loginpage.aspx';", true);

                    //Response.Redirect("InventoryPage.aspx");
                }
                else
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('login details invalid!');window.location ='loginpage.aspx';", true);
                    Response.Redirect("InventoryPage.aspx");

                }
        }
    }
}

   

   
