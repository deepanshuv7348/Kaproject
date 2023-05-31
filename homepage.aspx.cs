using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml.Linq;

public partial class homepage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)


        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand ct = new SqlCommand(" select Count (*)  as count from  Regstra ", scon);
            using (SqlDataReader sdr = ct.ExecuteReader())
            {
                sdr.Read();

                txtRegisterpage.Text = sdr["count"].ToString();




            }

            ct.ExecuteNonQuery();

        }

        {

            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand cr = new SqlCommand(" select Count (*)  as detail from Invent  ", scon);
            using (SqlDataReader sdr = cr.ExecuteReader())
            {
                sdr.Read();

                txtInventory.Text = sdr["detail"].ToString();




            }

            cr.ExecuteNonQuery();

        }
        {
            SqlConnection scon = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["scon"].ConnectionString);
            scon.Open();
            SqlCommand cm = new SqlCommand("select Count (*)  as Sales from SalesBooking ", scon);
            using (SqlDataReader sdr = cm.ExecuteReader())
            {
                sdr.Read();

                txtSalesBooking.Text = sdr["Sales"].ToString();




            }

            cm.ExecuteNonQuery();

        }
    }
}







