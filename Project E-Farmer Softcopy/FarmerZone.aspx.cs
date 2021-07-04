using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class FarmerZone : System.Web.UI.Page
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
        String s = name.Value;
        String s1 = email.Value;
        
        
        String s3 = mobile.Value;
        String s4 = address.Value;
        cmd.CommandText = "Insert Into tblfarmerreg(Name,address,mobilenumber,email) Values('" + s + "','" + s4+ "','" + s3 + "','" + s1 + "')";
        cmd.ExecuteNonQuery();





        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        // MailSend();
        clear();
        Response.Redirect("~/FarmerLogin.aspx");

    }
    public void clear()
    {
        name.Value = "";
        email.Value = "";
        mobile.Value = "";
        address.Value = "";
    
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}