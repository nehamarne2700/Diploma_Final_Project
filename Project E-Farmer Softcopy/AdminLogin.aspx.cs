using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AdminLogin : System.Web.UI.Page
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
        String s1 = pass.Value;
        DataTable dt = new DataTable();
        SqlDataAdapter da1 = new SqlDataAdapter("Select * from tbl_admin where username='" + s + "' AND password='" + s1 + "'", con);

        da1.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            HttpCookie name1 = new HttpCookie("Name1");
            name1.Value = s;
            Response.Cookies.Add(name1);



            Response.Redirect("~/Admin_Home.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Username & Passsword')", true);
            clear();
        }

    }
    public void clear()
    {
        name.Value = "";
        pass.Value = "";



    }
}