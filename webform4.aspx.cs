using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class webform4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string Q = "Select * from mstrCategory";
            SqlCommand com = new SqlCommand(Q,dbcls.CONN());
            SqlDataAdapter adpt = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            TextBox38.DataSource = dt;
            TextBox38.DataBind();
            TextBox38.DataTextField = "category";
            TextBox38.DataValueField = "cid";
            TextBox38.DataBind();
            DropDownList7.DataSource = dt;
            DropDownList7.DataBind();
            DropDownList7.DataTextField = "category";
            DropDownList7.DataValueField = "cid";
            DropDownList7.DataBind();
            DropDownList9.DataSource = dt;
            DropDownList9.DataBind();
            DropDownList9.DataTextField = "category";
            DropDownList9.DataValueField = "cid";
            DropDownList9.DataBind();
            DropDownList11.DataSource = dt;
            DropDownList11.DataBind();
            DropDownList11.DataTextField = "category";
            DropDownList11.DataValueField = "cid";
            DropDownList11.DataBind();
            DropDownList13.DataSource = dt;
            DropDownList13.DataBind();
            DropDownList13.DataTextField = "category";
            DropDownList13.DataValueField = "cid";
            DropDownList13.DataBind();
            DropDownList15.DataSource = dt;
            DropDownList15.DataBind();
            DropDownList15.DataTextField = "category";
            DropDownList15.DataValueField = "cid";
            DropDownList15.DataBind(); 

        }

    }
    protected void btn_addnew_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("data source=172.16.113.13;uid=sa;pwd=server;database=GUESTHOUSE;");
        con.Open();
        string Q = string.Empty;
        Q = "insert into applicant(appName,desg,empId,org,contact,email,purpose,dateArrival,dateDep,noRooms,idProof,payBy,isSelf,bookRemarks)values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList16.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem.Text + "','" + dateArrival.Text + "','" + dateDep.Text + "','" + DropDownList4.SelectedItem.Text + "','" + FileUpload1 + "','" + DropDownList5.SelectedItem.Text + "','" + CheckBox1.Checked + "','" + TextBox7.Text + "')";
        SqlCommand com = new SqlCommand(Q, con);
        com.ExecuteNonQuery();
        Q = "insert into guest(guestName,org,age,gender,contact,category,remarks)values('" + TextBox33.Text + "','" + TextBox34.Text + "','" + TextBox35.Text + "','" + TextBox36.Text + "','" + TextBox37.Text + "','" + TextBox38.Text + "','" + TextBox39.Text + "'),('" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox11.Text + "','" + DropDownList7.SelectedItem.Text + "','" + TextBox12.Text + "'),('" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + DropDownList8.SelectedItem.Text + "','" + TextBox16.Text + "','" + DropDownList9.SelectedItem.Text + "','" + TextBox17.Text + "'),('" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + DropDownList10.SelectedItem.Text + "','" + TextBox21.Text + "','" + DropDownList11.SelectedItem.Text + "','" + TextBox22.Text + "'),('" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox25.Text + "','" + DropDownList12.SelectedItem.Text + "','" + TextBox26.Text + "','" + DropDownList13.SelectedItem.Text + "','" + TextBox27.Text + "'),('" + TextBox28.Text + "','" + TextBox29.Text + "','" + TextBox30.Text + "','" + DropDownList14.SelectedItem.Text + "','" + TextBox31.Text + "','" + DropDownList15.SelectedItem.Text + "','" + TextBox32.Text + "')";
        SqlCommand com2 = new SqlCommand(Q, con);
        com2.ExecuteNonQuery();
        con.Close();
        Response.Redirect("WebForm3.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string flName = "CSIR-IMMT" + Path.GetFileName(FileUpload1.FileName.ToString());
        FileUpload1.PostedFile.SaveAs(Server.MapPath("uploads/") + flName);
    }
}
