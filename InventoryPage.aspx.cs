using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Sockets;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InventoryPage : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if 
                (Request.QueryString["pk"] != null && Request.QueryString["value"] != null)

            {


                SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
                scon.Open();

                SqlCommand cn = new SqlCommand("select [InventoryName],[Inventorylengh],[Inventoryheight],[InventoryArea],[Report],[InventoryCode],[ChangePassword],[Tranasaction],[Masters],[RentParDay],[Location] from Invent where id = '" + Request.QueryString["pk"] + "'", scon);
                SqlDataReader dr = cn.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        txtInventoryName.Text = dr["InventoryName"].ToString();
                        txtInventorylengh.Text = dr["Inventorylengh"].ToString();
                        txtInventoryheight.Text = dr["Inventoryheight"].ToString();
                        txtInventoryArea.Text = dr["InventoryArea"].ToString();
                        txtReport.Text = dr["Report"].ToString();
                        txtInventoryCode.Text = dr["InventoryCode"].ToString();
                        txtChangePassword.Text = dr["ChangePassword"].ToString();
                        txtTranasaction.Text = dr["Tranasaction"].ToString();
                        txtMasters.Text = dr["Masters"].ToString();
                        RentParDay.Text = dr["RentParDay"].ToString();
                        Location.Text = dr["Location"].ToString();

                        submit.Visible = false;
                        Update.Visible = true;

                    }
                }
                dr.Close();

                //cookies["Value1"] = "txtInventoryName.Text";
                //cookies["Value2"] = "txtInventorylengh.Text";
                //cookies["Value3"] = "txtInventoryheight.Text";
                //cookies["Value4"] = "txtInventoryArea.Text";
                //cookies["Value5"] = "txtArea.Text";
                //cookies["Value6"] = "txtInventoryCode.Text";
                //cookies["Value7"] = "txtChangePassword.Text";
                //cookies["Value8"] = "txtTranasaction.Text";
                //cookies["Value9"] = "txtMasters.Text";
                //cookies["Value9"] = "txtRentParDay.Text";
                //cookies["Value9"] = "txtLocation.Text";
            }
        }
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        Validate();
        if (Page.IsValid)
        {
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
           
           
            SqlCommand cmd = new SqlCommand("Insert into Invent" + "([InventoryName],[Inventorylengh],[Inventoryheight],[InventoryArea],[Report],[InventoryCode],[ChangePassword],[Tranasaction],[Masters],[RentParDay],[Location]) VALUES('" + txtInventoryName.Text + "','" + txtInventorylengh.Text + "','" + txtInventoryheight.Text + "','" + txtInventoryArea.Text + "','" + txtReport.Text + "','" + txtInventoryCode.Text + "','" + txtChangePassword.Text + "','" + txtTranasaction.Text + "','" + txtMasters.Text + "','" + RentParDay.Text + "','" + Location.Text + "')", scon);
            //Response.Write(" Are want to submit");

            cmd.ExecuteNonQuery();
               





            Response.Redirect("inventoryviewPage.aspx");
            Response.Redirect("salbooking.aspx");

        }
    }
    protected void Update_Click(object sender, EventArgs e)

    {
        SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
        scon.Open();
        SqlCommand cm = new SqlCommand("Update  Invent  set  InventoryName='" + txtInventoryName.Text + "',Inventorylengh='" + txtInventorylengh.Text + "',Inventoryheight='" + txtInventoryheight.Text + "',InventoryArea='" + txtInventoryArea.Text + "',Report='" + txtReport.Text + "',InventoryCode='" + txtInventoryCode.Text + "',ChangePassword='" + txtChangePassword.Text + "', Tranasaction='" + txtTranasaction.Text + "', Masters='" + txtMasters.Text + "',RentParDay='" + RentParDay.Text + "', Location='" + Location.Text + "' where id='"+Request.QueryString["pk"]+"'", scon);
        cm.ExecuteNonQuery();

        Response.Redirect("inventoryviewPage.aspx");
        Response.Redirect("inventoryPage.aspx");
    }

    //protected void Delete_Click(object sender, EventArgs e)
    // {
    //     SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
    //     scon.Open();
    //     SqlCommand cr = new SqlCommand("Delete   from  Invent  where  InventoryName='" + txtInventoryName.Text + "',txtInventorylengh='" + txtInventorylengh.Text + "',Inventoryheight='" + txtInventoryheight.Text + "',InventoryArea='" + txtInventoryArea.Text + "',Report='" + txtReport.Text + "',InventoryCode='" + txtInventoryCode.Text + "',ChangePassword='" + txtChangePassword.Text + "', Tranasaction='" + txtTranasaction.Text + "', Masters='" + txtMasters.Text + "',RentParDay='" + RentParDay.Text + "', where  Location='" + Location.Text + "'", scon);
    //     cr.ExecuteNonQuery();
    //        Response.Redirect("inventoryviewPage.aspx");


    //    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("inventoryPage.aspx");
    }
}


  
    
        
    