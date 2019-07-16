using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for dbcls
/// </summary>
public class dbcls
{
	public dbcls()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static SqlConnection CONN()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["SQLCON"]);
        if (con.State == System.Data.ConnectionState.Closed)
        {
            con.Open();
        }
        else
        {
            con.Close();
        }
        return con;
    }
    public static DataTable RETURN_DT(string QUERY)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter ada = new SqlDataAdapter(QUERY,CONN());
        ada.Fill(dt);
        return dt;

    }


}