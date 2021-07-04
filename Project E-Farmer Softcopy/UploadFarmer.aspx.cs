using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class UploadFarmer : System.Web.UI.Page
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
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        con = new SqlConnection(conString);
        con.Open();
        string fname = "";
        fname = data + ".jpg";

        fname = "~/Files/" + data+ ".jpg";

      

       
        FileUpload1.SaveAs(Server.MapPath(fname));

        string text = Request.Form["description"];

        string filePath = FileUpload1.PostedFile.FileName;
        string filename = Path.GetFileName(filePath);
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
            case ".gif":
                contenttype = "image/gif";
                break;
            case ".pdf":
                contenttype = "application/pdf";
                break;
        }
        if (contenttype != String.Empty)
        {

            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);

           
            string strQuery = "insert into tblFarmerImg(Name, ContentType, Data) values (@Name, @ContentType, @Data)";
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
            cmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value = contenttype;
            cmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;
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
            description.Text = "";
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

   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}