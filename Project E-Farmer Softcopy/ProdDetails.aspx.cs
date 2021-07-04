using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ProdDetails : System.Web.UI.Page
{
    int data;
    String st;
    String st1, st2,st3,st4;
    String imgurl;
    SqlConnection con = new SqlConnection();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            if (Session["Count"] == null)
            {
                
                Label4.Text = "0";
            }
            else
            {
                Label4.Text = Session["Count"].ToString();
               
            }


        }
        if (Request.Cookies["Name1"] != null)
            data = Convert.ToInt32(Request.Cookies["Name1"].Value);
      

        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        byte[] bytes = (byte[])GetData("SELECT Data FROM tbl_adimupload WHERE imid ='" + data + "'").Rows[0]["Data"];
        string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
        Image1.ImageUrl = "data:image/png;base64," + base64String;

        ImagesDiv.Controls.Add(Image1);
        SqlDataAdapter da1 = new SqlDataAdapter("Select * from tbl_adimupload where imid ='" + data + "'", con);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        if (dt1.Rows.Count > 0)
        {
            st = dt1.Rows[0][5].ToString();    //name
            st1 = "Rs." + dt1.Rows[0][2].ToString();    //price
            st2 = dt1.Rows[0][3].ToString();     //description
            st3 = dt1.Rows[0][4].ToString();     //catname
            st4 = dt1.Rows[0][8].ToString();     //quan

        }

        Label1.Text = st;
        Label2.Text = st1;

        Label6.Text = st2;
        Label5.Text = st3;
        Label7.Text = st4;


      //  TextBox1.Text = Label7.Text;
       // TextBox1.MaxLength =Convert.ToInt32(Label7.Text);
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

        HttpCookie name2 = new HttpCookie("Name2");
        name2.Value = Convert.ToString(data);       //image
        Response.Cookies.Add(name2);



        HttpCookie name3 = new HttpCookie("Name3");    //name
        name3.Value = Convert.ToString(st);
        Response.Cookies.Add(name3);


        HttpCookie name4 = new HttpCookie("Name4");    //price
        name4.Value = Convert.ToString(st1);
        Response.Cookies.Add(name4);


        double total;
        double t1 = 0.00;
        if (Session["Total"] == null)
        {
            t1 = 0.00;
        }

        else
        {
            t1 = Convert.ToDouble(Session["Total"].ToString());


        }


        String string2 = "Rs.";
        String std = Request.Form["myid"];
        string result = st1.Replace(string2, "");

        double a = Double.Parse(result);
        double b = Double.Parse(std);
        total = (a * b) + t1;



        HttpCookie name5 = new HttpCookie("Name5");    //total price
        name5.Value = Convert.ToString(total);
        Response.Cookies.Add(name5);


        String id = Session.SessionID;

        int cout = Convert.ToInt32(Label4.Text);
        cout++;
        Label4.Text = cout.ToString();
        HttpCookie name1 = new HttpCookie("Name1");
        name1.Value = Label4.Text;
        Response.Cookies.Add(name1);
        int cartcount = Convert.ToInt32(Label4.Text);




        if (id == Session.SessionID)
        {
           
            if (Session["Name"] == null)
            {
                Session["Data"] = data;
                Session["Name"] = st;
                Session["Price"] = result;
                Session["Quantity"] = std;
                Session["Total"] = total;
                Session["Count"] = cartcount;
                DataTable dt = new DataTable();



                SqlConnection con = new SqlConnection();

                string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                con = new SqlConnection(conString);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select * from tbl_adimupload where imid='" + data + "'", con);
                DataTable dtt = new DataTable();
                da.Fill(dtt);
                if (dtt.Rows.Count > 0)
                {
                    imgurl = dtt.Rows[0][9].ToString();
                }

                if (Profile.SCart == null)
                {
                    Profile.SCart = new ShoppingCartExample.Cart();
                }
                String cv = "Rs.";
                string re = st1.Replace(cv, "");
                double b1 = Convert.ToDouble(re);
                int b2 = Convert.ToInt32(std);

                Profile.SCart.Insert(data, b1, b2, st, imgurl);




                Response.Redirect("~/YourCart.aspx");
               // str = "sonal";
            }
            else
            {
                String str = Session["Name"].ToString();
                if (st == str)
                {
                    HttpCookie cname = new HttpCookie("cname");
                    cname.Value = "true";
                    Response.Cookies.Add(cname);
                    Response.Redirect("~/YourCart.aspx");

                }
                else
                {
                    Session["Data"] = data;
                    Session["Name"] = st;
                    Session["Price"] = result;
                    Session["Quantity"] = std;
                    Session["Total"] = total;
                    Session["Count"] = cartcount;
                    DataTable dt = new DataTable();



                    SqlConnection con = new SqlConnection();

                    string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

                    con = new SqlConnection(conString);
                    con.Open();
                    SqlDataAdapter da = new SqlDataAdapter("Select * from tbl_adimupload where imid='" + data + "'", con);
                    DataTable dtt = new DataTable();
                    da.Fill(dtt);
                    if (dtt.Rows.Count > 0)
                    {
                        imgurl = dtt.Rows[0][9].ToString();
                    }

                    if (Profile.SCart == null)
                    {
                        Profile.SCart = new ShoppingCartExample.Cart();
                    }
                    String cv = "Rs.";
                    string re = st1.Replace(cv, "");
                    double b1 = Convert.ToDouble(re);
                    int b2 = Convert.ToInt32(std);

                    Profile.SCart.Insert(data, b1, b2, st, imgurl);




                    Response.Redirect("~/YourCart.aspx");


                }

            }

            //Label4.Text = (string)Session["Incidentgv"];


        }

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}