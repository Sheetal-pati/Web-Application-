using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;


public partial class ajax_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           if( Request.QueryString["id"] != null )
            {
                String temp = "";
                string id = Request.QueryString["id"].ToString();
                string val = Request.Form["keyword"].ToString();
                //List<string> PARAM = new List<string>();
                //List<string> PARAM_VAL = new List<string>();
                //PARAM.Add("@stm"); PARAM_VAL.Add(id);
                //PARAM.Add("@val"); PARAM_VAL.Add(val);
                //DataSet ds = boDBUtilities.ReturnDataSetByProcedure("SP_SEL_SEARCH", PARAM, PARAM_VAL, dbcls.conc);
                string Q = string.Empty;
               if(id=="1")
                    Q = "SELECT TOP 10 appName FROM applicant WHERE appName like '%" + Request.Form["keyword"].ToString() + "%'";
               if (id == "2")
               {
                  string Q1 = "SELECT appId FROM guest WHERE guestName like '%" + Request.Form["keyword"].ToString() + "%'";
                   SqlCommand comx = new SqlCommand(Q1, dbcls.CONN());
                   SqlDataAdapter reader = new SqlDataAdapter(comx);
                   DataTable dt = new DataTable();
                   //temp=reader.Fill(dt);
                   Q = "SELECT TOP 10 appName FROM applicant WHERE appId like '%" + Request.Form["temp"].ToString() + "%'";

               }
               if(id=="3")
                    Q = "SELECT TOP 10 org FROM applicant WHERE org like '%" + Request.Form["keyword"].ToString() + "%'";
               if(id=="4")
                    Q = "SELECT TOP 10 contact FROM applicant WHERE contact like '%" + Request.Form["keyword"].ToString() + "%'";
               if(id=="5")
                   Q = "SELECT TOP 10 email FROM applicant WHERE email like '%" + Request.Form["keyword"].ToString() + "%'";
                SqlCommand com = new SqlCommand(Q, dbcls.CONN());
                SqlDataAdapter ada = new SqlDataAdapter(com);
                DataSet ds = new DataSet();
                ada.Fill(ds);
               if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                    {
                        Response.Write("<li onclick=\"set_item('" + ds.Tables[0].Rows[i][0].ToString() + "');\">" + ds.Tables[0].Rows[i][0].ToString() + "</li>");
                    }
                }
            }
            //else
            //{
            //    DataSet ds = boDBUtilities.GENERAL_ReturnDataset("SELECT TOP 10 ROLE_NAME FROM MSTR_ROLE WHERE ROLE_NAME like '%" + Request.Form["keyword"].ToString() + "%'", dbcls.conc);
            //    if (ds.Tables[0].Rows.Count > 0)
            //    {
            //        for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            //        {
            //            Response.Write("<li onclick=\"set_item('" + ds.Tables[0].Rows[i][0].ToString() + "');\">" + ds.Tables[0].Rows[i][0].ToString() + "</li>");
            //        }
            //    }
            //}

        }
    }
}
