using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default : System.Web.UI.Page
{
    String data;
    SqlConnection con = new SqlConnection();
    SqlCommand com;
    int i = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from tbl_cat",con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Label1.Text=dt.Rows[i][1].ToString();
            i++;
            Label2.Text = dt.Rows[i][1].ToString();
            i++;
            Label3.Text = dt.Rows[i][1].ToString();
            i++;
            //Label4.Text = dt.Rows[i][1].ToString();
           // i++;
            Label5.Text = "Weather";
        }
    }



   
}