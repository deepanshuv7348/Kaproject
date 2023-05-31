using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Activities;
using Newtonsoft.Json.Linq;

public partial class InventoryviewPage : System.Web.UI.Page
{
    public object Cookies { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();

            string sQry = "select [InventoryName],[Inventorylengh],[Inventoryheight],[InventoryArea],[Report],[InventoryCode],[ChangePassword],[Tranasaction],[Masters],[RentParDay],[Location], id from Invent order by id asc";
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

    //protected void Update_Click(object sender, EventArgs e)
    //{
    //    SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
    //    scon.Open();

    //    SqlCommand cn = new SqlCommand("select [InventoryName],[Inventorylengh],[Inventoryheight],[InventoryArea],[Report],[InventoryCode],[ChangePassword],[Tranasaction],[Masters],[RentParDay],[Location] from Invent order by id asc", scon);
    //    cn.ExecuteNonQuery();

    //    HttpCookie cookies = new HttpCookie("mycookies");
    //    cookies["Value1"] = "txtInventoryName.Text";
    //    cookies["Value2"] = "txtInventorylengh.Text";
    //    cookies["Value3"] = "txtInventoryheight.Text";
    //    cookies["Value4"] = "txtInventoryArea.Text";
    //    cookies["Value5"] = "txtReport.Text";
    //    cookies["Value6"] = "txtInventoryCode.Text";
    //    cookies["Value7"] = "txtChangePassword.Text";
    //    cookies["Value8"] = "txtTranasaction.Text";
    //    cookies["Value9"] = "txtMasters.Text";
    //    cookies["Value9"] = "txtRentParDay.Text";
    //    cookies["Value9"] = "txtLocation.Text";
    //    cookies.Expires = DateTime.Now.AddDays(3);
    //    Response.Cookies.Add(cookies);


    //    Response.Redirect("InventoryPage.aspx");



    //}
    //protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    //{
    //    if (e.CommandName == "Delete")
    //    {




    //        Response.Redirect("InventoryPage.aspx?pr=" + e.CommandArgument);
    //    }
    //}



    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            //Response.Redirect("salbooking.aspx?rk=" + e.CommandArgument);
            Response.Redirect(String.Format("InventoryPage.aspx?pk={0}&value={1}", e.CommandArgument, e.CommandName));

        }
        if (e.CommandName == "Delete")
        {

            //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Are you want to Delete!');window.location ='inventoryviewPage.aspx';", true);
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();

            SqlCommand cr = new SqlCommand("Delete from Invent where id='" + e.CommandArgument + "'", scon);
            cr.ExecuteNonQuery();
            Response.Redirect("Inventoryviewpage.aspx");
             




        }

    }


    protected void Delete_Click1(object sender, EventArgs e)
    {
        Response.Redirect("inventoryPage.aspx");
    }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

        //if (e.CommandName == "Delete")
        //{


        //    SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
        //    scon.Open();

        //    SqlCommand cr = new SqlCommand("Delete from Invent where id='" + e.CommandArgument + "'", scon);
        //    cr.ExecuteNonQuery();



        }
    }


