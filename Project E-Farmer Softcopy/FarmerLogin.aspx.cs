using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class FarmerLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        String s1 = email.Value;


        String s3 = mobile.Value;

        SqlDataAdapter da = new SqlDataAdapter("Select * from tblfarmerreg where email='" + s1 + "' AND mobilenumber='" + s3 + "'", con);
        DataTable ds = new DataTable();
        da.Fill(ds);
        if (ds.Rows.Count > 0)
        {
            String str = ds.Rows[0][0].ToString();
            HttpCookie name1 = new HttpCookie("Name1");
            Session["Name"] = str;
            name1.Value = str;
            Response.Cookies.Add(name1);

            Response.Redirect("~/Farmer_Upload.aspx");
              
        
        }
        


       

    }
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}