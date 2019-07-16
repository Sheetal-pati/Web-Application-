using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    int empno = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
         empno =Convert.ToInt32(Request.QueryString["Empno"].ToString());
        if (!IsPostBack)
        {
            string Q = "Select * from mstrCategory";
            SqlCommand com = new SqlCommand(Q, dbcls.CONN());
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
            BindTextBoxvalues();
        }  
    }
    private void BindTextBoxvalues()
    {

        DataTable dtt = dbcls.RETURN_DT("select * from applicant where appId=" + empno);
        TextBox1.Text = dtt.Rows[0][1].ToString();
        DropDownList16.SelectedItem.Text = dtt.Rows[0][4].ToString();
        TextBox3.Text = dtt.Rows[0][2].ToString();
        TextBox4.Text = dtt.Rows[0][3].ToString();
        TextBox5.Text = dtt.Rows[0][5].ToString();
        TextBox6.Text = dtt.Rows[0][6].ToString();
        //FileUpload1=dtt.Rows[0][12];
        DropDownList1.SelectedItem.Text = dtt.Rows[0][8].ToString();
        //DropDownList2.SelectedItem.Text =;
        //DropDownList3.SelectedItem.Text =;
        //dateArrival.Text = dtt.Rows[0][9].ToString()
        //dateDep.Text = dtt.Rows[0][10].ToString();
        DropDownList4.SelectedItem.Text = dtt.Rows[0][11].ToString();
        DropDownList5.SelectedItem.Text = dtt.Rows[0][15].ToString();
        CheckBox1.Checked= (bool)dtt.Rows[0][7];
        SqlCommand comm = new SqlCommand("SELECT COUNT(*) from guest where appId="+empno, dbcls.CONN());
        int count = (int)comm.ExecuteScalar();
        DataTable dt = dbcls.RETURN_DT("select * from guest where appId=" + empno);
        if (count == 1)
        {
            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
        }
        else if (count == 2) 
        {

            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
            TextBox8.Text = dt.Rows[1][2].ToString();
            TextBox9.Text = dt.Rows[1][3].ToString();
            TextBox10.Text = dt.Rows[1][4].ToString();
            DropDownList6.SelectedItem.Text = dt.Rows[1][5].ToString();
            TextBox11.Text = dt.Rows[1][6].ToString();
            DropDownList7.SelectedItem.Text = dt.Rows[1][7].ToString();
            TextBox12.Text = dt.Rows[1][8].ToString();
        }
        else if (count == 3) 
        {
            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
            TextBox8.Text = dt.Rows[1][2].ToString();
            TextBox9.Text = dt.Rows[1][3].ToString();
            TextBox10.Text = dt.Rows[1][4].ToString();
            DropDownList6.SelectedItem.Text = dt.Rows[1][5].ToString();
            TextBox11.Text = dt.Rows[1][6].ToString();
            DropDownList7.SelectedItem.Text = dt.Rows[1][7].ToString();
            TextBox12.Text = dt.Rows[1][8].ToString();
             TextBox13.Text = dt.Rows[2][2].ToString();
        TextBox14.Text = dt.Rows[2][3].ToString();
        TextBox15.Text = dt.Rows[2][4].ToString();
        DropDownList8.SelectedItem.Text = dt.Rows[2][5].ToString();
        TextBox16.Text = dt.Rows[2][6].ToString();
        DropDownList9.SelectedItem.Text = dt.Rows[2][7].ToString();
        TextBox17.Text = dt.Rows[2][8].ToString();
        }
        else if (count == 4) 
        {
            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
            TextBox8.Text = dt.Rows[1][2].ToString();
            TextBox9.Text = dt.Rows[1][3].ToString();
            TextBox10.Text = dt.Rows[1][4].ToString();
            DropDownList6.SelectedItem.Text = dt.Rows[1][5].ToString();
            TextBox11.Text = dt.Rows[1][6].ToString();
            DropDownList7.SelectedItem.Text = dt.Rows[1][7].ToString();
            TextBox12.Text = dt.Rows[1][8].ToString();
            TextBox13.Text = dt.Rows[2][2].ToString();
            TextBox14.Text = dt.Rows[2][3].ToString();
            TextBox15.Text = dt.Rows[2][4].ToString();
            DropDownList8.SelectedItem.Text = dt.Rows[2][5].ToString();
            TextBox16.Text = dt.Rows[2][6].ToString();
            DropDownList9.SelectedItem.Text = dt.Rows[2][7].ToString();
            TextBox17.Text = dt.Rows[2][8].ToString();
            TextBox18.Text = dt.Rows[3][2].ToString();
        TextBox19.Text = dt.Rows[3][3].ToString();
        TextBox20.Text = dt.Rows[3][4].ToString();
        DropDownList10.SelectedItem.Text = dt.Rows[3][5].ToString();
        TextBox21.Text = dt.Rows[3][6].ToString();
        DropDownList11.SelectedItem.Text = dt.Rows[3][7].ToString();
        TextBox22.Text = dt.Rows[3][8].ToString();
        }
        else if (count == 5)
        {
            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
            TextBox8.Text = dt.Rows[1][2].ToString();
            TextBox9.Text = dt.Rows[1][3].ToString();
            TextBox10.Text = dt.Rows[1][4].ToString();
            DropDownList6.SelectedItem.Text = dt.Rows[1][5].ToString();
            TextBox11.Text = dt.Rows[1][6].ToString();
            DropDownList7.SelectedItem.Text = dt.Rows[1][7].ToString();
            TextBox12.Text = dt.Rows[1][8].ToString();
            TextBox13.Text = dt.Rows[2][2].ToString();
            TextBox14.Text = dt.Rows[2][3].ToString();
            TextBox15.Text = dt.Rows[2][4].ToString();
            DropDownList8.SelectedItem.Text = dt.Rows[2][5].ToString();
            TextBox16.Text = dt.Rows[2][6].ToString();
            DropDownList9.SelectedItem.Text = dt.Rows[2][7].ToString();
            TextBox17.Text = dt.Rows[2][8].ToString();
            TextBox18.Text = dt.Rows[3][2].ToString();
            TextBox19.Text = dt.Rows[3][3].ToString();
            TextBox20.Text = dt.Rows[3][4].ToString();
            DropDownList10.SelectedItem.Text = dt.Rows[3][5].ToString();
            TextBox21.Text = dt.Rows[3][6].ToString();
            DropDownList11.SelectedItem.Text = dt.Rows[3][7].ToString();
            TextBox22.Text = dt.Rows[3][8].ToString();
            TextBox23.Text = dt.Rows[4][2].ToString();
        TextBox24.Text = dt.Rows[4][3].ToString();
        TextBox25.Text = dt.Rows[4][4].ToString();
        DropDownList12.SelectedItem.Text = dt.Rows[4][5].ToString();
        TextBox26.Text = dt.Rows[4][6].ToString();
        DropDownList13.SelectedItem.Text = dt.Rows[4][7].ToString();
        TextBox27.Text = dt.Rows[4][8].ToString();
        }
        else if (count == 6)
        {
            TextBox33.Text = dt.Rows[0][2].ToString();
            TextBox34.Text = dt.Rows[0][3].ToString();
            TextBox35.Text = dt.Rows[0][4].ToString();
            TextBox36.SelectedItem.Text = dt.Rows[0][5].ToString();
            TextBox37.Text = dt.Rows[0][6].ToString();
            TextBox38.SelectedItem.Text = dt.Rows[0][7].ToString();
            TextBox39.Text = dt.Rows[0][8].ToString();
            TextBox8.Text = dt.Rows[1][2].ToString();
            TextBox9.Text = dt.Rows[1][3].ToString();
            TextBox10.Text = dt.Rows[1][4].ToString();
            DropDownList6.SelectedItem.Text = dt.Rows[1][5].ToString();
            TextBox11.Text = dt.Rows[1][6].ToString();
            DropDownList7.SelectedItem.Text = dt.Rows[1][7].ToString();
            TextBox12.Text = dt.Rows[1][8].ToString();
            TextBox13.Text = dt.Rows[2][2].ToString();
            TextBox14.Text = dt.Rows[2][3].ToString();
            TextBox15.Text = dt.Rows[2][4].ToString();
            DropDownList8.SelectedItem.Text = dt.Rows[2][5].ToString();
            TextBox16.Text = dt.Rows[2][6].ToString();
            DropDownList9.SelectedItem.Text = dt.Rows[2][7].ToString();
            TextBox17.Text = dt.Rows[2][8].ToString();
            TextBox18.Text = dt.Rows[3][2].ToString();
            TextBox19.Text = dt.Rows[3][3].ToString();
            TextBox20.Text = dt.Rows[3][4].ToString();
            DropDownList10.SelectedItem.Text = dt.Rows[3][5].ToString();
            TextBox21.Text = dt.Rows[3][6].ToString();
            DropDownList11.SelectedItem.Text = dt.Rows[3][7].ToString();
            TextBox22.Text = dt.Rows[3][8].ToString();
            TextBox23.Text = dt.Rows[4][2].ToString();
            TextBox24.Text = dt.Rows[4][3].ToString();
            TextBox25.Text = dt.Rows[4][4].ToString();
            DropDownList12.SelectedItem.Text = dt.Rows[4][5].ToString();
            TextBox26.Text = dt.Rows[4][6].ToString();
            DropDownList13.SelectedItem.Text = dt.Rows[4][7].ToString();
            TextBox27.Text = dt.Rows[4][8].ToString();
            TextBox28.Text = dt.Rows[5][2].ToString();
            TextBox29.Text = dt.Rows[5][3].ToString();
            TextBox30.Text = dt.Rows[5][4].ToString();
            DropDownList14.SelectedItem.Text = dt.Rows[5][5].ToString();
            TextBox31.Text = dt.Rows[5][6].ToString();
            DropDownList15.SelectedItem.Text = dt.Rows[5][7].ToString();
            TextBox32.Text = dt.Rows[5][8].ToString();
        }

    }   
    protected void Button2_Click(object sender, EventArgs e)
    {
      
        string Q = string.Empty;
        Q = "update applicant set(appName,desg,empId,org,contact,email,purpose,dateArrival,dateDep,noRooms,idProof,payBy,isSelf,bookRemarks)values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList16.SelectedItem.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem.Text + "','" + dateArrival + "','" + dateDep + "','" + DropDownList4.SelectedItem.Text + "','" + FileUpload1 + "','" + DropDownList5.SelectedItem.Text + "','" + CheckBox1 + "','" + TextBox7.Text + "') where appId='" + empno + "'";
        //Q = "update applicant set(appName,desg,empId,org,contact,email,purpose,dateArrival,dateDep,noRooms,idProof,payBy,isSelf,bookRemarks)values(@appName,@desg,@empId,@org,@contact,@email,@purpose,@dateArrival,@dateDep,@noRooms,@idProof,@payBy,@isSelf,@bookRemarks) where appId='" + empno + "'";
        SqlCommand com = new SqlCommand(Q, dbcls.CONN());
        //com.Parameters.AddWithValue("@appName", TextBox1.Text);
        int result = com.ExecuteNonQuery();
        Q = "update guest set(guestName,org,age,gender,contact,category,remarks)values('" + TextBox33 + "','" + TextBox34 + "','" + TextBox35 + "','" + TextBox36 + "','" + TextBox37 + "','" + TextBox38 + "','" + TextBox39 + "'),('" + TextBox8 + "','" + TextBox9 + "','" + TextBox10 + "','" + DropDownList6.SelectedItem.Text + "','" + TextBox11 + "','" + DropDownList7.SelectedItem.Text + "','" + TextBox12 + "'),('" + TextBox13 + "','" + TextBox14 + "','" + TextBox15 + "','" + DropDownList8.SelectedItem.Text + "','" + TextBox16 + "','" + DropDownList9.SelectedItem.Text + "','" + TextBox17 + "'),('" + TextBox18 + "','" + TextBox19 + "','" + TextBox20 + "','" + DropDownList10.SelectedItem.Text + "','" + TextBox21 + "','" + DropDownList11.SelectedItem.Text + "','" + TextBox22 + "'),('" + TextBox23 + "','" + TextBox24 + "','" + TextBox25 + "','" + DropDownList12.SelectedItem.Text + "','" + TextBox26 + "','" + DropDownList13.SelectedItem.Text + "','" + TextBox27 + "'),('" + TextBox28 + "','" + TextBox29 + "','" + TextBox30 + "','" + DropDownList14.SelectedItem.Text + "','" + TextBox31 + "','" + DropDownList15.SelectedItem.Text + "','" + TextBox32 + "') where appId='" + empno + "'";
        SqlCommand com2 = new SqlCommand(Q, dbcls.CONN());
        int result2 = com2.ExecuteNonQuery();
        if ((result == 1) && (result2 == 1))
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "ShowSuccess", "javascript:alert('Record Updated Successfully');", true);
        }
        Response.Redirect("Default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string flName = "CSIR-IMMT" + Path.GetFileName(FileUpload1.FileName.ToString());
        FileUpload1.PostedFile.SaveAs(Server.MapPath("uploads/") + flName);
    }
}
