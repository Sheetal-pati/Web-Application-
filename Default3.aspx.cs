using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    int empno = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        empno = Convert.ToInt32(Request.QueryString["Empno"].ToString());
        if (!IsPostBack)
        {
            Fillingfunc();
        }
    }
    private void Fillingfunc()
    {
        DataTable dt = dbcls.RETURN_DT("select * from applicant where appId=" + empno);
        Label14.Text = dt.Rows[0][14].ToString();
        Label15.Text = dt.Rows[0][17].ToString() + dt.Rows[0][18].ToString();
        Label16.Text = dt.Rows[0][1].ToString() + "(" + dt.Rows[0][2].ToString() + ", Emp Id:" + dt.Rows[0][3].ToString() + ")\n" 
            + dt.Rows[0][4].ToString();
        Label17.Text = dt.Rows[0][5].ToString() + ", Email:" + dt.Rows[0][6].ToString();
        Label18.Text = dt.Rows[0][8].ToString();
        Label20.Text = dt.Rows[0][9].ToString();
        Label21.Text = dt.Rows[0][10].ToString();
        Label22.Text = dt.Rows[0][13].ToString();
        Label23.Text = dt.Rows[0][11].ToString();
        Label24.Text = dt.Rows[0][15].ToString();
        Label25.Text = dt.Rows[0][16].ToString();
        Label26.Text = dt.Rows[0][21].ToString();
        string Q = string.Empty;
        Q="select guestName,age,gender,org,contact,remarks from guest where appId="+empno;
        SqlCommand com = new SqlCommand(Q, dbcls.CONN());
        SqlDataAdapter ada = new SqlDataAdapter(com);
        DataTable dt1 = new DataTable();
        ada.Fill(dt1);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        }
    protected void EDIT_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default2.aspx?Empno=" + empno);
    }
}
