using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Category : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        int i = 0;
        try
        {

            cmd.Connection = con;
            cmd.CommandText = "Select MAX(id) from tbl_cat";
            i = (int.Parse(cmd.ExecuteScalar().ToString()));
        }
        catch
        {

        }
        i++;
        name.Value = i.ToString();
        name1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        String s = name.Value;
        String s1 = name1.Value;


       
        cmd.CommandText = "Insert Into tbl_cat(id,catname) Values(" + s + ",'" + s1 + "')";
        cmd.ExecuteNonQuery();





        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
        // MailSend();
        clear();
    }
    public void clear()
    {
        name.Value = "";
        name1.Value = "";
      

    }
}