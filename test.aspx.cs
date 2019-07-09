using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string flName = "CSIR-IMMT" + Path.GetFileName(FileUpload1.FileName.ToString());
        FileUpload1.PostedFile.SaveAs(Server.MapPath("uploads/")+flName);

        Response.Write(flName);

    }
}