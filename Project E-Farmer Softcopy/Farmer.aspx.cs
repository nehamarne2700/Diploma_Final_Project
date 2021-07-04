using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Farmer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        con = new SqlConnection(conString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("Select * from tblfarmerreg ", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "tblfarmerreg");
       
        Farmer cr = new Farmer();
       
        //cr.SetDataSource(ds);
       


        CrystalReportViewer1.ReportSource = cr;
        CrystalReportViewer1.RefreshReport();




    }
}