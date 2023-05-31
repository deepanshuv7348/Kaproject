using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;
using System.Activities;
using System.Runtime.Serialization;

public partial class salbooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            if (Request.QueryString["rk"] != null && Request.QueryString["value"] != null)
            {


                SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
                scon.Open();

                SqlCommand cm = new SqlCommand("select [Brand],[Agency],[Client],[CardRate],[SealingRate], convert (varchar,StartDate,103) [StartDate],convert  (varchar,EndDate,103)[EndDate],[BookingType],[PONO],[Remark] from SalesBooking where id = '" + Request.QueryString["rk"] + "'", scon);
                SqlDataReader dt = cm.ExecuteReader();

                if (dt.HasRows)
                {
                    while (dt.Read())
                    {
                        txtBrand.Text = dt["Brand"].ToString();
                        txtAgency.Text = dt["Agency"].ToString();
                        txtClient.Text = dt["Client"].ToString();
                        txtCardRate.Text = dt["CardRate"].ToString();
                        txtSealingRate.Text = dt["SealingRate"].ToString();
                        startDate.Text = dt["startDate"].ToString();
                       EndDate.Text = dt["EndDate"].ToString();
                        //artDate = '" +DateTime.ParseExact(startDate.Text, "dd/MM/yyyy",null).ToString("MM/dd/yyyy")+"',
                        //EndDate.Text = dt["DateTime.ParseExact(startDate.Text,"dd/MM/yyyy",null)"].ToString("MM/dd/yyyy");

                        BookingType.Text = dt["BookingType"].ToString();
                        txtPONO.Text = dt["PONO"].ToString();
                        txtRemark.Text = dt["Remark"].ToString();

                        but.Visible = false;
                        Update.Visible = true;

                    }
                }

                dt.Close();


            }
        }
    }
    protected void but_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand ct = new SqlCommand("Insert into SalesBooking" + "([Brand],[Agency],[Client],[CardRate],[SealingRate],[StartDate],[EndDate],[BookingType],[PONO],[ItemSelect],[Remark]) VALUES('" + txtBrand.Text + "','" + txtAgency.Text + "','" + txtClient.Text + "','" + txtCardRate.Text + "','" + txtSealingRate.Text + "',' "+DateTime.ParseExact(startDate.Text, "dd/MM/yyyy",null).ToString("MM/dd/yyyy")+"', '"+DateTime.ParseExact(EndDate.Text, "dd/MM/yyyy",null).ToString("M/dd/yyyy")+"', '" + BookingType.Text + "','" + txtPONO.Text + "','" + ItemSelect.Text + "','" + txtRemark.Text + "')", scon);
            ct.ExecuteNonQuery();
             

            Response.Redirect("salesbookingviewpage.aspx");

            }


        }




    protected void Update_Click1(object sender, EventArgs e)
    {
        SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
        scon.Open();
        SqlCommand cc = new SqlCommand("Update SalesBooking Set Brand='" + txtBrand.Text + "' ,Agency='" + txtAgency.Text + "',Client='" + txtClient.Text + "',CardRate='" + txtCardRate.Text + "',SealingRate='" + txtSealingRate.Text + "' ,StartDate='" +DateTime.ParseExact(startDate.Text, "dd/MM/yyyy",null).ToString("MM/dd/yyyy")+"',EndDate=' "+DateTime.ParseExact(startDate.Text, "dd/MM/yyyy",null).ToString("MM/dd/yyyy")+"', BookingType='" + BookingType.Text + "',PONO='" + txtPONO.Text + "',ItemSelect='" + ItemSelect.Text + "',Remark='" + txtRemark.Text + "' where  id='"+Request.QueryString["rk"]+"'", scon);
        cc.ExecuteNonQuery();


        Response.Redirect("salesbookingviewpage.aspx");
        Response.Redirect("salbooking.asp");

        
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("salbooking.aspx");
    }
}


// potected void Delete_Click(object sender, EventArgs e)
//{
//    SqlCommand cm = new SqlCommand("Delete from SalesBooking  Agency='" + txtAgency.Text + "',Client='" + txtClient.Text + "',CardRate='" + txtCardRate.Text + "',SealingRate='" + txtSealingRate.Text + "',StartDate='" + DateTime.Now.ToString("MM/dd/yyyy") + "', EndDate='" + DateTime.Now.ToString("MM/dd/yyyy") + "',BookingType='" + BookingType.Text + "',PONO='" + txtPONO.Text + "',ItemSelect='" + ItemSelect.Text + "',Remark='" + txtRemark.Text + "' where  Brand='" + txtBrand.Text + "',scon");
//    cm.ExecuteNonQuery();
//    Response.Redirect("salbooking.asp");
//}

//    protected void Edit_Click(object sender, EventArgs e)
//    {
//        SqlCommand cc = new SqlCommand("Update  SalesBooking set Agency='" + txtAgency.Text + "',Client='" + txtClient.Text + "',CardRate='" + txtCardRate.Text + "',SealingRate='" + txtSealingRate.Text + "',StartDate='" + DateTime.Now.ToString("MM/dd/yyyy") + "', EndDate='" + DateTime.Now.ToString("MM/dd/yyyy") + "',BookingType='" + BookingType.Text + "',PONO='" + txtPONO.Text + "',ItemSelect='" + ItemSelect.Text + "',Remark='" + txtRemark.Text + "' where  Brand='" + txtBrand.Text + "',scon");
//        cc.ExecuteNonQuery();
//        Response.Redirect("salbooking.asp");
//    }







