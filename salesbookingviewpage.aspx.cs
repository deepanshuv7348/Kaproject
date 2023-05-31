using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Xml.Linq;

public partial class salesbookingviewpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();

            string sQry = "select id, [Brand],[Agency],[Client],[CardRate],[SealingRate],convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate],[BookingType],[PONO],[ItemSelect],[Remark]from SalesBooking order by id asc";
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

    //protected void Delete_Click(object sender, EventArgs e)
    //{

    //    Response.Redirect("Salbooking.aspx");
    //}

    //protected void Update_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("Salbooking.aspx");

    //}

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            //Response.Redirect("salbooking.aspx?rk="+e.CommandArgument);
            Response.Redirect(String.Format("salbooking.aspx?rk={0}&value={1}", e.CommandArgument, e.CommandName));
        }
        

            if (e.CommandName == "Delete")
            {


                SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
                scon.Open();

                SqlCommand cm = new SqlCommand("Delete from SalesBooking where id='" + e.CommandArgument + "'", scon);
                   
                   cm.ExecuteNonQuery();
                Response.Redirect("salesbookingviewpage.aspx");


        }

        }

    
    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

    }
}





