using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=172.16.113.13;uid=sa;pwd=server;database=GUESTHOUSE;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.SearchCustomers();
        }
    }
    private void SearchCustomers()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand();
        string sql = string.Empty;
        sql = "SELECT *FROM applicant";
        if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
        {
            sql += " WHERE appName LIKE @ContactName + '%' OR desg LIKE @ContactName+'%' OR empId LIKE @ContactName+'%' OR email LIKE @ContactName+'%'";
            cmd.Parameters.AddWithValue("@ContactName", txtSearch.Text.Trim());
        }
        cmd.CommandText = sql;
        cmd.Connection = con;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        gvCustomers.DataSource = dt;
        gvCustomers.DataBind();
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("WebForm4.aspx");
    }
    protected void gvCustomers_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "EditButton")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvCustomers.Rows[index];
            Response.Redirect("~/Default3.aspx?Empno=" + row.Cells[0].Text);
        }
    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        this.SearchCustomers();
    }
    protected void gvCustomers_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCustomers.PageIndex = e.NewPageIndex;
        this.SearchCustomers();
    }
}
