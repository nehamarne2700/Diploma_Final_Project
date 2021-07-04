using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data;

public partial class ManufacturerUpload : System.Web.UI.Page
{
    String data;
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Name1"] != null)
            data = Request.Cookies["Name1"].Value;
        SqlConnection con = new SqlConnection();

        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        if (!Page.IsPostBack)
        {
            SqlCommand cmd = new SqlCommand("select catname from tbl_cat", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DropDownList1.DataTextField = "catname"; // text field name of table dispalyed in dropdown
            //  DropDownList1.DataValueField = "id";             // to retrive specific  textfield name 

            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = name.Value;
        String s1 = name1.Value;
        String s2 = name2.Value;
        String s3 = name3.Value;
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        int i = 0;
        string fname = "";
        try
        {
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "Select Max(imid) from tbl_adimupload";
            cmd1.Connection = con;
            i = Convert.ToInt32(cmd1.ExecuteScalar());
        }
        catch (Exception ex)
        {
        }
        i++;

        //fname = data+ ".jpg";





        String Nam = Session["Name"].ToString();

        string text = Request.Form["description"];

        string filePath = FileUpload2.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
        string url = "thumb_" + s2;
        string dburl = s2 + ".jpg";

       fname = "~/AdminImage/" + url+".jpg";
        FileUpload2.SaveAs(Server.MapPath(fname));
        string ext = Path.GetExtension(filename);
        string contenttype = String.Empty;

        switch (ext)
        {
            case ".doc":
                contenttype = "application/vnd.ms-word";
                break;
            case ".docx":
                contenttype = "application/vnd.ms-word";
                break;
            case ".xls":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".xlsx":
                contenttype = "application/vnd.ms-excel";
                break;
            case ".jpg":
                contenttype = "image/jpg";
                break;
            case ".png":
                contenttype = "image/png";
                break;
            case ".jpeg":
                contenttype = "image/jpeg";
                break;
            case ".gif":
                contenttype = "image/gif";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload2.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);


            string strQuery = "insert into tbl_adimupload(ImgName, ContentType,Price,Description,catname,Name,Data,quan,imageurl,Status,Uploadby) values (@ImgName, @ContentType,@Price, @Description,@catname,@Name,@Data,@quan,@imageurl,@Status,@Uploadby)";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@ImgName", SqlDbType.VarChar).Value = filename;
            cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
           
            cmd.Parameters.Add("@Price", s);
            cmd.Parameters.Add("@Description", s1);
            cmd.Parameters.Add("@catname", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.Add("@Name", s2);
            cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
            cmd.Parameters.Add("@quan", s3);
            cmd.Parameters.Add("@imageurl", dburl);
            cmd.Parameters.Add("@Status", "-");
            cmd.Parameters.Add("@Uploadby", Nam);
            InsertUpdateData(cmd);

        }


    }
    private Boolean InsertUpdateData(SqlCommand cmd)
    {
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {

            cmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Image Uploaded Successfully')", true);
            name.Value = "";
            name1.Value = "";
            //DropDownList1.Text = "";
            
            return true;

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            return false;
        }
        finally
        {
            con.Close();
            con.Dispose();
        }
    }

}