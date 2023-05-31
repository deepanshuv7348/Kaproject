using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();

            string sQry = "select [Name],[FatherName],[MotherName],[Password],[PhoneNumber],[Email],[Address] from Regstra order by id asc";
            SqlCommand cmd = new SqlCommand(sQry, scon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ListView1.DataSource = ds.Tables[0];
                ListView1.DataBind();
            }
            else
            {
                ListView1.DataSource = ds.Tables[0];
                ListView1.DataBind();
            }
        }
    }


    protected void Update_Click(object sender, EventArgs e)
    {

    }

    protected void Login_Click(object sender, EventArgs e)
    {
        Response.Redirect("loginpage.aspx");
    }
}

