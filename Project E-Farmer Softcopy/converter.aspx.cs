using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Resources;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Reflection;
using System.Net;
using System.Web.Script.Serialization;

public partial class converter : System.Web.UI.Page
{
    private void LoadString(CultureInfo ci)
    {
     
    }
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        string url = "https://translation.googleapis.com/language/translate/v2?key=YOUR_API_KEY";
        url += "&source=" + ddlSource.SelectedItem.Value;
        url += "&target=" + ddlTarget.SelectedItem.Value;
        url += "&q=" + Server.UrlEncode(txtSource.Text.Trim());
        WebClient client = new WebClient();
        string json = client.DownloadString(url);
        JsonData jsonData = (new JavaScriptSerializer()).Deserialize<JsonData>(json);
        txtTarget.Text = jsonData.Data.Translations[0].TranslatedText;
    }
      

    public class JsonData
    {
        public Data Data { get; set; }
    }
    public class Data
    {
        public List<Translation> Translations { get; set; }
    }
    public class Translation
    {
        public string TranslatedText { get; set; }
    }

}
