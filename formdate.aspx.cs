using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Sockets;
using System.Runtime.InteropServices.ComTypes;

public partial class formdate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            //SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            //scon.Open();

            //string sQry = "select id, [Brand],[Agency],[Client],[CardRate],[SealingRate],convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate],[BookingType],[PONO],[ItemSelect],[Remark]from SalesBooking order by id asc";
            //SqlCommand cmd = new SqlCommand(sQry, scon);
            //SqlDataAdapter da = new SqlDataAdapter(cmd);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
            //    ListView1.DataSource = ds.Tables[0];
            //    ListView1.DataBind();
            //}
            //else
            //{
            //    ListView1.DataSource = ds.Tables[0];
            //    ListView1.DataBind();
            //}
        }
    }

    //protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    //{

    //    SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
    //    scon.Open();
    //    SqlCommand hh = new SqlCommand("Select    convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate] from  SalesBooking     where  convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate]  Between  StartDate='" + DateTime.ParseExact(StartDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'  and  EndDate= '" + DateTime.ParseExact(EndDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'",scon);
    //    hh.ExecuteNonQuery();

    //    string sQry = "select id, [Brand],[Agency],[Client],[CardRate],[SealingRate],convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate],[BookingType],[PONO],[ItemSelect],[Remark]from SalesBooking order by id asc";
    //    SqlCommand cmd = new SqlCommand(sQry, scon);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        ListView1.DataSource = ds.Tables[0];
    //        ListView1.DataBind();
    //    }
    //    else
    //    {
    //        ListView1.DataSource = ds.Tables[0];
    //        ListView1.DataBind();
    //    }



    //}

    protected void Search_Click(object sender, EventArgs e)
    {
        SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
        scon.Open();
        //SqlCommand hh = new SqlCommand("Select  convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate] from  SalesBooking  where StartDate  Between  '" + DateTime.ParseExact(StartDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'  and  '" + DateTime.ParseExact(EndDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'", scon);
        //hh.ExecuteNonQuery();

        string sQry = "select id,[Brand],[Agency],[Client],[CardRate],[SealingRate],convert (varchar,StartDate,103)[StartDate],convert (varchar,EndDate,103)[EndDate],[BookingType],[PONO],[ItemSelect],[Remark] from  SalesBooking  where  StartDate   Between  '" + DateTime.ParseExact(StartDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'  and  '" + DateTime.ParseExact(EndDate.Text, "dd/MM/yyyy", null).ToString("MM/dd/yyyy") + "'";
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






   