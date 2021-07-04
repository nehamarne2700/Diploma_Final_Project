using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SeedUpload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    
{
        String st;
        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        int data;
        if (Request.Cookies["Name1"] != null)
        {
            data = Convert.ToInt32(Request.Cookies["Name1"].Value);
            SqlDataAdapter da1 = new SqlDataAdapter("Select * from tbl_adimupload where imid ='" + data + "'", con);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                st = dt1.Rows[0][11].ToString();
                
                SqlDataAdapter da = new SqlDataAdapter("Select * from tblfarmerreg where Name ='" + st + "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    String st1 = dt.Rows[0][2].ToString();
                    Label1.Text = "Uploaded by: " + st;
                    Label2.Text = "Contact No: " + st1;

                }
            }
        }
      
    }
}