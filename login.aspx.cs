using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand cmd = new SqlCommand("Insert into log" + "([UserName],[Password]) Values('" + txtUserName.Text + "','" + txtpassword.Text + "')", scon);
            cmd.ExecuteNonQuery();

            Response.Redirect("main.aspx");

        }
    }
}