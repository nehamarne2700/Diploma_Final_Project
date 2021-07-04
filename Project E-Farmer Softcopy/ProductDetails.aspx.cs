using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ProductDetails : System.Web.UI.Page
{
    int data;
   String st;
   String st1,st2;
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Name1"] != null)
            data =Convert.ToInt32( Request.Cookies["Name1"].Value);
          SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
       byte[] bytes = (byte[])GetData("SELECT Data FROM tbl_adimupload WHERE imid ='" +data+"'").Rows[0]["Data"];
       string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
       Image1.ImageUrl = "data:image/png;base64," + base64String;

       ImagesDiv.Controls.Add(Image1);
       SqlDataAdapter da1 = new SqlDataAdapter("Select * from tbl_adimupload where imid ='" +data+"'", con);
       DataTable dt1 = new DataTable();
       da1.Fill(dt1);
       if (dt1.Rows.Count > 0)
       {
           st = dt1.Rows[0][7].ToString();
           st1 = "Rs."+dt1.Rows[0][3].ToString();
           st2 =  dt1.Rows[0][4].ToString();


       }

       Label1.Text = st;
       Label2.Text = st1;

       Label3.Text = st2;

    }
    private DataTable GetData(string query)
    {
        DataTable dt = new DataTable();
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;


        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    sda.Fill(dt);
                }
            }
            return dt;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int cout = Convert.ToInt32(Label4.Text);
        cout++;
        Label4.Text = cout.ToString();
        HttpCookie name1 = new HttpCookie("Name1");
        name1.Value = Label4.Text;
        Response.Cookies.Add(name1);
        Response.Redirect("~/CheckOut_Cart.aspx");
    }
}